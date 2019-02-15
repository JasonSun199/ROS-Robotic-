
#include <ros/ros.h> //Must include this for all ROS cpp projects
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/Float32.h> //Including the Float32 class from std_msgs
#include <std_msgs/Bool.h> // boolean message 
#include <std_srvs/Trigger.h>


const double MIN_SAFE_DISTANCE = 2.0; // set alarm if anything is within 0.5m of the front of robot

// these values to be set within the laser callback
float ping_dist_in_front_=3.0; // global var to hold length of a SINGLE LIDAR ping--in front
float ping_dist_left_ = 3.0; 
float ping_dist_right_ = 3.0;
float ping_dist_1_ = 3.0;
float ping_dist_2_ = 3.0;
float ping_dist_3_ = 3.0;
 
int ping_index_= -1; // NOT real; callback will have to find this
int ping_index_left_ = -1; 
int ping_index_right_ = -1; 
int ping_index_1_ = -1; 
int ping_index_2_ = -1;
int ping_index_3_ = -1;

double angle_min_=0.0;
double angle_max_=0.0;
double angle_increment_=0.0;
double range_min_ = 0.0;
double range_max_ = 0.0;
bool laser_alarm_=false;
bool call_srv = false;


ros::Publisher lidar_alarm_publisher_;
ros::Publisher lidar_dist_publisher_;

ros::ServiceClient lidar_eStop_; 
ros::ServiceClient lidar_eStop_clear_; 
std_srvs::Trigger estop_service; 
std_srvs::Trigger clear_estop_service; 
// really, do NOT want to depend on a single ping.  Should consider a subset of pings
// to improve reliability and avoid false alarms or failure to see an obstacle

void laserCallback(const sensor_msgs::LaserScan& laser_scan) {
    if (ping_index_<0)  {
        //for first message received, set up the desired index of LIDAR range to eval
        angle_min_ = laser_scan.angle_min;
        angle_max_ = laser_scan.angle_max;
        angle_increment_ = laser_scan.angle_increment;
        range_min_ = laser_scan.range_min;
        range_max_ = laser_scan.range_max;
        // what is the index of the ping that is straight ahead?
        // BETTER would be to use transforms, which would reference how the LIDAR is mounted;
        // but this will do for simple illustration
        ping_index_ = (int) ((0.0 -angle_min_)/angle_increment_);
	ping_index_left_ = (int) ((-0.75 -angle_min_)/angle_increment_);
	ping_index_right_ = (int) ((0.75 -angle_min_)/angle_increment_);
	ping_index_1_ = (int) ((-0.45 -angle_min_)/angle_increment_);
	ping_index_2_ = (int) ((0.45 -angle_min_)/angle_increment_);
	ping_index_3_ = (int) ((1 -angle_min_)/angle_increment_);
        ROS_INFO("LIDAR setup: ping_index = %d",ping_index_);
        
    }
    
   ping_dist_in_front_ = laser_scan.ranges[ping_index_];
ping_dist_left_ = laser_scan.ranges[ping_index_left_]; 
ping_dist_right_ = laser_scan.ranges[ping_index_right_]; 
   ROS_INFO("ping dist in front = %f",ping_dist_in_front_);
ROS_INFO("ping dist in the left = %f",ping_dist_left_);
ROS_INFO("ping dist in the right = %f",ping_dist_right_);
   ROS_INFO("ping dist 1 = %f",ping_dist_1_);
ROS_INFO("ping dist 2 = %f",ping_dist_2_);
ROS_INFO("ping dist 3 = %f",ping_dist_3_);

   if (ping_dist_in_front_<MIN_SAFE_DISTANCE || ping_dist_left_<(MIN_SAFE_DISTANCE-1)|| ping_dist_right_<(MIN_SAFE_DISTANCE-1) || ping_dist_1_<(MIN_SAFE_DISTANCE-1) || ping_dist_2_<(MIN_SAFE_DISTANCE-1) || ping_dist_3_<(MIN_SAFE_DISTANCE-1)) {
       ROS_WARN("DANGER, WILL ROBINSON!!");
       laser_alarm_=true;
   }
   else {
       laser_alarm_=false;
   }
   std_msgs::Bool lidar_alarm_msg;
   lidar_alarm_msg.data = laser_alarm_;
   lidar_alarm_publisher_.publish(lidar_alarm_msg);
   std_msgs::Float32 lidar_dist_msg;
   lidar_dist_msg.data = ping_dist_in_front_;
   lidar_dist_publisher_.publish(lidar_dist_msg);   
   
   if (laser_alarm_ && !call_srv){
       ROS_WARN("TOO CLOSE, calling service");
        lidar_eStop_.call(estop_service);
		call_srv = true;
	} 
   
   if(!laser_alarm_ && call_srv){
        ROS_WARN("Reset calling service"); 
            lidar_eStop_clear_.call(clear_estop_service);
                call_srv = false; 
   }
   
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "lidar_alarm"); //name this node
    ros::NodeHandle nh; 
    //create a Subscriber object and have it subscribe to the lidar topic
    ros::Publisher pub = nh.advertise<std_msgs::Bool>("lidar_alarm", 1);
    lidar_alarm_publisher_ = pub; // let's make this global, so callback can use it
    ros::Publisher pub2 = nh.advertise<std_msgs::Float32>("lidar_dist", 1);  
    lidar_dist_publisher_ = pub2;
    ros::Subscriber lidar_subscriber = nh.subscribe("/scan", 1, laserCallback);
    
    lidar_eStop_ = nh.serviceClient<std_srvs::TriggerRequest>("estop_service");
    lidar_eStop_clear_ = nh.serviceClient<std_srvs::TriggerRequest>("clear_estop_service");
    ros::spin(); //this is essentially a "while(1)" statement, except it
    // forces refreshing wakeups upon new data arrival
    // main program essentially hangs here, but it must stay alive to keep the callback function alive
    return 0; // should never get here, unless roscore dies
}
