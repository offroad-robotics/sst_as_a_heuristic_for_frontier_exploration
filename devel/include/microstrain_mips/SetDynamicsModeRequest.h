// Generated by gencpp from file microstrain_mips/SetDynamicsModeRequest.msg
// DO NOT EDIT!


#ifndef MICROSTRAIN_MIPS_MESSAGE_SETDYNAMICSMODEREQUEST_H
#define MICROSTRAIN_MIPS_MESSAGE_SETDYNAMICSMODEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace microstrain_mips
{
template <class ContainerAllocator>
struct SetDynamicsModeRequest_
{
  typedef SetDynamicsModeRequest_<ContainerAllocator> Type;

  SetDynamicsModeRequest_()
    : mode(0)  {
    }
  SetDynamicsModeRequest_(const ContainerAllocator& _alloc)
    : mode(0)  {
  (void)_alloc;
    }



   typedef int8_t _mode_type;
  _mode_type mode;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(PORTABLE)
  #undef PORTABLE
#endif
#if defined(_WIN32) && defined(AUTOMOTIVE)
  #undef AUTOMOTIVE
#endif
#if defined(_WIN32) && defined(AIRBORNE)
  #undef AIRBORNE
#endif

  enum {
    PORTABLE = 1,
    AUTOMOTIVE = 2,
    AIRBORNE = 3,
  };


  typedef boost::shared_ptr< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetDynamicsModeRequest_

typedef ::microstrain_mips::SetDynamicsModeRequest_<std::allocator<void> > SetDynamicsModeRequest;

typedef boost::shared_ptr< ::microstrain_mips::SetDynamicsModeRequest > SetDynamicsModeRequestPtr;
typedef boost::shared_ptr< ::microstrain_mips::SetDynamicsModeRequest const> SetDynamicsModeRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator1> & lhs, const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator1> & lhs, const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace microstrain_mips

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a674809088a82424826d8e499e5a94c7";
  }

  static const char* value(const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa674809088a82424ULL;
  static const uint64_t static_value2 = 0x826d8e499e5a94c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "microstrain_mips/SetDynamicsModeRequest";
  }

  static const char* value(const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 PORTABLE=1\n"
"int8 AUTOMOTIVE=2\n"
"int8 AIRBORNE=3\n"
"int8 mode\n"
;
  }

  static const char* value(const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetDynamicsModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::microstrain_mips::SetDynamicsModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MICROSTRAIN_MIPS_MESSAGE_SETDYNAMICSMODEREQUEST_H
