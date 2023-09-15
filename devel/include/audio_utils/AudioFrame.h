// Generated by gencpp from file audio_utils/AudioFrame.msg
// DO NOT EDIT!


#ifndef AUDIO_UTILS_MESSAGE_AUDIOFRAME_H
#define AUDIO_UTILS_MESSAGE_AUDIOFRAME_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace audio_utils
{
template <class ContainerAllocator>
struct AudioFrame_
{
  typedef AudioFrame_<ContainerAllocator> Type;

  AudioFrame_()
    : header()
    , format()
    , channel_count(0)
    , sampling_frequency(0)
    , frame_sample_count(0)
    , data()  {
    }
  AudioFrame_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , format(_alloc)
    , channel_count(0)
    , sampling_frequency(0)
    , frame_sample_count(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _format_type;
  _format_type format;

   typedef uint32_t _channel_count_type;
  _channel_count_type channel_count;

   typedef uint32_t _sampling_frequency_type;
  _sampling_frequency_type sampling_frequency;

   typedef uint32_t _frame_sample_count_type;
  _frame_sample_count_type frame_sample_count;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::audio_utils::AudioFrame_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::audio_utils::AudioFrame_<ContainerAllocator> const> ConstPtr;

}; // struct AudioFrame_

typedef ::audio_utils::AudioFrame_<std::allocator<void> > AudioFrame;

typedef boost::shared_ptr< ::audio_utils::AudioFrame > AudioFramePtr;
typedef boost::shared_ptr< ::audio_utils::AudioFrame const> AudioFrameConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::audio_utils::AudioFrame_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::audio_utils::AudioFrame_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::audio_utils::AudioFrame_<ContainerAllocator1> & lhs, const ::audio_utils::AudioFrame_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.format == rhs.format &&
    lhs.channel_count == rhs.channel_count &&
    lhs.sampling_frequency == rhs.sampling_frequency &&
    lhs.frame_sample_count == rhs.frame_sample_count &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::audio_utils::AudioFrame_<ContainerAllocator1> & lhs, const ::audio_utils::AudioFrame_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace audio_utils

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::audio_utils::AudioFrame_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::audio_utils::AudioFrame_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_utils::AudioFrame_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_utils::AudioFrame_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_utils::AudioFrame_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_utils::AudioFrame_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::audio_utils::AudioFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06a6d85ab8a7017f22a773d370428c4a";
  }

  static const char* value(const ::audio_utils::AudioFrame_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06a6d85ab8a7017fULL;
  static const uint64_t static_value2 = 0x22a773d370428c4aULL;
};

template<class ContainerAllocator>
struct DataType< ::audio_utils::AudioFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "audio_utils/AudioFrame";
  }

  static const char* value(const ::audio_utils::AudioFrame_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::audio_utils::AudioFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"# Supported formats (all formats are little endian):\n"
"# - \"signed_8\"\n"
"# - \"signed_16\"\n"
"# - \"signed_24\"\n"
"# - \"signed_padded_24\"\n"
"# - \"signed_32\"\n"
"# - \"unsigned_8\"\n"
"# - \"unsigned_16\"\n"
"# - \"unsigned_24\"\n"
"# - \"unsigned_padded_24\"\n"
"# - \"unsigned_32\"\n"
"# - \"float\"\n"
"# - \"double\"\n"
"string format\n"
"uint32 channel_count\n"
"uint32 sampling_frequency\n"
"uint32 frame_sample_count\n"
"\n"
"uint8[] data\n"
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
;
  }

  static const char* value(const ::audio_utils::AudioFrame_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::audio_utils::AudioFrame_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.format);
      stream.next(m.channel_count);
      stream.next(m.sampling_frequency);
      stream.next(m.frame_sample_count);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AudioFrame_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::audio_utils::AudioFrame_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::audio_utils::AudioFrame_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "format: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.format);
    s << indent << "channel_count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.channel_count);
    s << indent << "sampling_frequency: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sampling_frequency);
    s << indent << "frame_sample_count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.frame_sample_count);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUDIO_UTILS_MESSAGE_AUDIOFRAME_H
