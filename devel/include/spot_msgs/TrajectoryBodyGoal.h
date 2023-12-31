// Generated by gencpp from file spot_msgs/TrajectoryBodyGoal.msg
// DO NOT EDIT!


#ifndef SPOT_MSGS_MESSAGE_TRAJECTORYBODYGOAL_H
#define SPOT_MSGS_MESSAGE_TRAJECTORYBODYGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <std_msgs/Duration.h>

namespace spot_msgs
{
template <class ContainerAllocator>
struct TrajectoryBodyGoal_
{
  typedef TrajectoryBodyGoal_<ContainerAllocator> Type;

  TrajectoryBodyGoal_()
    : target_pose()
    , duration()
    , precise_positioning(false)  {
    }
  TrajectoryBodyGoal_(const ContainerAllocator& _alloc)
    : target_pose(_alloc)
    , duration(_alloc)
    , precise_positioning(false)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;

   typedef  ::std_msgs::Duration_<ContainerAllocator>  _duration_type;
  _duration_type duration;

   typedef uint8_t _precise_positioning_type;
  _precise_positioning_type precise_positioning;





  typedef boost::shared_ptr< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryBodyGoal_

typedef ::spot_msgs::TrajectoryBodyGoal_<std::allocator<void> > TrajectoryBodyGoal;

typedef boost::shared_ptr< ::spot_msgs::TrajectoryBodyGoal > TrajectoryBodyGoalPtr;
typedef boost::shared_ptr< ::spot_msgs::TrajectoryBodyGoal const> TrajectoryBodyGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator1> & lhs, const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator2> & rhs)
{
  return lhs.target_pose == rhs.target_pose &&
    lhs.duration == rhs.duration &&
    lhs.precise_positioning == rhs.precise_positioning;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator1> & lhs, const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace spot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb69449cdbd99a24e29c2aab36d5f965";
  }

  static const char* value(const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb69449cdbd99a24ULL;
  static const uint64_t static_value2 = 0xe29c2aab36d5f965ULL;
};

template<class ContainerAllocator>
struct DataType< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spot_msgs/TrajectoryBodyGoal";
  }

  static const char* value(const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"geometry_msgs/PoseStamped target_pose\n"
"# Same as Trajectory.action but specifically in the body frame\n"
"# After this duration, the command will time out and the robot will stop. Must be non-zero\n"
"std_msgs/Duration duration\n"
"# If true, the feedback from the trajectory command must indicate that the robot is\n"
"# at the goal position. If set to false, the robot being near the goal is equivalent to\n"
"# it being at the goal. This is based on the feedback received from the boston dynamics\n"
"# API call at\n"
"# https://dev.bostondynamics.com/protos/bosdyn/api/proto_reference.html?highlight=status_near_goal#se2trajectorycommand-feedback-status\n"
"bool precise_positioning\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Duration\n"
"duration data\n"
;
  }

  static const char* value(const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_pose);
      stream.next(m.duration);
      stream.next(m.precise_positioning);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryBodyGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spot_msgs::TrajectoryBodyGoal_<ContainerAllocator>& v)
  {
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
    s << indent << "duration: ";
    s << std::endl;
    Printer< ::std_msgs::Duration_<ContainerAllocator> >::stream(s, indent + "  ", v.duration);
    s << indent << "precise_positioning: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.precise_positioning);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPOT_MSGS_MESSAGE_TRAJECTORYBODYGOAL_H
