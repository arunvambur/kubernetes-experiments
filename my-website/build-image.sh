docker build -t my-website:0.0.1 .

# run docker image in container
docker run --rm --name my-website -d -p8080:80 my-website:0.0.1

# check the webiste is running
curl localhost:8080

# stop the website in docker
docker stop my-website

# archive image to a file
docker save -o /home/arvenka/my-website_0.0.1.tar my-website:0.0.1