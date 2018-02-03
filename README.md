# API LifeCycle tutorial

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

[Swagger.yml](./swagger.yml)

## Deploy & Test