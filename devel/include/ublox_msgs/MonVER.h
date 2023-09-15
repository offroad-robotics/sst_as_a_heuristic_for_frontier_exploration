// Generated by gencpp from file ublox_msgs/MonVER.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_MONVER_H
#define UBLOX_MSGS_MESSAGE_MONVER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ublox_msgs/MonVER_Extension.h>

namespace ublox_msgs
{
template <class ContainerAllocator>
struct MonVER_
{
  typedef MonVER_<ContainerAllocator> Type;

  MonVER_()
    : swVersion()
    , hwVersion()
    , extension()  {
      swVersion.assign(0);

      hwVersion.assign(0);
  }
  MonVER_(const ContainerAllocator& _alloc)
    : swVersion()
    , hwVersion()
    , extension(_alloc)  {
  (void)_alloc;
      swVersion.assign(0);

      hwVersion.assign(0);
  }



   typedef boost::array<uint8_t, 30>  _swVersion_type;
  _swVersion_type swVersion;

   typedef boost::array<uint8_t, 10>  _hwVersion_type;
  _hwVersion_type hwVersion;

   typedef std::vector< ::ublox_msgs::MonVER_Extension_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ublox_msgs::MonVER_Extension_<ContainerAllocator> >> _extension_type;
  _extension_type extension;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CLASS_ID)
  #undef CLASS_ID
#endif
#if defined(_WIN32) && defined(MESSAGE_ID)
  #undef MESSAGE_ID
#endif

  enum {
    CLASS_ID = 10u,
    MESSAGE_ID = 4u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::MonVER_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::MonVER_<ContainerAllocator> const> ConstPtr;

}; // struct MonVER_

typedef ::ublox_msgs::MonVER_<std::allocator<void> > MonVER;

typedef boost::shared_ptr< ::ublox_msgs::MonVER > MonVERPtr;
typedef boost::shared_ptr< ::ublox_msgs::MonVER const> MonVERConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::MonVER_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::MonVER_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ublox_msgs::MonVER_<ContainerAllocator1> & lhs, const ::ublox_msgs::MonVER_<ContainerAllocator2> & rhs)
{
  return lhs.swVersion == rhs.swVersion &&
    lhs.hwVersion == rhs.hwVersion &&
    lhs.extension == rhs.extension;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ublox_msgs::MonVER_<ContainerAllocator1> & lhs, const ::ublox_msgs::MonVER_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ublox_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::MonVER_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::MonVER_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::MonVER_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::MonVER_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::MonVER_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::MonVER_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::MonVER_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83c8a03d7744e76cc085d953e1a5a293";
  }

  static const char* value(const ::ublox_msgs::MonVER_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83c8a03d7744e76cULL;
  static const uint64_t static_value2 = 0xc085d953e1a5a293ULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::MonVER_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/MonVER";
  }

  static const char* value(const ::ublox_msgs::MonVER_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::MonVER_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# MON-VER (0x0A 0x04)\n"
"#\n"
"# Receiver/Software Version\n"
"# Returned when the version is polled.\n"
"\n"
"uint8 CLASS_ID = 10\n"
"uint8 MESSAGE_ID = 4\n"
"\n"
"char[30] swVersion    # Zero-terminated software version string.\n"
"char[10] hwVersion    # Zero-terminated hardware version string.\n"
"\n"
"# Start of repeated block (N times)\n"
"MonVER_Extension[] extension\n"
"# End of repeated block\n"
"\n"
"================================================================================\n"
"MSG: ublox_msgs/MonVER_Extension\n"
"# see MonVER message\n"
"#\n"
"\n"
"char[30] field\n"
;
  }

  static const char* value(const ::ublox_msgs::MonVER_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::MonVER_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.swVersion);
      stream.next(m.hwVersion);
      stream.next(m.extension);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MonVER_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::MonVER_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::MonVER_<ContainerAllocator>& v)
  {
    s << indent << "swVersion[]" << std::endl;
    for (size_t i = 0; i < v.swVersion.size(); ++i)
    {
      s << indent << "  swVersion[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.swVersion[i]);
    }
    s << indent << "hwVersion[]" << std::endl;
    for (size_t i = 0; i < v.hwVersion.size(); ++i)
    {
      s << indent << "  hwVersion[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.hwVersion[i]);
    }
    s << indent << "extension[]" << std::endl;
    for (size_t i = 0; i < v.extension.size(); ++i)
    {
      s << indent << "  extension[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ublox_msgs::MonVER_Extension_<ContainerAllocator> >::stream(s, indent + "    ", v.extension[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_MONVER_H
