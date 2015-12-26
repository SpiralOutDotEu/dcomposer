# dcomposer
Composer in docker container

# Usage

Mount you folder and run
```
$ docker run -P -v </Your/Absolute/Path/To/laravel/folder>:/var/www spiralout/dcomposer <YourComposerCommand>
```
replacing `<YourComposerCommand>` with any composer command, like create, update, install.


Run to create a new project
```
$ docker run -P -v </Your/Absolute/Path/To/laravel/folder>:/var/www spiralout/dcomposer create-project laravel/laravel /var/www --prefer-dist' 
```
Run to add new packages
```
$ docker run -P -v </Your/Absolute/Path/To/laravel/folder>:/var/www spiralout/dcomposer update
```
