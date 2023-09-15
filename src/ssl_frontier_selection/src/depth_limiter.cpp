#include <ros/ros.h>
#include <string>
#include <limits>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>

using namespace std;

class DepthLimiter{

    // reference for ros paramters
    image_transport::ImageTransport it_;
    image_transport::Subscriber depth_sub;
    image_transport::Publisher depth_pub;
    string cv_encoding = sensor_msgs::image_encodings::TYPE_32FC1;
    float max_range = numeric_limits<float>::max();
    bool median_filter = false;
    int mask_size = 3;

    public:
    DepthLimiter(ros::NodeHandle& nh):it_(nh){  
        string input_topic = "/depth_img";
        string output_topic = "/depth_img_lmt";
        string encoding = "32fc1";

        // assign values from launch file
        nh.getParam("input_topic", input_topic);
        nh.getParam("output_topic", output_topic);
        nh.getParam("encoding", encoding);
        nh.getParam("max_range", max_range);
        nh.getParam("median_filter", median_filter);
        nh.getParam("mask_size", mask_size);

        // set encoding type

        if (encoding == "32fc1"){
            cv_encoding = sensor_msgs::image_encodings::TYPE_32FC1;
        }

        
        else{
            ROS_ERROR("Only 32fc1 is currently support as of REP118");
            return;
        }

        // create publisher and subscriber
        depth_sub = it_.subscribe(input_topic, 30, &DepthLimiter::image_callback, this);
        depth_pub = it_.advertise(output_topic, 30);
    }

    void image_callback(const sensor_msgs::ImageConstPtr& msg){

        cv::Mat image;
        sensor_msgs::ImagePtr msg_out;

        // deserialize incoming image (use cv_bridge to get pointer)
        cv_bridge::CvImagePtr cv_ptr;
        cv_ptr = cv_bridge::toCvCopy(msg, cv_encoding);

        // apply median filter
        if(median_filter){
            // make copy of image
            cv::Mat m_copy = cv_ptr->image.clone();

            // apply median filter to
            cv::medianBlur(cv_ptr->image, cv_ptr->image, mask_size);

            // Create a mask of NaN values in A
            // cv::Mat nan_mask = cv::Mat(cv_ptr->image != cv_ptr->image);

            // // Create a mask of non-NaN values in A
            // cv::Mat non_nan_mask = cv::Mat(cv_ptr->image == cv_ptr->image);

            // // Replace NaN values in A with values from B
            // m_copy.copyTo(cv_ptr->image, non_nan_mask);

            // // Zero out non-NaN values in the mask
            // nan_mask &= 0;

            // // Combine the NaN mask with the non-NaN mask
            // cv::Mat mask = nan_mask | non_nan_mask;

            // // Apply the combined mask to A
            // cv::Mat result;
            // cv_ptr->image.copyTo(result, mask);

        }

        // change all +inf values to max_range using truncate thresholding
        cv::threshold(cv_ptr->image, cv_ptr->image, max_range, max_range, 2);

        // publish image
        depth_pub.publish(cv_ptr->toImageMsg());

    }
            
};

int main (int argc, char * argv[]){
    
    // initialise node
    ros::init(argc, argv, "depth_limiter");
    ros::NodeHandle nh("~");

    // make instance of node through class
    DepthLimiter limiter = DepthLimiter(nh);

    ros::spin();

}
