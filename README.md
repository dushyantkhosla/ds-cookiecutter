# Getting Started

- SSH into the DS Lab   
- Pull a Docker Container (replace `<tag>` with the Image name)

```
docker login docker.ocean.pmicloud.biz
docker pull docker.ocean.pmicloud.biz/<tag>
docker images
```

- Get the code for your project (replace `USER` and `PROJECTNAME`)

```
git clone https://USER@source.app.pconnect.biz/scm/ead/ds-project-PROJECTNAME.git
```

- Start a Docker Container using the appropriate image, map ports and mirror directories

```
docker run -it -v /home/USER/ds-project-PROJECTNAME:/home \
               -p 8080:8080 \
               -p 5000:5000 \
               -p 3128:3128 \
               docker.ocean.pmicloud.biz/<tag>
```

- PS: *If Docker commands do not work, run `systemctl start docker` as root and try again*  

## Configure Git

```
git config --global http.proxy http://squid.service.pmicicd.ocean:3128
git config --global user.email 'you@pmi.com'
git config --global user.name 'FirstName LastName'
```  

## Explore, Get the Data

- PS: *Do this outside the container*

```
hdfs dfs -ls -h /dslabs/sme/data/cast_data_sql/cast_data/
hdfs dfs -copyToLocal /dslabs/sme/data/cast_data_sql/cast_data/*.csv /home/<user>/data/
```  
  
## Optional: Copy SSH Keys to the Lab (and into the Container)

- `scp -rp ~/.ssh user@dest:/path` to transfer the Keys
- Copy these into the Container with the `-v` switch
