// Generated by gencpp from file spot_trajectory_planner/ExecuteTrajectoryResult.msg
// DO NOT EDIT!


#ifndef SPOT_TRAJECTORY_PLANNER_MESSAGE_EXECUTETRAJECTORYRESULT_H
#define SPOT_TRAJECTORY_PLANNER_MESSAGE_EXECUTETRAJECTORYRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace spot_trajectory_planner
{
template <class ContainerAllocator>
struct ExecuteTrajectoryResult_
{
  typedef ExecuteTrajectoryResult_<ContainerAllocator> Type;

  ExecuteTrajectoryResult_()
    : result(false)
    , last_success()  {
    }
  ExecuteTrajectoryResult_(const ContainerAllocator& _alloc)
    : result(false)
    , last_success(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _last_success_type;
  _last_success_type last_success;





  typedef boost::shared_ptr< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> const> ConstPtr;

}; // struct ExecuteTrajectoryResult_

typedef ::spot_trajectory_planner::ExecuteTrajectoryResult_<std::allocator<void> > ExecuteTrajectoryResult;

typedef boost::shared_ptr< ::spot_trajectory_planner::ExecuteTrajectoryResult > ExecuteTrajectoryResultPtr;
typedef boost::shared_ptr< ::spot_trajectory_planner::ExecuteTrajectoryResult const> ExecuteTrajectoryResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator1> & lhs, const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.last_success == rhs.last_success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator1> & lhs, const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace spot_trajectory_planner

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc617279930e6e8d4b25ae649bd40be3";
  }

  static const char* value(const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc617279930e6e8dULL;
  static const uint64_t static_value2 = 0x4b25ae649bd40be3ULL;
};

template<class ContainerAllocator>
struct DataType< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spot_trajectory_planner/ExecuteTrajectoryResult";
  }

  static const char* value(const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Result\n"
"bool result\n"
"geometry_msgs/Pose last_success\n"
"\n"
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
;
  }

  static const char* value(const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.last_success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecuteTrajectoryResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spot_trajectory_planner::ExecuteTrajectoryResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "last_success: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.last_success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPOT_TRAJECTORY_PLANNER_MESSAGE_EXECUTETRAJECTORYRESULT_H
