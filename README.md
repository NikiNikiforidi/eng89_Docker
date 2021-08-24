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
<br> </br>
- ----------------------------------------
### Automating task using Dockerfile
- Create docker file:  `nano Dockerfile` 
- **D mustbe captial**
- Inside file:
	- Use the official nginx image
		- `FROM nginx`
	- Optional, labe with your name
		- `LABEL MAINTAINER = nnikiforidi@spartaglobal.com`
	- Copy the data as our index.html
		- `COPY index.html /usr/share/nginx/html/`
	- Add the port
		- `EXPOSE 80`
		- `CMD ["nginx", "-g", "daemon off;"] `
- Save and exit file
<br> </br>


- To build image  
	- `docker build -t DOCKER_ID/IMAGE_NAME .`
- To run image:
	- docker 

- You should be able to see you .HTML on`localhost:50`

<br> </br>
------------------------------------------
### Push and Pull from Docker
- To push image to docker:
	- `docker push DOCTER_ID/REPO_NAME`

- To pull container from docker repo: 
	- `docker pull DOCTER_ID/REPO_NAME`

<br> </br>
- -------------------------------------
### View and delete images and containers
- Show the images
	- `docker images` 
- Delete images
	- `docker rmi id -f` 
- Show container
	- `docker ps `
- Delete container
	- `docker rm id -f` 
<br> </br>
- ---------------------------------------------
### Docker volume
- To create a volume 
	- `docker run -d -v LOCAL_PATH_.HTML:/usr/share/nginx/html -p 5000:80 DOCKER_ID/REPO_NAME`

	- example `docker run -d -v /c/Users/Niki/eng89_Docker:/usr/share/nginx/html/ -p 92:80 nikinikiforidi/eng89_auto_nginx
`
<br> </br>

- Create a volume
	- `docker volume create --name GIVE_NAME`
- To get more infor about volume
	- `docker volume inspect NAME`
- ----------------------------------------
### Changes on local host
- If you change the html file from your local host you will have to follow these steps to see the update

- Create new image
	- `docker build -t DOCKER_ID/NWE_NAME .`
	- Example: 
	- `docker build -t nikinikiforidi/eng89_auto_nginx:v1 .`
- Build new image with volume
	- `docker run -d  -v PWD_PATH:/usr/share/nginx/html/ -9 port DOCKER_ID/NEW_NAME`
	- Example:
	- `docker run -d -v /c/Users/Niki/eng89_Docker:/usr/share/nginx/html/ -p 70:80 nikinikiforidi/eng89_auto_nginx:v1
`


- ----------------------------------------
### Launch app
- Copy over app folder and enter it

- Create new `Dockerfile` file in app folder

```
# Use node official image for this dockerfile
FROM node

# location destination inside the container
WORKDIR /usr/src/app

# copy everything
COPY ["package.json", "package-lock.json*", "./"]

# another way
COPY . .

RUN npm install -g npm@7.20.6

RUN node seeds/seed.js

EXPOSE 3000

CMD ["node", "app.js"]


```
- Build
	- `docker build -t nikinikiforidi/eng89_node_app .
`

- Run app on port 3000
	- ` docker run -d -p 3000:3000 nikinikiforidi/eng89_node_app
`
- Close all containers that are using port 80
- To get "reverse proxy"
	- `docker run -d -p 80:3000 nikinikiforidi/eng89_node_app
`
- Go to browser and open localhost

- -----------------------------------------
### running ITproject app

- Create requirements.txt file and add
```
flask
flask_wtf
passlib
requests
pandas==1.3.2
flask_table
list_function
lxml
```
<br> </br>

- Create a new Dockerfile and add
```
FROM python:3.8

WORKDIR	usr/src/app

COPY requirements.txt requirements.txt

COPY . .

RUN pip3 install -r requirements.txt


EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

``` 
- Then run these commands
- build image
		- `docker build -t nikinikiforidi/it_app:v3 .`
		- check with `docker images`
- Run it
		-`docker run -d -p 4000:5000 nikinikiforidi/it_app:v3`
		- check with `docker ps`

- Push to docker	
		- `docker push nikinikiforidi/it_app:v3`
- ------------------------------------------
### Docker multi statge build

