#! /usr/bin/env python3

import rospy
from std_srvs.srv import Trigger, TriggerResponse
from odas_ros.lib_odas_server_node import OdasServerNode

node = None
odas_on = False

def main():

    # register start and stop services
    start = rospy.Service("/odas/start", Trigger, odas_start)
    stop = rospy.Service("/odas/stop", Trigger, odas_stop)

def odas_start(msg):
    global node, odas_on

    if not odas_on:
        odas_on = True
        node = OdasServerNode()
        node.run()
        return TriggerResponse(success=True, message="odas started")

    else:
        rospy.logwarn("ODAS is running, you need to stop odas before you can start it.")
        return TriggerResponse(success=False, message="ODAS is running, you need to stop odas before you can start it.")

def odas_stop(msg):
    global node, odas_on

    if odas_on:
        odas_on = False
        node.stop()
        return TriggerResponse(success=True, message="odas stopped")

    else:
        rospy.logwarn("ODAS is stopped, you need to start odas before you can stop it.")
        return TriggerResponse(success=False, message="ODAS is stopped, you need to start odas before you can stop it.")


if __name__ == '__main__':
    try:
        rospy.init_node('odas_server_node')
        main()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
