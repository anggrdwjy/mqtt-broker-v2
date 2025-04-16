## This Tools Setup MQTT Broker Server for Communication Client IoT Devices.

## Information

Before using this program, make sure to update repository `sudo apt update` and install git `sudo apt install git -y` to maximize running of program. I am not responsible for any consequences caused by this program, because it does not include server hardening. It is recommended to use this script when the new server is installed. This program has been tested on AWS EC2 with `Public IP` and LXC (Linux Container) with `Private IP`.

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
