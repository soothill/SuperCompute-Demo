wsl docker stop croit
wsl docker rm croit
wsl docker rm croit-data

wsl docker create --name croit-data croit/croit:latest
wsl docker run --cap-add=SYS_TIME -v /var/run/docker.sock:/var/run/docker.sock --net=host --restart=always --volumes-from croit-data --name croit -d croit/croit:latest