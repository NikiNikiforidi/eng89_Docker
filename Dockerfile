# Build an image to automate the task to launch static sit/ page using nginx webserver with docker.
# Steps:
# Use the official nginx image
# Lable it with your name or email
# Copy the folder/ file from our local host to the container
# > This is the command : docker cp /LOCAL-HOST-FILE LOCATION/index.html CONTAINER_ID:/usr/share/nginx/html
# Declare to use defualt port 80 for nginx
# CMD with the final command - as an example, npm start (s sort of command with go into CMD)

# Building customised docker images

# FROM is the keyword to use the image

# Optional, labe with your name, good practive when working in a big team

# Copy the data as our index.html

# Now let's add the port


FROM nginx
LABEL MAINTAINER = nnikiforidi@spartaglobal.com
COPY index.html /usr/share/nginx/html/ 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"] # This line is from official documentation

