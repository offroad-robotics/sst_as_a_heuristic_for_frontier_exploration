// Generated by gencpp from file microstrain_mips/SetSoftIronMatrixRequest.msg
// DO NOT EDIT!


#ifndef MICROSTRAIN_MIPS_MESSAGE_SETSOFTIRONMATRIXREQUEST_H
#define MICROSTRAIN_MIPS_MESSAGE_SETSOFTIRONMATRIXREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace microstrain_mips
{
template <class ContainerAllocator>
struct SetSoftIronMatrixRequest_
{
  typedef SetSoftIronMatrixRequest_<ContainerAllocator> Type;

  SetSoftIronMatrixRequest_()
    : soft_iron_1()
    , soft_iron_2()
    , soft_iron_3()  {
    }
  SetSoftIronMatrixRequest_(const ContainerAllocator& _alloc)
    : soft_iron_1(_alloc)
    , soft_iron_2(_alloc)
    , soft_iron_3(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _soft_iron_1_type;
  _soft_iron_1_type soft_iron_1;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _soft_iron_2_type;
  _soft_iron_2_type soft_iron_2;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _soft_iron_3_type;
  _soft_iron_3_type soft_iron_3;





  typedef boost::shared_ptr< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetSoftIronMatrixRequest_

typedef ::microstrain_mips::SetSoftIronMatrixRequest_<std::allocator<void> > SetSoftIronMatrixRequest;

typedef boost::shared_ptr< ::microstrain_mips::SetSoftIronMatrixRequest > SetSoftIronMatrixRequestPtr;
typedef boost::shared_ptr< ::microstrain_mips::SetSoftIronMatrixRequest const> SetSoftIronMatrixRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator1> & lhs, const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator2> & rhs)
{
  return lhs.soft_iron_1 == rhs.soft_iron_1 &&
    lhs.soft_iron_2 == rhs.soft_iron_2 &&
    lhs.soft_iron_3 == rhs.soft_iron_3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator1> & lhs, const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace microstrain_mips

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7f7e0181b730797800abbfc3104a7df3";
  }

  static const char* value(const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7f7e0181b7307978ULL;
  static const uint64_t static_value2 = 0x00abbfc3104a7df3ULL;
};

template<class ContainerAllocator>
struct DataType< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "microstrain_mips/SetSoftIronMatrixRequest";
  }

  static const char* value(const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Vector3 soft_iron_1\n"
"geometry_msgs/Vector3 soft_iron_2\n"
"geometry_msgs/Vector3 soft_iron_3\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.soft_iron_1);
      stream.next(m.soft_iron_2);
      stream.next(m.soft_iron_3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetSoftIronMatrixRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::microstrain_mips::SetSoftIronMatrixRequest_<ContainerAllocator>& v)
  {
    s << indent << "soft_iron_1: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.soft_iron_1);
    s << indent << "soft_iron_2: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.soft_iron_2);
    s << indent << "soft_iron_3: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.soft_iron_3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MICROSTRAIN_MIPS_MESSAGE_SETSOFTIRONMATRIXREQUEST_H
