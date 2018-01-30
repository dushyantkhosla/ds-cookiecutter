# Getting Started


- If data exists on Local, copy it to the server with scp
  - If data sits on the cloud, download it inside the server
- Optional: Copy SSH keys `scp -rp ~/.ssh user@remote-server:/tmp/.ssh`

- SSH into the Server

- Pull a Docker Container 

```
docker pull <image>
docker images
```

- Get the code for your project

```
git clone git-url
```

- Start a Docker Container using the appropriate image, map ports and mirror directories

```
docker run -it -v $pwd:/home \
               -p 8080:8080 \
               -p 5000:5000 \
               -p 3128:3128 \
               docker.ocean.pmicloud.biz/<tag>
```

- PS: *If Docker commands do not work, run `systemctl start docker` as root and try again*  

- Configure Git

```
git config --global http.proxy http://proxy-url:port
git config --global user.email 'you@pmi.com'
git config --global user.name 'FirstName LastName'
```
