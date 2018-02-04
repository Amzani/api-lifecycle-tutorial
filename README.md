# API LifeCycle tutorial

## Requirements

- Unix/Linux Shell
- Docker
- Clone this repo

## Design

You have as business goal to build a killer video sharing app! that must be avalaible in all devices (Desktop, Mobile, AppTV...)

You've decided wisly to think [API First](https://adidas-group.gitbooks.io/api-guidelines/content/core-principles/api-first.html) and [API Design First](https://adidas-group.gitbooks.io/api-guidelines/content/core-principles/design-maturity.html).

### Step1. Let's describe what actions our API affords

- Retreive my videos
- Create a new video
- Update a specific video
- Get a specific video
- Share a video
- Delete a video

### Step2. Let's create our state machine diagram 
In this step we draw out a state diagrams for the proposed API. Each box in the diagram represents a possible representation. You can use arrows to indicate transitions from one box to the next.


![Video Model state diagram](https://raw.githubusercontent.com/Amzani/api-lifecycle-tutorial/master/img/State_Diagram.png)

This state machine diagram will help you to identify the main ressources and their relations.

## Step3. Formalize the design in the [Open API Specification](http://swagger.io/specification/)

Let's copy this swagger into Apiary
[Bad swagger](./swagger-bad.yml)

This API breaks some of [Adidas API Guidelines](https://www.gitbook.com/book/adidas-group/api-guidelines/details)

Try to fix it and make sure the OAS file passes all adidas API Apiary style guide checks.

The API style check may be also part of your developement workflow and your CI/CD pipeline.


1. Make sure you are a registered user of [Apiary](http://apiary.io/).
2. Retrieve API key (token) on [this page](https://login.apiary.io/tokens).
3. Export it as an environment variable:

```
export APIARY_API_KEY=<your_token>
```

4. Run the API Stylecheck
```
make api-stylecheck
```
Take a look at the [Makefile](./Makefile) to see how it's implemented.

The API Style check may be part of your CI/CD pipeline.

For example in Jenkins

```
#!groovy                                                           ``

@Library(['global-jenkins-library@master']) _

def agent = 'build && docker'
def version
def image = 'samz/apiarycli'
def apiName = 'playvideoapi'
def swaggerFile = 'swagger.yaml'
def httpProxy = "http://x.y.z.y:nnnn/"
def APIARY_API_KEY = envCredentials(APIARY_API_KEY)

node (agent) {
    stage('publishing the api contract') {
        checkout scm
        def workspace = pwd()
        #Fetch rules + functions here
        sh "docker run --rm -e http_proxy=${httpProxy} -e APIARY_API_KEY=${APIARY_API_KEY} -v ${workspace}:/mnt/workspace ${image} publish --api-name=${apiName} --add=/mnt/workspace/${swaggerFile}"
    }
}
```

[Good swagger](./swagger.yml) is example of an Open API Spec that follows and passes the [Adidas API Guidelines](https://www.gitbook.com/book/adidas-group/api-guidelines/details)





## Deploy & Test