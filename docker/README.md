## Python3 based minimal Docker container for Data Science Development and Interactive Visualization

- Builds on the latest image of CentOS
- Installs Python (via Miniconda3)
- Installs `git` version 2.x
- Installs the fish shell
- Installs the PyData stack (pandas, jupyter, scikit-learn, seaborn)
- Sets up jupyterlab extensions for Widgets and bqplot
- Installs graphviz

### Build and Run the Docker Image

```
# Build
docker build -t IMAGE_NAME:TAG .

# Run 
docker run -it --name CONTAINER_NAME \
                -v (pwd):/home \
                -p 8888:8888 \
                -p 5000:5000 \
                -p 3128:3128 IMAGE_NAME
```

- to push it to your repo, first use `docker tag` and then `docker push`

## Note

- The conda environment is activated automatically when the container starts.
- Helpful messages displayed on container startup
