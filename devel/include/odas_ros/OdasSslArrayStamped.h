// Generated by gencpp from file odas_ros/OdasSslArrayStamped.msg
// DO NOT EDIT!


#ifndef ODAS_ROS_MESSAGE_ODASSSLARRAYSTAMPED_H
#define ODAS_ROS_MESSAGE_ODASSSLARRAYSTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <odas_ros/OdasSsl.h>

namespace odas_ros
{
template <class ContainerAllocator>
struct OdasSslArrayStamped_
{
  typedef OdasSslArrayStamped_<ContainerAllocator> Type;

  OdasSslArrayStamped_()
    : header()
    , sources()  {
    }
  OdasSslArrayStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sources(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::odas_ros::OdasSsl_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::odas_ros::OdasSsl_<ContainerAllocator> >> _sources_type;
  _sources_type sources;





  typedef boost::shared_ptr< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> const> ConstPtr;

}; // struct OdasSslArrayStamped_

typedef ::odas_ros::OdasSslArrayStamped_<std::allocator<void> > OdasSslArrayStamped;

typedef boost::shared_ptr< ::odas_ros::OdasSslArrayStamped > OdasSslArrayStampedPtr;
typedef boost::shared_ptr< ::odas_ros::OdasSslArrayStamped const> OdasSslArrayStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator1> & lhs, const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.sources == rhs.sources;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator1> & lhs, const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace odas_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "356f8a800528bac6e1bfe4fc7310b94b";
  }

  static const char* value(const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x356f8a800528bac6ULL;
  static const uint64_t static_value2 = 0xe1bfe4fc7310b94bULL;
};

template<class ContainerAllocator>
struct DataType< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "odas_ros/OdasSslArrayStamped";
  }

  static const char* value(const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"odas_ros/OdasSsl[] sources\n"
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
"MSG: odas_ros/OdasSsl\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 E\n"
;
  }

  static const char* value(const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sources);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OdasSslArrayStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::odas_ros::OdasSslArrayStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::odas_ros::OdasSslArrayStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sources[]" << std::endl;
    for (size_t i = 0; i < v.sources.size(); ++i)
    {
      s << indent << "  sources[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::odas_ros::OdasSsl_<ContainerAllocator> >::stream(s, indent + "    ", v.sources[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ODAS_ROS_MESSAGE_ODASSSLARRAYSTAMPED_H
