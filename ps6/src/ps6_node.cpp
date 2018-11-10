//Jason Sun, PS6

#include <ros/ros.h>
#include <std_srvs/Trigger.h>
#include <osrf_gear/ConveyorBeltControl.h>
#include <osrf_gear/DroneControl.h>
#include <osrf_gear/LogicalCameraImage.h>
#include <iostream>
#include <string>

using namespace std;
bool g_take_new_snapshot = false;
osrf_gear::LogicalCameraImage g_caml_data;

void cam2CB(const osrf_gear::LogicalCameraImage message_holder){
    ROS_INFO_STREAM("image from caml2: " <<message_holder<<endl);
    g_caml_data = message_holder;
    g_take_new_snapshot = false;
    }

int main(int argc, char **argv) {
    ros::init(argc, argv, "ps6");
    ros::NodeHandle n;
    ros::ServiceClient startup_client = n.serviceClient<std_srvs::Trigger>("/ariac/start_competition");
    std_srvs::Trigger startup_srv;
    ros::ServiceClient conveyor_client = n.serviceClient<osrf_gear::ConveyorBeltControl>("/ariac/conveyor/control");
    osrf_gear::ConveyorBeltControl conveyor_srv;
    
    ros::ServiceClient drone_client = n.serviceClient<osrf_gear::DroneControl>("/ariac/drone");
    osrf_gear::DroneControl drone_srv;
    
    startup_srv.response.success = false;
while (!startup_srv.response.success) {
    ROS_WARN("not successful, starting up yet....");
    startup_client.call(startup_srv);
    ros::Duration(0.5).sleep();
    }
    ROS_INFO("got success response from startup service");
    
    conveyor_srv.request.power = 100;
    conveyor_srv.response.success = false;
    
    while (!conveyor_srv.response.success){
        ROS_WARN("not successful starting conveyor yet...");
        conveyor_client.call(conveyor_srv);
        ros::Duration(0.5).sleep();
    }
	ros::Duration(8).sleep(); 
    ROS_INFO("got success response from conveyor service");
    
    //camera
    g_take_new_snapshot = true;
    while(g_caml_data.models.size() < 0){
        ros::spinOnce();
        ros::Duration(0.5).sleep();
    }
    ROS_INFO("I see a box");

//stop the conveyor for 5 seconds

 	conveyor_srv.request.power = 0;
   	conveyor_srv.response.success = false;
    while (!conveyor_srv.response.success){
        ROS_WARN("Halting the conveyor for 5 seconds");
 	conveyor_client.call(conveyor_srv);
        ros::Duration(5).sleep();
    }
    ROS_INFO("Conveyor Stoped for 5 seconds");
    
    conveyor_srv.request.power = 100;
    conveyor_srv.response.success = false;
    while (!conveyor_srv.response.success){
        ROS_WARN("Conveyor Resuming");
        conveyor_client.call(conveyor_srv);
        ros::Duration(0.5).sleep();
    }
    ROS_INFO("Conveyor resume");
    
    //Drone
    drone_srv.request.shipment_type = "dummy";
    drone_srv.response.success = false;
    while(!drone_srv.response.success){
        ROS_WARN("not successful starting calling drone yet");
        drone_client.call(drone_srv);
        ros::Duration(0.5).sleep();
    }
    ROS_INFO("get success response from drone service");
    return 0;
}
