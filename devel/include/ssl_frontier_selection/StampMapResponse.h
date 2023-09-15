// Generated by gencpp from file ssl_frontier_selection/StampMapResponse.msg
// DO NOT EDIT!


#ifndef SSL_FRONTIER_SELECTION_MESSAGE_STAMPMAPRESPONSE_H
#define SSL_FRONTIER_SELECTION_MESSAGE_STAMPMAPRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ssl_frontier_selection
{
template <class ContainerAllocator>
struct StampMapResponse_
{
  typedef StampMapResponse_<ContainerAllocator> Type;

  StampMapResponse_()
    : success(false)
    , msg()  {
    }
  StampMapResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , msg(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _msg_type;
  _msg_type msg;





  typedef boost::shared_ptr< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StampMapResponse_

typedef ::ssl_frontier_selection::StampMapResponse_<std::allocator<void> > StampMapResponse;

typedef boost::shared_ptr< ::ssl_frontier_selection::StampMapResponse > StampMapResponsePtr;
typedef boost::shared_ptr< ::ssl_frontier_selection::StampMapResponse const> StampMapResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator1> & lhs, const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.msg == rhs.msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator1> & lhs, const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ssl_frontier_selection

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e835b04f93d0b30fd8cb71e0967a16db";
  }

  static const char* value(const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe835b04f93d0b30fULL;
  static const uint64_t static_value2 = 0xd8cb71e0967a16dbULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ssl_frontier_selection/StampMapResponse";
  }

  static const char* value(const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# response\n"
"bool success\n"
"string msg\n"
;
  }

  static const char* value(const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StampMapResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ssl_frontier_selection::StampMapResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SSL_FRONTIER_SELECTION_MESSAGE_STAMPMAPRESPONSE_H
