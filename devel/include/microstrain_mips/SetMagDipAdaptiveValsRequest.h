// Generated by gencpp from file microstrain_mips/SetMagDipAdaptiveValsRequest.msg
// DO NOT EDIT!


#ifndef MICROSTRAIN_MIPS_MESSAGE_SETMAGDIPADAPTIVEVALSREQUEST_H
#define MICROSTRAIN_MIPS_MESSAGE_SETMAGDIPADAPTIVEVALSREQUEST_H


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
struct SetMagDipAdaptiveValsRequest_
{
  typedef SetMagDipAdaptiveValsRequest_<ContainerAllocator> Type;

  SetMagDipAdaptiveValsRequest_()
    : enable(0.0)
    , low_pass_cutoff(0.0)
    , min_1sigma(0.0)
    , high_limit(0.0)
    , high_limit_1sigma(0.0)  {
    }
  SetMagDipAdaptiveValsRequest_(const ContainerAllocator& _alloc)
    : enable(0.0)
    , low_pass_cutoff(0.0)
    , min_1sigma(0.0)
    , high_limit(0.0)
    , high_limit_1sigma(0.0)  {
  (void)_alloc;
    }



   typedef float _enable_type;
  _enable_type enable;

   typedef float _low_pass_cutoff_type;
  _low_pass_cutoff_type low_pass_cutoff;

   typedef float _min_1sigma_type;
  _min_1sigma_type min_1sigma;

   typedef float _high_limit_type;
  _high_limit_type high_limit;

   typedef float _high_limit_1sigma_type;
  _high_limit_1sigma_type high_limit_1sigma;





  typedef boost::shared_ptr< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetMagDipAdaptiveValsRequest_

typedef ::microstrain_mips::SetMagDipAdaptiveValsRequest_<std::allocator<void> > SetMagDipAdaptiveValsRequest;

typedef boost::shared_ptr< ::microstrain_mips::SetMagDipAdaptiveValsRequest > SetMagDipAdaptiveValsRequestPtr;
typedef boost::shared_ptr< ::microstrain_mips::SetMagDipAdaptiveValsRequest const> SetMagDipAdaptiveValsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator1> & lhs, const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.enable == rhs.enable &&
    lhs.low_pass_cutoff == rhs.low_pass_cutoff &&
    lhs.min_1sigma == rhs.min_1sigma &&
    lhs.high_limit == rhs.high_limit &&
    lhs.high_limit_1sigma == rhs.high_limit_1sigma;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator1> & lhs, const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace microstrain_mips

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "04ce6c1f346dae412b474a781c1703c9";
  }

  static const char* value(const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x04ce6c1f346dae41ULL;
  static const uint64_t static_value2 = 0x2b474a781c1703c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "microstrain_mips/SetMagDipAdaptiveValsRequest";
  }

  static const char* value(const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 enable\n"
"float32 low_pass_cutoff\n"
"float32 min_1sigma\n"
"float32 high_limit\n"
"float32 high_limit_1sigma\n"
;
  }

  static const char* value(const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enable);
      stream.next(m.low_pass_cutoff);
      stream.next(m.min_1sigma);
      stream.next(m.high_limit);
      stream.next(m.high_limit_1sigma);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMagDipAdaptiveValsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::microstrain_mips::SetMagDipAdaptiveValsRequest_<ContainerAllocator>& v)
  {
    s << indent << "enable: ";
    Printer<float>::stream(s, indent + "  ", v.enable);
    s << indent << "low_pass_cutoff: ";
    Printer<float>::stream(s, indent + "  ", v.low_pass_cutoff);
    s << indent << "min_1sigma: ";
    Printer<float>::stream(s, indent + "  ", v.min_1sigma);
    s << indent << "high_limit: ";
    Printer<float>::stream(s, indent + "  ", v.high_limit);
    s << indent << "high_limit_1sigma: ";
    Printer<float>::stream(s, indent + "  ", v.high_limit_1sigma);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MICROSTRAIN_MIPS_MESSAGE_SETMAGDIPADAPTIVEVALSREQUEST_H
