#include "spot_panel.hpp"

#include <cmath>
#include <QFile>
#include <QUiLoader>
#include <QVBoxLayout>
#include <ros/package.h>
#include <std_srvs/Trigger.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>
#include <QDoubleValidator>
#include <tf/transform_datatypes.h>
#include <spot_msgs/SetVelocity.h>
#include <spot_msgs/LeaseArray.h>
#include <string.h>


namespace spot_viz
{

    ControlPanel::ControlPanel(QWidget *parent) {
        std::string packagePath = ros::package::getPath("spot_viz") + "/resource/spot_control.ui";
        ROS_INFO("Getting ui file from package path %s", packagePath.c_str());
        QFile file(packagePath.c_str());
        file.open(QIODevice::ReadOnly);

        QUiLoader loader;
        QWidget* ui = loader.load(&file, parent);
        file.close();
        QVBoxLayout* topLayout = new QVBoxLayout();
        this->setLayout(topLayout);
        topLayout->addWidget(ui);
        haveLease = false;

        sitService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/sit");
        standService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/stand");
        claimLeaseService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/claim");
        releaseLeaseService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/release");
        powerOnService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/power_on");
        powerOffService_ = nh_.serviceClient<std_srvs::Trigger>("spot/power_off");
        maxVelocityService_ = nh_.serviceClient<spot_msgs::SetVelocity>("/spot/max_velocity");
        bodyPosePub_ = nh_.advertise<geometry_msgs::Pose>("/spot/body_pose", 1);

        // spot frontier exploration panel additions
        odasOnService_ = nh_.serviceClient<std_srvs::Trigger>("/odas/start");
        odasOffService_ = nh_.serviceClient<std_srvs::Trigger>("/odas/stop");
        smachStartService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/smach/start");
        smachAbortService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/smach/terminate");
        hardEStopService_ = nh_.serviceClient<std_srvs::Trigger>("/spot/estop/hard");

        leaseSub_ = nh_.subscribe("/spot/status/leases", 1, &ControlPanel::leaseCallback, this);

        claimLeaseButton = this->findChild<QPushButton*>("claimLeaseButton");
        releaseLeaseButton = this->findChild<QPushButton*>("releaseLeaseButton");
        powerOnButton = this->findChild<QPushButton*>("powerOnButton");
        powerOffButton = this->findChild<QPushButton*>("powerOffButton");
        standButton = this->findChild<QPushButton*>("standButton");
        sitButton = this->findChild<QPushButton*>("sitButton");
        setBodyPoseButton = this->findChild<QPushButton*>("setBodyPoseButton");
        setMaxVelButton = this->findChild<QPushButton*>("setMaxVelButton");
        statusLabel = this->findChild<QLabel*>("statusLabel");

        // spot frontier exploration panel additions
        odasOnButton = this->findChild<QPushButton*>("odasStartButton");
        odasOffButton = this->findChild<QPushButton*>("odasStopButton");
        smachStartButton = this->findChild<QPushButton*>("smachStartButton");
        smachAbortButton = this->findChild<QPushButton*>("smachAbortButton");
        enableEStopButton = this->findChild<QPushButton*>("enableEStop");
        executeEStopButton = this->findChild<QPushButton*>("executeEStop");


        double linearVelocityLimit = 2;
        linearXSpin = this->findChild<QDoubleSpinBox*>("linearXSpin");
        linearXLabel = this->findChild<QLabel*>("linearXLabel");
        updateLabelTextWithLimit(linearXLabel, linearVelocityLimit);
        linearXSpin->setMaximum(linearVelocityLimit);
        linearXSpin->setMinimum(-linearVelocityLimit);

        linearYSpin = this->findChild<QDoubleSpinBox*>("linearYSpin");
        linearYLabel = this->findChild<QLabel*>("linearYLabel");
        updateLabelTextWithLimit(linearYLabel, linearVelocityLimit);
        linearYSpin->setMaximum(linearVelocityLimit);
        linearYSpin->setMinimum(-linearVelocityLimit);

        angularZSpin = this->findChild<QDoubleSpinBox*>("angularZSpin");
        angularZLabel = this->findChild<QLabel*>("angularZLabel");
        updateLabelTextWithLimit(angularZLabel, linearVelocityLimit);
        angularZSpin->setMaximum(linearVelocityLimit);
        angularZSpin->setMinimum(-linearVelocityLimit);

        double bodyHeightLimit = 0.3;
        bodyHeightSpin = this->findChild<QDoubleSpinBox*>("bodyHeightSpin");
        bodyHeightLabel = this->findChild<QLabel*>("bodyHeightLabel");
        updateLabelTextWithLimit(bodyHeightLabel, bodyHeightLimit);
        bodyHeightSpin->setMaximum(bodyHeightLimit);
        bodyHeightSpin->setMinimum(-bodyHeightLimit);

        double rollLimit = 20;
        rollSpin = this->findChild<QDoubleSpinBox*>("rollSpin");
        rollLabel = this->findChild<QLabel*>("rollLabel");
        updateLabelTextWithLimit(rollLabel, rollLimit);
        rollSpin->setMaximum(rollLimit);
        rollSpin->setMinimum(-rollLimit);

        double pitchLimit = 30;
        pitchSpin = this->findChild<QDoubleSpinBox*>("pitchSpin");
        pitchLabel = this->findChild<QLabel*>("pitchLabel");
        updateLabelTextWithLimit(pitchLabel, pitchLimit);
        pitchSpin->setMaximum(pitchLimit);
        pitchSpin->setMinimum(-pitchLimit);

        double yawLimit = 30;
        yawSpin = this->findChild<QDoubleSpinBox*>("yawSpin");
        yawLabel = this->findChild<QLabel*>("yawLabel");
        updateLabelTextWithLimit(yawLabel, yawLimit);
        yawSpin->setMaximum(yawLimit);
        yawSpin->setMinimum(-yawLimit);

        connect(claimLeaseButton, SIGNAL(clicked()), this, SLOT(claimLease()));
        connect(releaseLeaseButton, SIGNAL(clicked()), this, SLOT(releaseLease()));
        connect(powerOnButton, SIGNAL(clicked()), this, SLOT(powerOn()));
        connect(powerOffButton, SIGNAL(clicked()), this, SLOT(powerOff()));
        connect(sitButton, SIGNAL(clicked()), this, SLOT(sit()));
        connect(standButton, SIGNAL(clicked()), this, SLOT(stand()));
        connect(setBodyPoseButton, SIGNAL(clicked()), this, SLOT(sendBodyPose()));
        connect(setMaxVelButton, SIGNAL(clicked()), this, SLOT(setMaxVel()));

        // spot frontier exploration panel additions
        connect(odasOnButton, SIGNAL(clicked()), this, SLOT(startODAS()));
        connect(odasOffButton, SIGNAL(clicked()), this, SLOT(stopODAS()));
        connect(smachStartButton, SIGNAL(clicked()), this, SLOT(startSMACH()));
        connect(smachAbortButton, SIGNAL(clicked()), this, SLOT(abortSMACH()));
        connect(enableEStopButton, SIGNAL(clicked()), this, SLOT(enableEStop()));
        connect(executeEStopButton, SIGNAL(clicked()), this, SLOT(hardEStop()));
    }

