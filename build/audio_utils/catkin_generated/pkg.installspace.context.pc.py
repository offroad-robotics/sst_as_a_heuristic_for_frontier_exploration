# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lMusicBeatDetector;/home/spot/frontier_exploration_ssl_spot/src/audio_utils/src/MusicBeatDetector/3rdParty/OpenBLAS/libopenblas.a;/home/spot/frontier_exploration_ssl_spot/src/audio_utils/src/MusicBeatDetector/3rdParty/fftw/build/lib/libfftw3f.a".split(';') if "-lMusicBeatDetector;/home/spot/frontier_exploration_ssl_spot/src/audio_utils/src/MusicBeatDetector/3rdParty/OpenBLAS/libopenblas.a;/home/spot/frontier_exploration_ssl_spot/src/audio_utils/src/MusicBeatDetector/3rdParty/fftw/build/lib/libfftw3f.a" != "" else []
PROJECT_NAME = "audio_utils"
PROJECT_SPACE_DIR = "/home/spot/frontier_exploration_ssl_spot/install"
PROJECT_VERSION = "0.0.0"
