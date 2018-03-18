# A website of Kulikov Dmitry - garfik.github.io

## Introduction
Greetings! It's a personal website working as my CV, so, this information only for me. 
Of course, if you want to create your own website as this, then you can used as an example

## How it works?
I've never used a docker before this moment, so here we are. 
I think that every project shouldn't pollute a global environment, that's why I choosed a docker.
In this case we have a docker container that will install all necessary dependencies for project (it's all about `black hole` folder called node_modules) inside a container. Also, every command for this project should be run inside this container. In this case a host system would be clean and in safety and if something is going wrong then we can just rebuild a container or write `git clean -fxd`. Sometimes I need to work on MacOs, Windows and even a linux, so it's very important to have a chance to work in all this environment.
Sounds good? Let's try to do this!

## How to start working
1. First of all we need to install a docker and docker-compose
2. Then we need make sure then folder doesn't have a node_modules folder
3. Run `docker-compose up`
4. Wait a moment and then you will get a web server on http://localhost:1234/
5. Let's make some changes in `src/index.html` and `hot reload system` will recompile the project
6. That's it!

## How to deploy
As we talk about github pages, then everything that we need is to compile a html and push it to master branch
1. Run `docker-compose run --rm node npm run build`
2. After a few seconds your old compiled code from root directory will be deleted and new code will be generated
3. `git add .`
4. `git commit -m 'Some ideas about your changes'`
5. `git push`
6. That's it!

## Some hints
I like an aliases, so I added an alias `alias dcr="docker-compose run --rm"` to my .bash_profile file and I can build application with command `dcr node npm run build`.

