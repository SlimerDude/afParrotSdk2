//using afParrotSdk2
using concurrent::Actor

class SimpleExample {
	Void main() {
		drone := Drone().connect
		drone.clearEmergency
		drone.flatTrim

		// set some outdoor configuration
		drone.config.useOutdoorProfile = true
		drone.config.useOutdoorShell = true

		// record the action to an MP4 file
		drone.config.session("Simple Example")
		drone.config.session.videoCamera = VideoCamera.horizontal
		drone.config.session.videoResolution = VideoResolution._720p
		VideoStreamer.toMp4File(`simpleExample.mp4`).attachToLiveStream(drone)

		// let's fly!!!
		drone.takeOff
		drone.animateFlight(FlightAnimation.flipBackward)		
		Actor.sleep(2sec)
		drone.land
		
		drone.disconnect
	}
}
