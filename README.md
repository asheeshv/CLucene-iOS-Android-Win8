CLucene-iOS-Android-Win8
========================

This repo contains the CLucene implementation, ported and compiled on iOS, Android, and Windows-8/Windows RT.
The source for this project has been obtained from the link: http://clucene.sourceforge.net/
The CLucene version this is used is v2.3.3.4, that corresponds to the Java Lucene version (v2.3)
This is not the latest version, but is pretty much sufficient for all use-cases. 
The repo is a port on iOS, Android, and Windows-8. The need for this arose, as I had to use CLucene in one of 
my applications that is intended across all three platforms. I had some initial difficulty dealing with it, but 
then eventually managed to successfully integrate it. Sharing the same on GitHub in the hope that others may also
need this at some point in time of their app development on these platforms, so this would serve as a ready-to-use
resource for quick integration and consumption.

The folder structure is divided into

Android -- containing makefiles for Android NDK build system
iOS --- containing XCode project file

//TODO:
The Win-8 visual studio solution file still needs to be added. I plan to do it later this week.


Folks are invited to use it and post any suggestions, changes or improvements to the existing structure.

LICENSE:
=============
Apache/LGPL licensed (which is what the CLucene library is licensed with as well)
