// Generated by gencpp from file ssl_frontier_selection/GetGraded.msg
// DO NOT EDIT!


#ifndef SSL_FRONTIER_SELECTION_MESSAGE_GETGRADED_H
#define SSL_FRONTIER_SELECTION_MESSAGE_GETGRADED_H

#include <ros/service_traits.h>


#include <ssl_frontier_selection/GetGradedRequest.h>
#include <ssl_frontier_selection/GetGradedResponse.h>


namespace ssl_frontier_selection
{

struct GetGraded
{

typedef GetGradedRequest Request;
typedef GetGradedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetGraded
} // namespace ssl_frontier_selection


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ssl_frontier_selection::GetGraded > {
  static const char* value()
  {
    return "a4cd76d4eb5970ff195c8d52aacd39f1";
  }

  static const char* value(const ::ssl_frontier_selection::GetGraded&) { return value(); }
};

template<>
struct DataType< ::ssl_frontier_selection::GetGraded > {
  static const char* value()
  {
    return "ssl_frontier_selection/GetGraded";
  }

  static const char* value(const ::ssl_frontier_selection::GetGraded&) { return value(); }
};


// service_traits::MD5Sum< ::ssl_frontier_selection::GetGradedRequest> should match
// service_traits::MD5Sum< ::ssl_frontier_selection::GetGraded >
template<>
struct MD5Sum< ::ssl_frontier_selection::GetGradedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ssl_frontier_selection::GetGraded >::value();
  }
  static const char* value(const ::ssl_frontier_selection::GetGradedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ssl_frontier_selection::GetGradedRequest> should match
// service_traits::DataType< ::ssl_frontier_selection::GetGraded >
template<>
struct DataType< ::ssl_frontier_selection::GetGradedRequest>
{
  static const char* value()
  {
    return DataType< ::ssl_frontier_selection::GetGraded >::value();
  }
  static const char* value(const ::ssl_frontier_selection::GetGradedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ssl_frontier_selection::GetGradedResponse> should match
// service_traits::MD5Sum< ::ssl_frontier_selection::GetGraded >
template<>
struct MD5Sum< ::ssl_frontier_selection::GetGradedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ssl_frontier_selection::GetGraded >::value();
  }
  static const char* value(const ::ssl_frontier_selection::GetGradedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ssl_frontier_selection::GetGradedResponse> should match
// service_traits::DataType< ::ssl_frontier_selection::GetGraded >
template<>
struct DataType< ::ssl_frontier_selection::GetGradedResponse>
{
  static const char* value()
  {
    return DataType< ::ssl_frontier_selection::GetGraded >::value();
  }
  static const char* value(const ::ssl_frontier_selection::GetGradedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SSL_FRONTIER_SELECTION_MESSAGE_GETGRADED_H
