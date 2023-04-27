install_vipr_template:
	sudo chmod -R 777 /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode
	cp -R ./Templates/VIPRTemplate.xctemplate "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/iOS/Source"
