# Docker
<br> </br>






### What is Docker

![Docker_Architecture](https://user-images.githubusercontent.com/86292184/129904275-30bcc156-a171-4221-861e-6a5705f92f89.png)
<br> </br>
- Docker is an open platform for developing, shipping, and running applications
-  Docker enables you to separate your applications from your infrastructure so you can deliver software quickly.
- Docker provides the ability to package and run an application in a loosely isolated environment called a container. 
- Containers are lightweight and contain everything needed to run the application, so you do not need to rely on what is currently installed on the host.
<br> </br>


### Docker vs. VM

- Docker
	- In Docker, the containers running share the host OS kernel.

- Virtual Machines
	- VMs are made up of user space plus kernel space of an operating system.
	- Each VM has Operating system & apps. It shares hardware resource from the host
- Docker vs. VMs
	- Under a VM environment, each workload needs a complete OS. But with a container environment, multiple workloads can run with 1 OS
	- VMs are a better choice for running apps that require all of the operating system’s resources and functionality when you need to run multiple applications on servers, or have a wide variety of operating systems to manage.
	- Containers are a better choice when your biggest priority is maximizing the number of applications running on a minimal number of servers.
<br> </br>

### Benefits of using docker
- Simplicity and Faster Configurations
	- Users can take their own configuration, put it into code, and deploy it without any problems.
- Rapid Deployment
	 - Docker manages to reduce deployment to seconds. This is due to the fact that it creates a container for every process and does not boot an OS.
- Continuous Deployment and Testing
	- You can use the same container from development to production making sure there are no discrepancies or manual intervention.

- Multi-Cloud Platforms
	- All major cloud computing providers, including Amazon Web Services (AWS) and Google Compute Platform (GCP), have embraced Docker’s availability and added individual support.

<br> </br>
### Who is using docker
- 2/3 of companies that try using Docker, adopt it.
- Adopters multiply their containers by five. Docker adopters approximately quintuple the average number of running containers they have in production between their first and tenth month of usage.
- Companoes such as JPMorgan, ThoughtWorksING, Paypal, ADP, Spotify and more
<br> </br>
### What is Micro-services architecture
- Microservice architecture, is an architectural style that structures an application as a collection of services that are:

	- Highly maintainable and testable
	- Loosely coupled
	- Independently deployable
	- Organized around business capabilities
	- Ownedby a small team
<br> </br>
- It is essentially like using a Lego block to build something
- The microservice architecture enables the rapid, frequent and reliable delivery of large, complex applications. It also enables an organization to evolve its technology stack.
<br> </br>
![download](https://user-images.githubusercontent.com/86292184/129904537-e4a2d130-bc4b-441c-bee6-8ef5996d49b3.png)
<br> </br>
### Micro-services architecture vs Monolith
- The monolithic architecture is considered to be a traditional way of building applications. 
	- A monolithic application is built as a single and indivisible unit. Usually, such a solution comprises a client-side user interface, a server side-application, and a database.
- While a monolithic application is a single unified unit, a microservices architecture breaks it down into a collection of smaller independent units. 
	- These units carry out every application process as a separate service. So all the services have their own logic and the database as well as perform the specific functions.
	<br> </br>
![download](https://user-images.githubusercontent.com/86292184/129904972-af9a1379-cd80-4420-8390-88a62d2ff8fd.jpg)
<br> </br>

### Is Micro-services architecture always useful?
- According to IDC, by 2022, 90% of all apps will feature microservices architectures that improve the ability to design, debug, update, and leverage third-party code
- ---------------------------------------
## Docker commands
- Runs image, Go to localhost:3000 in your browser
`docker run -d -p 4000:4000 docs/docker.github.io`
- Run nginx, check in browser: localhost
`docker run -d -p 80:80 nginx`
- Check running containers 
`docker ps` `docker ps -a`
- To enter container
`docker exec -t CONTAINER_ID sh`
` dockor
- To stop/ start the container
`docker stop CONTAINER_ID` `docker start CONTAINER_ID`
- Destroy container
`docker rm CONTAINER_ID -f`
- list images
`docker images`
- shows image history
`docker history IMAGE_NAME`
- delete image
`docker rmi IMAGE_NAME`
<br> <br/>
- -------------------------------
### HTML Task


- **Create basic .html file** 
- Create `index.txt` file and create simple html script
```
<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>

<p>My first paragraph.</p>

</body>
</html>

```
- Save and change file type from `.txt` to `.html`
<br> </br>
- **Copy html file from local host to container**
- To copy, naviagte to local host folder that contains the html file
- Run `docker cp /LOCAL-HOST-FILE LOCATION/index.html CONTAINER_ID:/usr/share/nginx/html
- If it returns an error, restart your terminal and try again
<br> </br>
- **Run container**
`docker run -d -p 80:80 nginx`
- Check container info `docker ps -a`
- Run `alias docker="winpty docker"`
- Open container `docker exec -it CONTAINER_ID sh`
- Go to directory `cd /usr/share/nginx/html`
<br> </br>
- **Check if copy command is successful** 
Run `pwd` to check if you're in the correct location
- Check files, run `ls -a`
- Run `apt update` then `apt install nano`
- Once installed, run `nano index.html` 
- To exit container, run `exit` duh