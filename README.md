# react-website

This is an website implemented in React.

## Features

## GitHub Packages

### Build

Run workflow at https://github.com/marykuo/react-website/actions/workflows/build-and-publish-image.yml

### Run Image

```shell
docker run -d -p 3000:3000 ghcr.io/marykuo/react-website:main
```

## Local

### Setup and Run App

setup local environment:

```shell
npm install
```

run app:

```shell
npm start
```

### Build and Run Image at Local

run command at root of project:

```shell
docker build -t react-website .
docker run -d -p 3000:3000 react-website
```