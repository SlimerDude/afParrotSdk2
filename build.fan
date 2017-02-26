using build

class Build : BuildPod {

	new make() {
		podName = "afParrotDrone"
		summary = "Fly Boy!"
		version = Version("0.0.1")

		meta = [
			"pod.dis"		: "Parrot Drone",
		]

		depends = [
			"sys         1.0.69 - 1.0",
			"inet        1.0.69 - 1.0",
			"concurrent  1.0.69 - 1.0",

			"fwt  1.0.69 - 1.0",
			"gfx  1.0.69 - 1.0",

			"afConcurrent 1.0.17 - 1.0", 
		]

		srcDirs = [`fan/`, `fan/core/`, `fan/gui/`]
		resDirs = [,]
	}
}
