# Kali in The Browser

 Simple kali linux in the browser with docker and tightvnc

## Installation

1. git clone https://github.com/f3ci/kitb.git
2. cd kitb && sudo docker build -t kitb .
3. sudo docker run -it -d --rm --name my_kitb -p 8082:8082 kitb
4. Open your browser http://[docker-ip]:8082/vnc_auto.html

Default password is '123456'

## Screenshot
![alt text](https://github.com/f3ci/kali-in-the-browser/raw/main/kitb.png)
