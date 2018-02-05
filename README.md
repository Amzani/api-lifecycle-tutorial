# API LifeCycle tutorial

## Requirements

- Unix/Linux Shell
- Docker
- Clone this repo
- Clone this [repo](https://tools.adidas-group.com/bitbucket/users/amzansam/repos/demo-video-api/) (internal)

## Design

You have as business goal to build a killer video sharing app! that must be cross-devices (Desktop, Mobile, AppTV...)

You've decided wisly to think [API First](https://adidas-group.gitbooks.io/api-guidelines/content/core-principles/api-first.html) and [API Design First](https://adidas-group.gitbooks.io/api-guidelines/content/core-principles/design-maturity.html).

### Step1. Let's describe what actions our API affords

- Retreive my videos
- Create a new video
- Update a specific video
- Get a specific video
- Share a video
- Delete a video

### Step2. Let's create our state machine diagram

Task
```
Create a state machine diagram
```

In this step we draw out a state diagrams for the proposed API. Each box in the diagram represents a possible representation. You can use arrows to indicate transitions from one box to the next.

![Video Model state diagram](https://raw.githubusercontent.com/Amzani/api-lifecycle-tutorial/master/img/State_Diagram.png)

This state machine diagram will help you to identify the main ressources and their relations.

## Step3. Formalize the design in the [Open API Specification](http://swagger.io/specification/)

Task 
```
Write an open api specification
```

> The OAS file can be edited in whatever tool you like *BUT NOT GENERATED FROM YOUR CODE*, the most important thing is that the aprouved one (the contract) *MUST* be in Apiary.

Let's copy this swagger into Apiary
[Bad swagger](./swagger-bad.yml)

This API breaks some of [Adidas API Guidelines](https://www.gitbook.com/book/adidas-group/api-guidelines/details)

Try to fix it and make sure the OAS file passes all adidas API Apiary style guide checks.


## Step4. Verify the design using Apiary Documentation and Apiary Mock Service

Task
```
Try the Apiary mock service
```

## Step5. Review the API Design

At this stage you:

- Ask feedback from your API users by sending to them the documentation link.
- Ask feedback from your product owner
- Ask feedback from the API Evangelists (if needed :))

Ask feedback from your Grandma, if your API looks like this remote control then your design is affordant and consistent.

![Grandma Remote control](https://raw.githubusercontent.com/Amzani/api-lifecycle-tutorial/master/img/remote.webp)


[Good swagger](./swagger.yml) is example of an Open API Spec that follows and passes the [Adidas API Guidelines](https://www.gitbook.com/book/adidas-group/api-guidelines/details)


## Step5. Set up a CD pipeline to push OAS file from VCS to Apiary 

Task
```
Set up a CD pipeline to sync OAS file to Apiary
```

[Documentation here](https://tools.adidas-group.com/confluence/display/EA/%5BAPI+Design%5D+Set+up+the+CD+pipeline) (internal link)

## Develop the API

### Dev workflow

1. Clone this [repo](https://tools.adidas-group.com/bitbucket/users/amzansam/repos/demo-video-api/) (internal)
2. Test with dredd
3. Add This endpoint to your OAS file
```
  /foo:
    x-summary: Foo

    get:
      summary: The FOO action
      description: Retrieve the Foo

      responses:
        200:
          description: Foo
          type: string
```
4. Run dredd again

### Test with postman

1. Import the OAS file into postman
2. Run the demo video api app (npm start)
2. Test the API with postman

## Deploy the API

Mashery demo

## Publish

Dev portal


## Analyze

- Kibana
- Runscope





