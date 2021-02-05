# Kali in The Browser

 Simple kali linux docker in the browser

## Installation

1. git clone https://github.com/f3ci/kali-in-the-browser.git
2. cd kali-in-the-browser && sudo docker build -t kitb .
3. sudo docker run -it -d --rm --name my_kitb -p 8082:8080 kitb
4. Open your browser http://<docker-ip>:8082/

## Screenshot
![alt text](https://github.com/f3ci/kali-in-the-browser/raw/main/kitb.png)
