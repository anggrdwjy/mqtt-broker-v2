## This Tools Automation Setup MQTT Broker Server for Open-Source Projects

```                                                                                                   
          __  _______  ____________  ___           __                   
         /  |/  / __ \/_  __/_  __/ / _ )_______  / /_____ ____         
        / /|_/ / /_/ / / /   / /   / _  / __/ _ \/   _/ -_) __/         
       /_/  /_/\___\_\/_/   /_/   /____/_/  \___/_/\_\\__/_/                                                          
       ______          __      ____    __                   ___         
      /_  __/__  ___  / /__   / __/__ / /___ _____    _  __|_  |        
       / / / _ \/ _ \/ (_-<  _\ \/ -_) __/ // / _ \  | |/ / __/         
      /_/  \___/\___/_/___/ /___/\__/\__/\_,_/ .__/  |___/____/         
                                            /_/                         
      Version: 2.0.4 - 6/1/2025                          
      Developer: https://github.com/anggrdwjy              
      Support OS: Ubuntu 18.04, 20.04, 22.04, 24.04        
                                                                                           
```

## Information

Before using this program, make sure to install `git`, `curl` and `net-tools` to maximize the program. I am not responsible for any consequences caused by this program, because it does not include server hardening. It is recommended to use this script when the new server is installed. This program has been tested on AWS EC2 with `Public IP` and LXC (Linux Container) with `Private IP`.

## Features
* MQTT Broker Server Install
* Custom Port Dashboard MQTT Broker Server
* Custom Port MQTT Client Listener `Not Support AWS EC2`
* Bandwidth Monitoring `Not Support AWS EC2`
* CPU and RAM Monitoring

## Support OS
* Ubuntu 18.04
* Ubuntu 20.04
* Ubuntu 22.04
* Ubuntu 24.04

## Installing Program
```
git clone https://github.com/anggrdwjy/mqtt-tools-v2.git
```
```
cd mqtt-tools-v2
```
```
chmod -R 777 *
```

## Running Program
```
./mqtt-broker-v2.sh
```

## Default Access Web Dashboard EMQX
Port 18083 (Web Server) | Port 1883 (MQTT Port)
```
http://ip-address:18083
```

## Support

* [:octocat: Follow me on GitHub](https://github.com/anggrdwjy)
* [🔔 Subscribe me on Youtube](https://www.youtube.com/@anggarda.wijaya)

## References

* https://docs.emqx.com/en/emqx/latest/
* https://htop.dev/
* http://iptraf.seul.org/
* https://www.onlinegdb.com/online_bash_shell
* https://manytools.org/hacker-tools/ascii-banner/
* https://sourceforge.net/projects/net-tools/
* https://curl.se/docs/manpage.html

## Bugs

Please open an issue on GitHub with as much information as possible if you found a bug.
* Your operating system / Linux distribution
* All the logs and message outputted
* etc
