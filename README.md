## This Tools Automation Setup MQTT Broker Server for Open-Source Projects

```                                                                                                   
       __  _______  ____________   ____             __               
      /  |/  / __ \/_  __/_  __/  / __ )_________  / /_____  _____   
     / /|_/ / / / / / /   / /    / __  / ___/ __ \/ //_/ _ \/ ___/   
    / /  / / /_/ / / /   / /    / /_/ / /  / /_/ / ,< /  __/ /       
   /_/  /_/\___\_\/_/   /_/    /_____/_/   \____/_/|_|\___/_/        
                                                                     
    ______          __      ____    __                   ___         
   /_  __/__  ___  / /__   / __/__ / /___ _____    _  __|_  |        
    / / / _ \/ _ \/ (_-<  _\ \/ -_) __/ // / _ \  | |/ / __/         
   /_/  \___/\___/_/___/ /___/\__/\__/\_,_/ .__/  |___/____/         
                                         /_/                         
                                                                                               
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

## Support

* [:dollar: Give me a tip on Paypal](https://www.paypal.me/AnggardaWijaya)
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
