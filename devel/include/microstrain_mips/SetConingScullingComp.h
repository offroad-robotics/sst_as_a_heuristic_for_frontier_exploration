// Generated by gencpp from file microstrain_mips/SetConingScullingComp.msg
// DO NOT EDIT!


#ifndef MICROSTRAIN_MIPS_MESSAGE_SETCONINGSCULLINGCOMP_H
#define MICROSTRAIN_MIPS_MESSAGE_SETCONINGSCULLINGCOMP_H

#include <ros/service_traits.h>


#include <microstrain_mips/SetConingScullingCompRequest.h>
#include <microstrain_mips/SetConingScullingCompResponse.h>


namespace microstrain_mips
{

struct SetConingScullingComp
{

typedef SetConingScullingCompRequest Request;
typedef SetConingScullingCompResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetConingScullingComp
} // namespace microstrain_mips


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::microstrain_mips::SetConingScullingComp > {
  static const char* value()
  {
    return "f7caf6e1618fb8cc640ac244d6c53d7f";
  }

  static const char* value(const ::microstrain_mips::SetConingScullingComp&) { return value(); }
};

template<>
struct DataType< ::microstrain_mips::SetConingScullingComp > {
  static const char* value()
  {
    return "microstrain_mips/SetConingScullingComp";
  }

  static const char* value(const ::microstrain_mips::SetConingScullingComp&) { return value(); }
};


// service_traits::MD5Sum< ::microstrain_mips::SetConingScullingCompRequest> should match
// service_traits::MD5Sum< ::microstrain_mips::SetConingScullingComp >
template<>
struct MD5Sum< ::microstrain_mips::SetConingScullingCompRequest>
{
  static const char* value()
  {
    return MD5Sum< ::microstrain_mips::SetConingScullingComp >::value();
  }
  static const char* value(const ::microstrain_mips::SetConingScullingCompRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::microstrain_mips::SetConingScullingCompRequest> should match
// service_traits::DataType< ::microstrain_mips::SetConingScullingComp >
template<>
struct DataType< ::microstrain_mips::SetConingScullingCompRequest>
{
  static const char* value()
  {
    return DataType< ::microstrain_mips::SetConingScullingComp >::value();
  }
  static const char* value(const ::microstrain_mips::SetConingScullingCompRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::microstrain_mips::SetConingScullingCompResponse> should match
// service_traits::MD5Sum< ::microstrain_mips::SetConingScullingComp >
template<>
struct MD5Sum< ::microstrain_mips::SetConingScullingCompResponse>
{
  static const char* value()
  {
    return MD5Sum< ::microstrain_mips::SetConingScullingComp >::value();
  }
  static const char* value(const ::microstrain_mips::SetConingScullingCompResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::microstrain_mips::SetConingScullingCompResponse> should match
// service_traits::DataType< ::microstrain_mips::SetConingScullingComp >
template<>
struct DataType< ::microstrain_mips::SetConingScullingCompResponse>
{
  static const char* value()
  {
    return DataType< ::microstrain_mips::SetConingScullingComp >::value();
  }
  static const char* value(const ::microstrain_mips::SetConingScullingCompResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MICROSTRAIN_MIPS_MESSAGE_SETCONINGSCULLINGCOMP_H
