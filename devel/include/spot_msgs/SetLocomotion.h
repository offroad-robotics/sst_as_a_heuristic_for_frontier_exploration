// Generated by gencpp from file spot_msgs/SetLocomotion.msg
// DO NOT EDIT!


#ifndef SPOT_MSGS_MESSAGE_SETLOCOMOTION_H
#define SPOT_MSGS_MESSAGE_SETLOCOMOTION_H

#include <ros/service_traits.h>


#include <spot_msgs/SetLocomotionRequest.h>
#include <spot_msgs/SetLocomotionResponse.h>


namespace spot_msgs
{

struct SetLocomotion
{

typedef SetLocomotionRequest Request;
typedef SetLocomotionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLocomotion
} // namespace spot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::spot_msgs::SetLocomotion > {
  static const char* value()
  {
    return "c56f88cac429fded4d7931238a2795c7";
  }

  static const char* value(const ::spot_msgs::SetLocomotion&) { return value(); }
};

template<>
struct DataType< ::spot_msgs::SetLocomotion > {
  static const char* value()
  {
    return "spot_msgs/SetLocomotion";
  }

  static const char* value(const ::spot_msgs::SetLocomotion&) { return value(); }
};


// service_traits::MD5Sum< ::spot_msgs::SetLocomotionRequest> should match
// service_traits::MD5Sum< ::spot_msgs::SetLocomotion >
template<>
struct MD5Sum< ::spot_msgs::SetLocomotionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::spot_msgs::SetLocomotion >::value();
  }
  static const char* value(const ::spot_msgs::SetLocomotionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::spot_msgs::SetLocomotionRequest> should match
// service_traits::DataType< ::spot_msgs::SetLocomotion >
template<>
struct DataType< ::spot_msgs::SetLocomotionRequest>
{
  static const char* value()
  {
    return DataType< ::spot_msgs::SetLocomotion >::value();
  }
  static const char* value(const ::spot_msgs::SetLocomotionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::spot_msgs::SetLocomotionResponse> should match
// service_traits::MD5Sum< ::spot_msgs::SetLocomotion >
template<>
struct MD5Sum< ::spot_msgs::SetLocomotionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::spot_msgs::SetLocomotion >::value();
  }
  static const char* value(const ::spot_msgs::SetLocomotionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::spot_msgs::SetLocomotionResponse> should match
// service_traits::DataType< ::spot_msgs::SetLocomotion >
template<>
struct DataType< ::spot_msgs::SetLocomotionResponse>
{
  static const char* value()
  {
    return DataType< ::spot_msgs::SetLocomotion >::value();
  }
  static const char* value(const ::spot_msgs::SetLocomotionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SPOT_MSGS_MESSAGE_SETLOCOMOTION_H
