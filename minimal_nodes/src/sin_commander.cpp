//sin_commander
//Prompts for an amplitude and frequency
//Commands sinusoidal velocities to the minimal controller
//publish to "vel_cmd"

#include<ros/ros.h> 
#include<std_msgs/Float64.h>
#include<math.h>
//#include <minimal_nodes/ServiceAmpFreq.h>

using namespace std;
std_msgs::Float64 g_sinvel; 

int main(int argc, char **argv) {
 ros::init(argc, argv, "sin_commander");
 ros::NodeHandle nh;
 ros::Publisher my_publisher_object = nh.advertise<std_msgs::Float64>("vel_cmd", 1);


 double amp,freq;
    cout<<"enter pan amplitude (rad): ";
    cin>>amp;
    cout<<"enter pan freq (Hz): ";
    cin>>freq;



 //double amp = 1.0; 
 //double freq = 1.0;
 double dt = 0.05;
 ros::Rate timer(1/dt);
 double phase=0.0;

  while (ros::ok()) {
   phase+= M_PI*2.0*freq*dt;
    if (phase>2.0*M_PI) phase-= 2.0*M_PI;
     g_sinvel.data = amp*sin(phase);
     //cout<<"phase: "<<phase<<endl;
     my_publisher_object.publish(g_sinvel);
     ROS_INFO("Sin velocity = %f", g_sinvel.data);
	timer.sleep();      
    }
  return 0; 
}
