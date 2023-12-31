// Generated by gencpp from file ublox_msgs/NavSBAS.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_NAVSBAS_H
#define UBLOX_MSGS_MESSAGE_NAVSBAS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ublox_msgs/NavSBAS_SV.h>

namespace ublox_msgs
{
template <class ContainerAllocator>
struct NavSBAS_
{
  typedef NavSBAS_<ContainerAllocator> Type;

  NavSBAS_()
    : iTOW(0)
    , geo(0)
    , mode(0)
    , sys(0)
    , service(0)
    , cnt(0)
    , reserved0()
    , sv()  {
      reserved0.assign(0);
  }
  NavSBAS_(const ContainerAllocator& _alloc)
    : iTOW(0)
    , geo(0)
    , mode(0)
    , sys(0)
    , service(0)
    , cnt(0)
    , reserved0()
    , sv(_alloc)  {
  (void)_alloc;
      reserved0.assign(0);
  }



   typedef uint32_t _iTOW_type;
  _iTOW_type iTOW;

   typedef uint8_t _geo_type;
  _geo_type geo;

   typedef uint8_t _mode_type;
  _mode_type mode;

   typedef int8_t _sys_type;
  _sys_type sys;

   typedef uint8_t _service_type;
  _service_type service;

   typedef uint8_t _cnt_type;
  _cnt_type cnt;

   typedef boost::array<uint8_t, 3>  _reserved0_type;
  _reserved0_type reserved0;

   typedef std::vector< ::ublox_msgs::NavSBAS_SV_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ublox_msgs::NavSBAS_SV_<ContainerAllocator> >> _sv_type;
  _sv_type sv;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CLASS_ID)
  #undef CLASS_ID
#endif
#if defined(_WIN32) && defined(MESSAGE_ID)
  #undef MESSAGE_ID
#endif
#if defined(_WIN32) && defined(MODE_DISABLED)
  #undef MODE_DISABLED
#endif
#if defined(_WIN32) && defined(MODE_ENABLED_INTEGRITY)
  #undef MODE_ENABLED_INTEGRITY
#endif
#if defined(_WIN32) && defined(MODE_ENABLED_TESTMODE)
  #undef MODE_ENABLED_TESTMODE
#endif
#if defined(_WIN32) && defined(SYS_UNKNOWN)
  #undef SYS_UNKNOWN
#endif
#if defined(_WIN32) && defined(SYS_WAAS)
  #undef SYS_WAAS
#endif
#if defined(_WIN32) && defined(SYS_EGNOS)
  #undef SYS_EGNOS
#endif
#if defined(_WIN32) && defined(SYS_MSAS)
  #undef SYS_MSAS
#endif
#if defined(_WIN32) && defined(SYS_GAGAN)
  #undef SYS_GAGAN
#endif
#if defined(_WIN32) && defined(SYS_GPS)
  #undef SYS_GPS
#endif
#if defined(_WIN32) && defined(SERVICE_RANGING)
  #undef SERVICE_RANGING
#endif
#if defined(_WIN32) && defined(SERVICE_CORRECTIONS)
  #undef SERVICE_CORRECTIONS
#endif
#if defined(_WIN32) && defined(SERVICE_INTEGRITY)
  #undef SERVICE_INTEGRITY
#endif
#if defined(_WIN32) && defined(SERVICE_TESTMODE)
  #undef SERVICE_TESTMODE
#endif