    void ControlPanel::updateLabelTextWithLimit(QLabel* label, double limit) {
        int precision = 1;
        // Kind of hacky but default to_string returns 6 digit precision which is unnecessary
        std::string limit_value = std::to_string(limit).substr(0, std::to_string(limit).find(".") + precision + 1);
        std::string limit_range = " [-" + limit_value + ", " + limit_value + "]";
        std::string current_text = label->text().toStdString();
        label->setText(QString((current_text+ limit_range).c_str()));
    }

    void ControlPanel::setControlButtons() {
        claimLeaseButton->setEnabled(!haveLease);
        releaseLeaseButton->setEnabled(haveLease);
        powerOnButton->setEnabled(haveLease);
        powerOffButton->setEnabled(haveLease);
        sitButton->setEnabled(haveLease);
        standButton->setEnabled(haveLease);
        setBodyPoseButton->setEnabled(haveLease);
        setMaxVelButton->setEnabled(haveLease);
    }

    bool ControlPanel::callTriggerService(ros::ServiceClient service, std::string serviceName) {
        std_srvs::Trigger req;
        std::string labelText = "Calling " + serviceName + " service";
        statusLabel->setText(QString(labelText.c_str()));
        if (service.call(req)) {
            if (req.response.success) {
                labelText = "Successfully called " + serviceName + " service";
                statusLabel->setText(QString(labelText.c_str()));
                return true;
            } else {
                labelText = serviceName + " service failed: " + req.response.message;
                statusLabel->setText(QString(labelText.c_str()));
                return false;
            }
        } else {
            labelText = "Failed to call " + serviceName + " service" + req.response.message;
            statusLabel->setText(QString(labelText.c_str()));
            return false;
        }
    }

