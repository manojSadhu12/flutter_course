# Dart and FLutter installation

Follow this doc for dart and flutter installation and setup
https://docs.flutter.dev/get-started/install

## Android Studio setup and project creation
Download android studio from https://developer.android.com/studio

1) Open the executable
![Android studio installation](../images/384879604e371377fd1ff571d23cf72b0c6ceebc863a68ab263a8004f0b05f24.png)  

Select standard and proceed.

2) Click on finish
![Android SDK installation](../images/5f3e7855b6c3ef2f1e3187b8e2e526ef30ad33e71cbecc7a078fb19430452245.png)  

This will download all the required sdks, build tool and emulator.

3) Open settings and install **Android SDK Command-line Tools**
    
    ***`Setting > Plugins`***
![Android SDK Command-line Tools installation](../images/a1eb98d79c56cb309a8e1e9af87673f9dac40bfe37178217167708d0b99cf3bb.png)  


4) Install flutter and dart plugins.

    ***`Setting > System Settings > Android SDK > SDK Tools`***
![Install flutter and dart plugins](../images/f888ab4984c6295ddd1c4bbd0b356894e526c3b59ab831d192c85d750ad6b55b.png)  

5) Creating flutter project
   
    ***`Home screen > New Flutter Project`***
![Flutter project creation](../images/d82069d9d3191403e6338051476eeedf8695f703364ea668835c867f04b8b1a1.png "Flutter project creation")  
and follow the project creation steps.

> On MacOS [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12) and [coco-pods](https://guides.cocoapods.org/using/getting-started.html#installation) installation is also required to build ios apps 


Run flutter doctor command to see if anything is missing.

``` bash
$ flutter doctor
```