  enum {
    CLASS_ID = 1u,
    MESSAGE_ID = 50u,
    MODE_DISABLED = 0u,
    MODE_ENABLED_INTEGRITY = 1u,
    MODE_ENABLED_TESTMODE = 3u,
    SYS_UNKNOWN = -1,
    SYS_WAAS = 0,
    SYS_EGNOS = 1,
    SYS_MSAS = 2,
    SYS_GAGAN = 3,
    SYS_GPS = 16,
    SERVICE_RANGING = 1u,
    SERVICE_CORRECTIONS = 2u,
    SERVICE_INTEGRITY = 4u,
    SERVICE_TESTMODE = 8u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::NavSBAS_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::NavSBAS_<ContainerAllocator> const> ConstPtr;

}; // struct NavSBAS_

typedef ::ublox_msgs::NavSBAS_<std::allocator<void> > NavSBAS;

typedef boost::shared_ptr< ::ublox_msgs::NavSBAS > NavSBASPtr;
typedef boost::shared_ptr< ::ublox_msgs::NavSBAS const> NavSBASConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::NavSBAS_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::NavSBAS_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ublox_msgs::NavSBAS_<ContainerAllocator1> & lhs, const ::ublox_msgs::NavSBAS_<ContainerAllocator2> & rhs)
{
  return lhs.iTOW == rhs.iTOW &&
    lhs.geo == rhs.geo &&
    lhs.mode == rhs.mode &&
    lhs.sys == rhs.sys &&
    lhs.service == rhs.service &&
    lhs.cnt == rhs.cnt &&
    lhs.reserved0 == rhs.reserved0 &&
    lhs.sv == rhs.sv;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ublox_msgs::NavSBAS_<ContainerAllocator1> & lhs, const ::ublox_msgs::NavSBAS_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ublox_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavSBAS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::NavSBAS_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavSBAS_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ea0a5f1e74c114f14024eb1bc277c57";
  }

  static const char* value(const ::ublox_msgs::NavSBAS_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ea0a5f1e74c114fULL;
  static const uint64_t static_value2 = 0x14024eb1bc277c57ULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/NavSBAS";
  }

  static const char* value(const ::ublox_msgs::NavSBAS_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# NAV-SBAS (0x01 0x32)\n"
"# SBAS Status Data\n"
"#\n"
"# This message outputs the status of the SBAS sub system\n"
"#\n"
"\n"
"uint8 CLASS_ID = 1\n"
"uint8 MESSAGE_ID = 50\n"
"\n"
"uint32 iTOW             # GPS Millisecond time of week [ms]\n"
"\n"
"uint8 geo               # PRN Number of the GEO where correction and integrity \n"
"                        # data is used from\n"
"\n"
"uint8 mode              # SBAS Mode\n"
"uint8 MODE_DISABLED = 0\n"
"uint8 MODE_ENABLED_INTEGRITY = 1\n"
"uint8 MODE_ENABLED_TESTMODE = 3\n"
"\n"
"int8 sys                # SBAS System (WAAS/EGNOS/...)\n"
"int8 SYS_UNKNOWN = -1\n"
"int8 SYS_WAAS = 0\n"
"int8 SYS_EGNOS = 1\n"
"int8 SYS_MSAS = 2\n"
"int8 SYS_GAGAN = 3\n"
"int8 SYS_GPS = 16\n"
"\n"
"uint8 service           # SBAS Services available\n"
"uint8 SERVICE_RANGING = 1\n"
"uint8 SERVICE_CORRECTIONS = 2\n"
"uint8 SERVICE_INTEGRITY = 4\n"
"uint8 SERVICE_TESTMODE = 8\n"
"\n"
"uint8 cnt               # Number of SV data following\n"
"uint8[3] reserved0      # Reserved\n"
"\n"
"NavSBAS_SV[] sv\n"
"\n"
"================================================================================\n"
"MSG: ublox_msgs/NavSBAS_SV\n"
"# see message NavSBAS\n"
"#\n"
"\n"
"uint8 svid              # SV Id\n"
"uint8 flags             # Flags for this SV\n"
"uint8 udre              # Monitoring status\n"
"uint8 svSys             # System (WAAS/EGNOS/...), same as SYS\n"
"uint8 svService         # Services available, same as SERVICE\n"
"uint8 reserved1         # Reserved\n"
"int16 prc               # Pseudo Range correction in [cm]\n"
"uint16 reserved2        # Reserved\n"
"int16 ic                # Ionosphere correction in [cm]\n"
;
  }

  static const char* value(const ::ublox_msgs::NavSBAS_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.iTOW);
      stream.next(m.geo);
      stream.next(m.mode);
      stream.next(m.sys);
      stream.next(m.service);
      stream.next(m.cnt);
      stream.next(m.reserved0);
      stream.next(m.sv);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavSBAS_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::NavSBAS_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::NavSBAS_<ContainerAllocator>& v)
  {
    s << indent << "iTOW: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.iTOW);
    s << indent << "geo: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.geo);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "sys: ";
    Printer<int8_t>::stream(s, indent + "  ", v.sys);
    s << indent << "service: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.service);
    s << indent << "cnt: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cnt);
    s << indent << "reserved0[]" << std::endl;
    for (size_t i = 0; i < v.reserved0.size(); ++i)
    {
      s << indent << "  reserved0[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.reserved0[i]);
    }
    s << indent << "sv[]" << std::endl;
    for (size_t i = 0; i < v.sv.size(); ++i)
    {
      s << indent << "  sv[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ublox_msgs::NavSBAS_SV_<ContainerAllocator> >::stream(s, indent + "    ", v.sv[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_NAVSBAS_H