    void ControlPanel::leaseCallback(const spot_msgs::LeaseArray::ConstPtr &leases) {
        // check to see if the body is already owned by the ROS node
        // the resource will be "body" and the lease_owner.client_name will begin with "ros_spot"
        // if the claim exists, treat this as a successful click of the Claim button
        // if the claim does not exist, treat this as a click of the Release button

        bool msg_has_lease = false;
        for (int i=leases->resources.size()-1; i>=0; i--) {
            const spot_msgs::LeaseResource &resource = leases->resources[i];
            bool right_resource = resource.resource.compare("body") == 0;
            bool owned_by_ros = resource.lease_owner.client_name.compare(0, 8, "ros_spot") == 0;

            if (right_resource && owned_by_ros) {
                msg_has_lease = true;
            }
        }

        if (msg_has_lease != haveLease) {
            haveLease = msg_has_lease;
            setControlButtons();
        }
    }

    void ControlPanel::sit() {
        callTriggerService(sitService_, "sit");
    }

    void ControlPanel::stand() {
        callTriggerService(standService_, "stand");
    }

    void ControlPanel::powerOn() {
        callTriggerService(powerOnService_, "power on");
    }

    void ControlPanel::powerOff() {
        callTriggerService(powerOffService_, "power off");
    }

    void ControlPanel::claimLease() {
        if (callTriggerService(claimLeaseService_, "claim lease"))
            claimLeaseButton->setEnabled(false);
    }

    void ControlPanel::releaseLease() {
        if (callTriggerService(releaseLeaseService_, "release lease"))
            releaseLeaseButton->setEnabled(false);
    }

    // spot frontier exploration panel additions
    void ControlPanel::startODAS() {
        callTriggerService(odasOnService_, "odas on");
    }

    void ControlPanel::stopODAS() {
        callTriggerService(odasOffService_, "odas off");
    }

    void ControlPanel::startSMACH() {
        callTriggerService(smachStartService_, "smach start");
    }

    void ControlPanel::abortSMACH() {
        callTriggerService(smachAbortService_, "smach abort");
    }

    void ControlPanel::enableEStop() {
        if(executeEStopButton->isEnabled()){
            enableEStopButton->setStyleSheet("background-color: white");
            executeEStopButton->setStyleSheet("background-color: white");
            executeEStopButton->setEnabled(false);
        }
        else{
            enableEStopButton->setStyleSheet("background-color: red");
            executeEStopButton->setStyleSheet("background-color: red");
            executeEStopButton->setEnabled(true);
        }
        
    }

    void ControlPanel::hardEStop() {
        callTriggerService(hardEStopService_, "hard e-stop");
    }

    void ControlPanel::setMaxVel() {
        spot_msgs::SetVelocity req;
        req.request.velocity_limit.angular.z = angularZSpin->value();
        req.request.velocity_limit.linear.x = linearXSpin->value();
        req.request.velocity_limit.linear.y = linearYSpin->value();

        std::string labelText = "Calling set max velocity service";
        statusLabel->setText(QString(labelText.c_str()));
        if (maxVelocityService_.call(req)) {
            if (req.response.success) {
                labelText = "Successfully called set max velocity service";
                statusLabel->setText(QString(labelText.c_str()));
            } else {
                labelText = "set max velocity service failed: " + req.response.message;
                statusLabel->setText(QString(labelText.c_str()));
            }
        } else {
            labelText = "Failed to call set max velocity service" + req.response.message;
            statusLabel->setText(QString(labelText.c_str()));
        }
    }

    void ControlPanel::sendBodyPose() {
        ROS_INFO("Sending body pose");
        tf::Quaternion q;
        q.setRPY(rollSpin->value() * M_PI / 180, pitchSpin->value() * M_PI / 180, yawSpin->value() * M_PI / 180);
        geometry_msgs::Pose p;
        p.position.z = bodyHeightSpin->value();
        p.orientation.x = q.getX();
        p.orientation.y = q.getY();
        p.orientation.z = q.getZ();
        p.orientation.w = q.getW();
        bodyPosePub_.publish(p);
    }

    void ControlPanel::save(rviz::Config config) const
    {
        rviz::Panel::save(config);
    }

    // Load all configuration data for this panel from the given Config object.
    void ControlPanel::load(const rviz::Config &config)
    {
        rviz::Panel::load(config);
    }
} // end namespace spot_viz

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(spot_viz::ControlPanel, rviz::Panel)
// END_TUTORIAL
