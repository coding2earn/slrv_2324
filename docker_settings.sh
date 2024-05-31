#get the IP address of host (laptop)
--> ipconfig
	find your IP from the output as:
		IPv4 WiFi address: 192.168.1.96

#Install and run XLaunch program on Windows (necessary for GUI apps)
#It'll be active at the background

#Run your container by using the docker image <slrv2324/my_slrv>
--> docker run -it slrv2324/my_slrv /bin/bash

#Direct the GUI apps to host IP
--> export DISPLAY=192.168.1.96:0.0

#Ready to execute GUI apps on ubuntu container!