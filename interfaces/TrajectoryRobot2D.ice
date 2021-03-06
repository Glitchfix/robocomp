//******************************************************************
//
//  Generated by IDSL to IDL Translator
//
//  File name: TrajectoryRobot2D.idl
//  Source: TrajectoryRobot2D.idsl
//
//******************************************************************
#ifndef ROBOCOMPTRAJECTORYROBOT2D_ICE
#define ROBOCOMPTRAJECTORYROBOT2D_ICE

module RoboCompTrajectoryRobot2D{

	exception RoboCompException{string text;};

	["cpp:comparable"]
	struct TargetPose
	{
		bool doRotation;
		float x;
		float y;
		float z;
		float rx;
		float ry;
		float rz;
	};

	["cpp:comparable"]
	struct NavState
	{
		float x;
		float z;
		float ang;
		float advV;
		float rotV;
		float distanceToTarget;
		long elapsedTime;
		long estimatedTime;
		long planningTime;
		string state;
	};
	
	dictionary<string, string> NavigationParameterMap;

	interface TrajectoryRobot2D
	{
		float go(TargetPose target) throws RoboCompException;
		float goReferenced(TargetPose target, float xRef, float zRef, float threshold) throws RoboCompException;
		float goBackwards(TargetPose target) throws RoboCompException;
		float changeTarget(TargetPose target) throws RoboCompException;
		NavState getState();
		void stop();
		
		void mapBasedTarget(NavigationParameterMap parameters);

	};
};

#endif