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

Before using this program, make sure to update the repository 'sudo apt update' and install git 'sudo apt install git -y' to maximize the running of the program. I am not responsible for any consequences caused by this program, because it does not include server hardening. It is recommended to use this script when the new server is installed. This program has been tested on AWS EC2 with `Public IP` and LXC (Linux Container) with `Private IP`.

## Features
* Setup MQTT Broker Server
* Default MQTT Server Dashboard Port 18083, Custom Port Dashboard MQTT Broker Server
* Default MQTT Port 1883, Support Custom Port MQTT Client Listener `Not Support AWS EC2`

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

## Check Listening Port
```
sudo netstat -tunlp | grep emqx
```

## Default Access Web Dashboard EMQX

Username : `admin` | Password : `public`
```
http://ip-address:18083
```

## Support

* [:octocat: Follow me on GitHub](https://github.com/anggrdwjy)
* [🔔 Subscribe me on Youtube](https://www.youtube.com/@anggarda.wijaya)

## References

* https://docs.emqx.com/en/emqx/latest/

## Bugs

Please open an issue on GitHub with as much information as possible if you found a bug.
* Your operating system / Linux distribution
* All the logs and message outputted
* etc
