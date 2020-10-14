# ECE444-F2020-Lab4
### This repository is for completing ECE444 Lab4
### This repository is a clone of https://github.com/miguelgrinberg/flasky

#
## Running App with Docker !
You can either build/run the application direcly using docker-compose or using regular docker commands. In the main repository folder there are two docker-related files: Dockerfile and docker-compose.yml. The Dockerfile specifies the details/commands to build and run your image, while the docker-compose.yml file is used to specify configurations like your ports. Docker-compose is not necessary, but it is good practice for standardized docker deployments. 
#
### A Note about Docker on Windows:
If you are using windows you will have to install DockerToolbox, OracleVM VirtualBox and use the Docker QuickStart terminal. Originally, nothing will be assigned localhost and your application will be hosted to your docker-machine default ip, which you can find by running: `docker-machine ip default`. This is the address where your specified port will be listening from/to. Typically the default ip value is 192.168.99.100. To use your regular local host, you can adjust the settings in your VirtualBox application under Settings>Network>Adapter 1>Advanced>Port Forwarding by adding a new rule specifying HostPort as 5000 and GuestPort as 5000.  
#
### Using Docker-Compose:
In your terminal, execute: `docker-compose build ` to build the app.

Once built successfully, execute: `docker-compose up` to run the application

![docker-compose](https://user-images.githubusercontent.com/43483228/96031282-2742bd80-0e2b-11eb-998e-9af47519a5df.JPG)

#
### Using Docker on its own:
In your terminal, execute: ` docker build -t <app_name>` to build your image. 

Then to run, execute: ` docker run -p 5000:5000 <app_name>`. 

![docker-run](https://user-images.githubusercontent.com/43483228/96031283-2742bd80-0e2b-11eb-93e8-38854af12ef2.JPG)
#
run: `docker image ls` to see all your images.

In the screenshot below the first image was created using regular docker commands, and the second image was created using docker-compose
![docker-images](https://user-images.githubusercontent.com/43483228/96034210-2e6bca80-0e2f-11eb-9645-8a120909ab79.JPG)

#
run: `docker ps -a` to see all your containers.

In the screenshot below the first container was created using regular docker commands, and the second container was created using docker-compose
![docker-containers](https://user-images.githubusercontent.com/43483228/96032291-763d2280-0e2c-11eb-98fc-17c8bfec6d68.JPG)

# 

## Differences between Docker and Virtual Machine:
Docker employs containers which exist just as any other application, in the user space of our operating system. It's main difference from other applications is that the processes that run in a container are isolated from the rest of the system. Docker containers still shares your local host kernal, whereas, virtual machines exist as part of the user speace and kernel space, running an entire operating system. A virtual machine acts similar to a separate computer with its own virtualized hardware and OS. This makes docker a more light-weight and portable alternative that allows you to test applications in isolation without the additional overhead of managing your OS or hardware resources. 


