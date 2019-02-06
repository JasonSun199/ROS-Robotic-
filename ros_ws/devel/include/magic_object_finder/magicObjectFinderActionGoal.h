// Generated by gencpp from file magic_object_finder/magicObjectFinderActionGoal.msg
// DO NOT EDIT!


#ifndef MAGIC_OBJECT_FINDER_MESSAGE_MAGICOBJECTFINDERACTIONGOAL_H
#define MAGIC_OBJECT_FINDER_MESSAGE_MAGICOBJECTFINDERACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <magic_object_finder/magicObjectFinderGoal.h>

namespace magic_object_finder
{
template <class ContainerAllocator>
struct magicObjectFinderActionGoal_
{
  typedef magicObjectFinderActionGoal_<ContainerAllocator> Type;

  magicObjectFinderActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  magicObjectFinderActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::magic_object_finder::magicObjectFinderGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct magicObjectFinderActionGoal_

typedef ::magic_object_finder::magicObjectFinderActionGoal_<std::allocator<void> > magicObjectFinderActionGoal;

typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderActionGoal > magicObjectFinderActionGoalPtr;
typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderActionGoal const> magicObjectFinderActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace magic_object_finder

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'roscpp': ['/opt/ros/kinetic/share/roscpp/cmake/../msg'], 'magic_object_finder': ['/home/jasonsun/ros_ws/devel/share/magic_object_finder/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'gazebo_msgs': ['/home/jasonsun/ros_ws/src/learning_ros_external_pkgs_kinetic/gazebo_ros_pkgs/gazebo_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1bf60b29bdd66d2efa02f590148fa075";
  }

  static const char* value(const ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1bf60b29bdd66d2eULL;
  static const uint64_t static_value2 = 0xfa02f590148fa075ULL;
};

template<class ContainerAllocator>
struct DataType< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "magic_object_finder/magicObjectFinderActionGoal";
  }

  static const char* value(const ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
magicObjectFinderGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: magic_object_finder/magicObjectFinderGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#objectFinder.action\n\
#goal:\n\
#get object ID codes from <object_manipulation_properties/object_ID_codes.h>\n\
#goal field to fill in: name of object of interest\n\
string object_name\n\
";
  }

  static const char* value(const ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct magicObjectFinderActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::magic_object_finder::magicObjectFinderActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::magic_object_finder::magicObjectFinderGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAGIC_OBJECT_FINDER_MESSAGE_MAGICOBJECTFINDERACTIONGOAL_H