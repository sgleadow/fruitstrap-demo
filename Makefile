install:
	FRUITSTRAP_CLI=1 xcodebuild -scheme fruitstrap-demo -sdk iphoneos build

clean:
	xcodebuild -scheme fruitstrap-demo -sdk iphoneos clean
	rm -rf apps/*
