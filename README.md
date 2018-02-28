# apt2-dockerfile

docker build -t apt-2:latest .

docker run --rm -it -p 443:443 -v ~/.msf4:/root/.msf4 -v /tmp/msf:/tmp/data -v /home/apt2:/tmp/apt2 apt-2:latest

docker exec -it <cont> bash -> msfconsole -> load msgrpc User=msf Pass=msfpass ServerPort=55552

(inside apt2) su - apt2

(inside apt2) cd apt2; ./apt2.py
