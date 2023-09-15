#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/spot/frontier_exploration_ssl_spot/src/odas_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/spot/frontier_exploration_ssl_spot/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/spot/frontier_exploration_ssl_spot/install/lib/python3/dist-packages:/home/spot/frontier_exploration_ssl_spot/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/spot/frontier_exploration_ssl_spot/build" \
    "/usr/bin/python3" \
    "/home/spot/frontier_exploration_ssl_spot/src/odas_ros/setup.py" \
    egg_info --egg-base /home/spot/frontier_exploration_ssl_spot/build/odas_ros \
    build --build-base "/home/spot/frontier_exploration_ssl_spot/build/odas_ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/spot/frontier_exploration_ssl_spot/install" --install-scripts="/home/spot/frontier_exploration_ssl_spot/install/bin"
