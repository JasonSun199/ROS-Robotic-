# stdr_control
An minimal, example node to illustrate control of the STDR mobile robot with open-loop commands. It makes the the 2-dimention robot move from the start position to the upper left corner. 

## Example usage
`roslaunch stdr_launchers server_with_map_and_gui_plus_robot.launch`
to start the simulator.  Run a simple, open-loop command sequence with:
`rosrun my_stdr_control stdr_upper_corner_commander`

    
