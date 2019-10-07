# Running mule as single app

In this case, you will use one mule app by mule server. You don't want to have several mule apps inside one server like ancestral architectures.


## Requirements

- Cloned git repository with mule esb source code
- Dockerfile and .dockerignore files from **mule-esb-ce-single-app** folder

## Build

So, in order to run just the mule esb server follow these steps:

## Step 1

Compile app with maven or AnypointStudio.

## Step 2

Paste Dockerfile and .dockerignore files from **mule-esb-ce-single-app** folder to your source code repository.

## Step 3

Build your image with some funny name (e.g rufus_image)

```
docker build --rm -t rufus_image:1.0.0 .
```

# Run

Just this

```
docker run -d --name rufus_app rufus_image:1.0.0
```

Or if your app needs a port (e.g 6666)

```
docker run -d --name rufus_app \
-p 6666:8081 \
rufus_image:1.0.0
```
