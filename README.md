# Deals Data Warehouse

### Description:
This project represents the data warehouse for every deal was done on this project. \
It has been built and developed with a MySQL database and Spring boot. and deployed on a docker image. 
---
**NOTE**
The test cases was build on MySQL database, first you need to create a MySQL database schema before building and running the application.
---
### Install and run:
As mentioned, this project was built on MySQL database and running on a docker image, so the  following steps are the steps to run the application:

- Navigate to https://github.com/NabilKabha91/deals.git directory and run the command to build up the project with maven:
```
./mvnw clean install
```
- Install docker on your machine, then run the following command:
```
 docker-compose build
 docker-compose up
```
The '** docker-compose build**' command is  to build the docker image for this project, and '** docker-compose up**' to run it.

- Once the application is running, open your browser on http://localhost:8081 and you will get something like this:
- Now, you can add, view a deal, and view all deals that have been submitted sorted by their creation time.
---
### Author:
Nabil Kabha 
Software Engineer 
nabil-kabha-91@hotmail.com 