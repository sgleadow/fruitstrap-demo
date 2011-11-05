Fruitstrap Demo
---------------

A demo application for using
[fruitstrap](https://github.com/ghughes/fruitstrap) to install your iOS
application on an actual device from the command line.

See [my blog
post](http://sgleadow.github.com/blog/2011/11/05/installing-ios-apps-on-the-device-from-the-command-line/)
for more details.

Try it out
----------

Install fruitstrap:

```
git clone git://github.com/ghughes/fruitstrap.git
cd fruitstrap
make fruitstrap
```

Then add fruitstrap to your path somewhere. Get this fruitstrap demo and try
it out (plug in your iOS device).

```
git clone git://github.com/sgleadow/fruitstrap-demo.git
cd fruitstrap-demo
FRUITSTRAP_CLI=1 xcodebuild -scheme fruitstrap-demo -sdk iphoneos build
```