```
FROM node AS app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@7.20.6

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]

# Let'sbuild a built-stage production ready image

FROM node:alpine

WORKDIR /usr/scr/app

COPY package*.json ./

RUN npm install -g npm@7.20.6

COPY --from=app /usr/src/app /usr/scr/app

EXPOSE 3000

CMD ["node", "app.js"]



```
<br> </br>
- ----------------------------------------------
# Kubenetes

![overview](https://user-images.githubusercontent.com/86292184/130643874-5031455d-a94e-4e81-bb0d-25ab8babfb53.png)

- Kubernetes is an open-source container-orchestration system for automating computer application deployment, scaling, and management

<br> </br>
- ------------------------------
![Kubernetes_20architecture_20diagram](https://user-images.githubusercontent.com/86292184/130644351-96163369-1cf8-4903-b54e-cf8193f8ffbb.png)

- PODS: 
  - A Kubernetes pod is a group of containers, and is the smallest unit that Kubernetes administers. Pods have a single IP address that is applied to every container within the pod.
- Deployments: 
  - Deployments describe the number of desired identical pod replicas to run and the preferred update strategy used when updating the deployment.
- Services:
  - A service is an abstraction over the pods. A service exposes a single machine name or IP address mapped to pods whose underlying names and numbers are unreliable. A service ensures that, to the outside network, everything appears to be unchanged.
  - Nodes:
     - A Kubernetes node manages and runs pods; it’s the machine (whether virtualized or physical) that performs the given work.

<br> </br>


![9ap3zyn](https://user-images.githubusercontent.com/86292184/130646431-f594992e-af32-4aef-a8e5-6cff82563983.jpg)


- Object
  - A Kubernetes object is a "record of intent" (once you create the object), the Kubernetes system will constantly work to ensure that object exists. By creating an object, you're effectively telling the Kubernetes system what you want your cluster's workload to look like; this is your cluster's desired state.
  <br> </br>

  - When you create an object in Kubernetes, you must provide the object spec that describes its desired state, as well as some basic information about the object (such as a name). 
  - Most often, you provide the information to kubectl in a .yaml file. kubectl converts the information to JSON when making the API request.
<br> </br>
- The port range for NodePort is 30000-32767
<br> </br>
- K8 self-heal
  - One of the great benefits of Kubernetes is its self-healing ability. If a containerized app or an application component goes down, Kubernetes will instantly redeploy it, matching the so-called desired state.
- -------------------------
### Nginx setup
- Create a yml deployment file and add:
```
# K8s works with API versions to declare the resources

apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment

spec:
  selector:
    matchLabels:
      app: nginx # look for this lable to match with k8s service

  replicas: 2

# template to use it's label for k8s to launch in the browser
  template:
    metadata:
      labels:
        app: nginx

# define the container specs
    spec:
      containers:
      - name: nginx
        image: nikinikiforidi/eng89_node_app
        ports:
        - containerPort: 80

```
- To run the yml file:	
	 - `kubectl apply -f NAME_OF_YOUR_FILE.yml`
<br> </br>
- -----------------------------------------
### nginx service set up
- create a yml service file and add:
```
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: "2021-08-23T11:07:26Z"
  name: nginx-deployment
  namespace: default
  resourceVersion: "40883"
  uid: 9190ab75-d61c-4ff4-a3d1-0d293fa8d72e

spec: 
  #clusterIP: 10.96.0.1 
  #clusterIPs:
  #-  10.96.0.1 
  #externalTrafficPolicy: Cluster
  #ipFamilies:
  #- IPv4
  #ipFamilyPolicy: SingleStack
  ports:
  - nodePort: 30442
    port: 80
    protocol: TCP
    targetPort: 80
  selector:
    app: nginx
  sessionAffinity: None
  type: LoadBalancer
status:
  loadBalancer:
    ingress:
      - hostname: localhost

```

- To run the yml file:	
	 - `kubectl apply -f NAME_OF_YOUR_FILE.yml`
<br> </br>
- -------------------------------

### MongoDB deployment setup
- For mongoDB deployment, create a yml file and add:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app.kubernetes.io/name: mongo
    app.kubernetes.io/component: backend
spec:
  selector:
    matchLabels:
      app.kubernetes.io/name: mongo
      app.kubernetes.io/component: backend
  replicas: 1
  template:
    metadata:
      labels:
        app.kubernetes.io/name: mongo
        app.kubernetes.io/component: backend
    spec:
      containers:
      - name: mongo
        image: mongo:4.2
        args:
          - --bind_ip
          - 0.0.0.0
        resources:
          requests:
            cpu: 100m
            memory: 100Mi
        ports:
        - containerPort: 27017

```

- To run the yml file:	
	 - `kubectl apply -f NAME_OF_YOUR_FILE.yml`

<br> </br>
- ---------------------------------------
### MongoDB services setup
- To deploy the mongoDB service, create another yml file
```

apiVersion: v1
kind: Service
metadata:
  name: mongo
  labels:
    app.kubernetes.io/name: mongo
    app.kubernetes.io/component: backend
spec:
  ports:
  - port: 27017
    targetPort: 27017
  selector:
    app.kubernetes.io/name: mongo
    app.kubernetes.io/component: backend
```


- To run the yml file:	
	 - `kubectl apply -f NAME_OF_YOUR_FILE.yml`
<br> </br>
- -------------------------------------
### Guestbook Fronend setup

- The the guestbook frontend deployment, create a yml file and add:
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: frontend
  labels:
    app.kubernetes.io/name: guestbook
    app.kubernetes.io/component: frontend
spec:
  selector:
    matchLabels:
      app.kubernetes.io/name: guestbook
      app.kubernetes.io/component: frontend
  replicas: 3
  template:
    metadata:
      labels:
        app.kubernetes.io/name: guestbook
        app.kubernetes.io/component: frontend
    spec:
      containers:
      - name: guestbook
        image: paulczar/gb-frontend:v5
        # image: gcr.io/google-samples/gb-frontend:v4
        resources:
          requests:
            cpu: 100m
            memory: 100Mi
        env:
        - name: GET_HOSTS_FROM
          value: dns
        ports:
        - containerPort: 80

```
- NOTE: Make sure you have no other containers running on port 80

- To run the yml file:	
	 - `kubectl apply -f NAME_OF_YOUR_FILE.yml`

<br> </br>
- ---------------------------------
### Crone jobs

- create a yml file and add
```
apiVersion: batch/v1
kind: CronJob
metadata:
  name: eng89
spec:
  schedule: "*/1 * * * *"
  jobTemplate:
    spec:
      template:
        spec:
          containers:
          - name: eng89
            image: busybox
            imagePullPolicy: IfNotPresent
            command:
            - /bin/sh
            - -c
            - date; echo thank you for using cronjob

          restartPolicy: OnFailure



```
<br> </br>
```
 Cron schedule syntax
      ┌────────────────── timezone (optional)
      |      ┌───────────── minute (0 - 59)
      |      │ ┌───────────── hour (0 - 23)
      |      │ │ ┌───────────── day of the month (1 - 31)
      |      │ │ │ ┌───────────── month (1 - 12)
      |      │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday;
      |      │ │ │ │ │                                   7 is also Sunday on some systems)
      |      │ │ │ │ │
      |      │ │ │ │ │
 CRON_TZ=UTC * * * * *
```

<br> </br>
- Create yml job file
`kubectl apply -f cron-job.yml`
`kubectl get cronjob``
`kubectl get job --watch`
- copy last name and paste on next command:
`pods=$(kubectl get pods --selector=job-name=eng89-27163575 --output=jsonpath={.items[*].metadata.name})
kubectl logs $pods`

- Make sure the` name=eng89-27163575` is changed accordingly to the last log
<br> </br>
- -----------------------------------------
### Auto-scalling HPA

```
  apiVersion: autoscaling/v1
kind: HorizontalPodAutoscaler

metadata:
  name: sparta-node-app
  namespace: default

spec:
  maxReplicas: 9
  minReplicas: 2
  # target your node-app-deployment so the 
  # hpa knows which deployment to scale up on demand, scale down when no longer
  scaleTargetRef:  
    apiVersion: app/v1
    kind: Deployment
    name: sparta-node-app
  targetCPUUtilizationPercentage: 50  
  
```
<br> </br>
- -----------------------------------
