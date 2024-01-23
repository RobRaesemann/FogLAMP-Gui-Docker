set version=2.3.0
set platform=x86_64
set distribution=ubuntu2004
set docker_image=ubuntu:20.04

docker build ^
	--build-arg FOGLAMP_VERSION=%version% ^
	--build-arg FOGLAMP_PLATFORM=%platform% ^
	--build-arg DOCKER_IMAGE=%docker_image% ^
	--build-arg FOGLAMP_DISTRIBUTION=%distribution% ^
	--tag robraesemann/foglamp-gui:%version% ^
	--tag robraesemann/foglamp-gui:latest ^
	--no-cache ^
	--push ^
	.