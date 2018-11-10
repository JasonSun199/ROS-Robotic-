//
//  trajectory_ sender.cpp
//  
//
//  Created by Jason Sun on 10/13/18.
//
#include <math.h>
#include <stdlib.h>
#include <string>
#include <vector>

#include <ros/ros.h> 
#include <std_msgs/Bool.h>
#include <std_msgs/Float32.h>
#include <trajectory_msgs/JointTrajectory.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "traj_sender");
    ros::NodeHandle nh;  
    ros::Publisher pub = nh.advertise<trajectory_msgs::JointTrajectory>("joint_path_command", 1);
    trajectory_msgs::JointTrajectory new_trajectory; //   trajectory message
    trajectory_msgs::JointTrajectoryPoint trajectory_point0; //points to populate the trajectory message
    trajectory_msgs::JointTrajectoryPoint trajectory_point1;
    trajectory_msgs::JointTrajectoryPoint trajectory_point2,trajectory_point3,trajectory_point4,trajectory_point5,trajectory_point6;
    
    new_trajectory.points.clear(); 
    new_trajectory.joint_names.push_back("joint1");
    new_trajectory.joint_names.push_back("joint2");
    new_trajectory.joint_names.push_back("joint3");
    new_trajectory.joint_names.push_back("joint4");
    new_trajectory.joint_names.push_back("joint5");
    new_trajectory.joint_names.push_back("joint6");
    
    ros::Rate sleep_timer(1.0); 
    

    trajectory_point0.positions.clear();
    trajectory_point1.positions.clear();
    trajectory_point2.positions.clear();
    
    for (int ijnt=0;ijnt<6;ijnt++) {
        trajectory_point0.positions.push_back(0.0);
        trajectory_point1.positions.push_back(0.0); 
        trajectory_point2.positions.push_back(0.0); 
        trajectory_point3.positions.push_back(0.0);
        trajectory_point4.positions.push_back(0.0);
        trajectory_point5.positions.push_back(0.0);
        trajectory_point6.positions.push_back(0.0);
    }
   
    trajectory_point0.time_from_start = ros::Duration(1.0); 
    
    new_trajectory.points.clear();
    new_trajectory.header.stamp = ros::Time::now();
    new_trajectory.points.push_back(trajectory_point0);
    
    ROS_INFO("sending robot to home position: ");
    int npts = new_trajectory.points.size();
    ROS_INFO("num pts in initial traj = %d",npts);
    for (int i=0;i<2;i++) 
    {
        pub.publish(new_trajectory);
        ros::spinOnce();
        ros::Duration(1.0).sleep();
    }
    trajectory_point1.time_from_start = ros::Duration(3.0); 
    trajectory_point2.time_from_start = ros::Duration(5.0); 
    trajectory_point3.time_from_start = ros::Duration(8.0); 
    trajectory_point4.time_from_start = ros::Duration(11.0); 
    trajectory_point5.time_from_start = ros::Duration(14.0); 
    trajectory_point6.time_from_start = ros::Duration(17.0); 
     new_trajectory.header.stamp = ros::Time::now();
    
     trajectory_point1.positions[0] = 1.0;
     trajectory_point1.positions[1] = 1;
     trajectory_point1.positions[2] = -1;
     trajectory_point1.positions[3] = 2;
     trajectory_point1.positions[4] = 1;
     trajectory_point1.positions[5] = 1;

     trajectory_point2.positions[0] = 1;
     trajectory_point2.positions[1] = 1;
     trajectory_point2.positions[2] = -1;
     trajectory_point2.positions[3] = -1.1;
     trajectory_point2.positions[4] = -1;
     trajectory_point2.positions[5] = -2.1;
     
     trajectory_point3.positions[0] = 1.0;
     trajectory_point3.positions[1] = 1.4;
     trajectory_point3.positions[2] = -1.7;
     trajectory_point3.positions[3] = 1.8;
     trajectory_point3.positions[4] = 0.89;
     trajectory_point3.positions[5] = 1.4;
     
     trajectory_point4.positions[0] = 1;
     trajectory_point4.positions[1] = 1.4;
     trajectory_point4.positions[2] = -1.7;
     trajectory_point4.positions[3] = -1.4;
     trajectory_point4.positions[4] = -0.89;
     trajectory_point4.positions[5] = -1.8;
     
     trajectory_point5.positions[0] = -2.1;
     trajectory_point5.positions[1] = -1.4;
     trajectory_point5.positions[2] = -1;
     trajectory_point5.positions[3] = 1.4;
     trajectory_point5.positions[4] = -0.89;
     trajectory_point5.positions[5] = -1.2;
     
     trajectory_point6.positions[0] = -2.1;
     trajectory_point6.positions[1] = -1.4;
     trajectory_point6.positions[2] = -1.0;  
     trajectory_point6.positions[3] = -1.7;
     trajectory_point6.positions[4] = 0.89;
     trajectory_point6.positions[5] = 1.96;
     



     new_trajectory.points.clear();
     new_trajectory.points.push_back(trajectory_point1); 
     new_trajectory.points.push_back(trajectory_point2);
     new_trajectory.points.push_back(trajectory_point3);
     new_trajectory.points.push_back(trajectory_point4); 
     new_trajectory.points.push_back(trajectory_point5); 
     new_trajectory.points.push_back(trajectory_point6);

    npts = new_trajectory.points.size();
    int njnts = new_trajectory.points[0].positions.size();
    ROS_INFO("sending a trajectory with %d poses, each with %d joints ",npts,njnts);
    pub.publish(new_trajectory);
    //don't die yet--make sure message gets received
    for (int i=0;i<3;i++) {
        sleep_timer.sleep();
    }
    
    return 0;
}


