# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from spot_trajectory_planner/BuildTrajectoryRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class BuildTrajectoryRequest(genpy.Message):
  _md5sum = "5fe3a429557d5006ca30226448e54d14"
  _type = "spot_trajectory_planner/BuildTrajectoryRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# request
geometry_msgs/PoseStamped frontier_pose
geometry_msgs/PoseStamped cur_pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['frontier_pose','cur_pose']
  _slot_types = ['geometry_msgs/PoseStamped','geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frontier_pose,cur_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BuildTrajectoryRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.frontier_pose is None:
        self.frontier_pose = geometry_msgs.msg.PoseStamped()
      if self.cur_pose is None:
        self.cur_pose = geometry_msgs.msg.PoseStamped()
    else:
      self.frontier_pose = geometry_msgs.msg.PoseStamped()
      self.cur_pose = geometry_msgs.msg.PoseStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.frontier_pose.header.seq, _x.frontier_pose.header.stamp.secs, _x.frontier_pose.header.stamp.nsecs))
      _x = self.frontier_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.frontier_pose.pose.position.x, _x.frontier_pose.pose.position.y, _x.frontier_pose.pose.position.z, _x.frontier_pose.pose.orientation.x, _x.frontier_pose.pose.orientation.y, _x.frontier_pose.pose.orientation.z, _x.frontier_pose.pose.orientation.w, _x.cur_pose.header.seq, _x.cur_pose.header.stamp.secs, _x.cur_pose.header.stamp.nsecs))
      _x = self.cur_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.cur_pose.pose.position.x, _x.cur_pose.pose.position.y, _x.cur_pose.pose.position.z, _x.cur_pose.pose.orientation.x, _x.cur_pose.pose.orientation.y, _x.cur_pose.pose.orientation.z, _x.cur_pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.frontier_pose is None:
        self.frontier_pose = geometry_msgs.msg.PoseStamped()
      if self.cur_pose is None:
        self.cur_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.frontier_pose.header.seq, _x.frontier_pose.header.stamp.secs, _x.frontier_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frontier_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frontier_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.frontier_pose.pose.position.x, _x.frontier_pose.pose.position.y, _x.frontier_pose.pose.position.z, _x.frontier_pose.pose.orientation.x, _x.frontier_pose.pose.orientation.y, _x.frontier_pose.pose.orientation.z, _x.frontier_pose.pose.orientation.w, _x.cur_pose.header.seq, _x.cur_pose.header.stamp.secs, _x.cur_pose.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cur_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cur_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.cur_pose.pose.position.x, _x.cur_pose.pose.position.y, _x.cur_pose.pose.position.z, _x.cur_pose.pose.orientation.x, _x.cur_pose.pose.orientation.y, _x.cur_pose.pose.orientation.z, _x.cur_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.frontier_pose.header.seq, _x.frontier_pose.header.stamp.secs, _x.frontier_pose.header.stamp.nsecs))
      _x = self.frontier_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d3I().pack(_x.frontier_pose.pose.position.x, _x.frontier_pose.pose.position.y, _x.frontier_pose.pose.position.z, _x.frontier_pose.pose.orientation.x, _x.frontier_pose.pose.orientation.y, _x.frontier_pose.pose.orientation.z, _x.frontier_pose.pose.orientation.w, _x.cur_pose.header.seq, _x.cur_pose.header.stamp.secs, _x.cur_pose.header.stamp.nsecs))
      _x = self.cur_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.cur_pose.pose.position.x, _x.cur_pose.pose.position.y, _x.cur_pose.pose.position.z, _x.cur_pose.pose.orientation.x, _x.cur_pose.pose.orientation.y, _x.cur_pose.pose.orientation.z, _x.cur_pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.frontier_pose is None:
        self.frontier_pose = geometry_msgs.msg.PoseStamped()
      if self.cur_pose is None:
        self.cur_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.frontier_pose.header.seq, _x.frontier_pose.header.stamp.secs, _x.frontier_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frontier_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frontier_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.frontier_pose.pose.position.x, _x.frontier_pose.pose.position.y, _x.frontier_pose.pose.position.z, _x.frontier_pose.pose.orientation.x, _x.frontier_pose.pose.orientation.y, _x.frontier_pose.pose.orientation.z, _x.frontier_pose.pose.orientation.w, _x.cur_pose.header.seq, _x.cur_pose.header.stamp.secs, _x.cur_pose.header.stamp.nsecs,) = _get_struct_7d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cur_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cur_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.cur_pose.pose.position.x, _x.cur_pose.pose.position.y, _x.cur_pose.pose.position.z, _x.cur_pose.pose.orientation.x, _x.cur_pose.pose.orientation.y, _x.cur_pose.pose.orientation.z, _x.cur_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_7d3I = None
def _get_struct_7d3I():
    global _struct_7d3I
    if _struct_7d3I is None:
        _struct_7d3I = struct.Struct("<7d3I")
    return _struct_7d3I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from spot_trajectory_planner/BuildTrajectoryResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class BuildTrajectoryResponse(genpy.Message):
  _md5sum = "d7eecba9990cdc357502735584636d95"
  _type = "spot_trajectory_planner/BuildTrajectoryResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# response
geometry_msgs/PoseArray frontier_plan
int32 parent_id # used to identify which node is the parent of the frontier
int32[] node_list

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['frontier_plan','parent_id','node_list']
  _slot_types = ['geometry_msgs/PoseArray','int32','int32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frontier_plan,parent_id,node_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BuildTrajectoryResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.frontier_plan is None:
        self.frontier_plan = geometry_msgs.msg.PoseArray()
      if self.parent_id is None:
        self.parent_id = 0
      if self.node_list is None:
        self.node_list = []
    else:
      self.frontier_plan = geometry_msgs.msg.PoseArray()
      self.parent_id = 0
      self.node_list = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.frontier_plan.header.seq, _x.frontier_plan.header.stamp.secs, _x.frontier_plan.header.stamp.nsecs))
      _x = self.frontier_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.frontier_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.frontier_plan.poses:
        _v1 = val1.position
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self.parent_id
      buff.write(_get_struct_i().pack(_x))
      length = len(self.node_list)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.Struct(pattern).pack(*self.node_list))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.frontier_plan is None:
        self.frontier_plan = geometry_msgs.msg.PoseArray()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.frontier_plan.header.seq, _x.frontier_plan.header.stamp.secs, _x.frontier_plan.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frontier_plan.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frontier_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frontier_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.frontier_plan.poses.append(val1)
      start = end
      end += 4
      (self.parent_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.node_list = s.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.frontier_plan.header.seq, _x.frontier_plan.header.stamp.secs, _x.frontier_plan.header.stamp.nsecs))
      _x = self.frontier_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.frontier_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.frontier_plan.poses:
        _v5 = val1.position
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self.parent_id
      buff.write(_get_struct_i().pack(_x))
      length = len(self.node_list)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.node_list.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.frontier_plan is None:
        self.frontier_plan = geometry_msgs.msg.PoseArray()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.frontier_plan.header.seq, _x.frontier_plan.header.stamp.secs, _x.frontier_plan.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frontier_plan.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frontier_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frontier_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.frontier_plan.poses.append(val1)
      start = end
      end += 4
      (self.parent_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.node_list = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
class BuildTrajectory(object):
  _type          = 'spot_trajectory_planner/BuildTrajectory'
  _md5sum = 'bc7bc67c3c2d0c9de04aea3b481ca509'
  _request_class  = BuildTrajectoryRequest
  _response_class = BuildTrajectoryResponse
