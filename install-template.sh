red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

app_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application
if [ ! -d "$app_dir" ]
	rm -rf "$app_dir" 
	mkdir -p "$app_dir"
	echo "Preparing to update new version of IDM template..."
then
	mkdir -p "$app_dir"
    echo "Creating new version of IDM template..."
fi
temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/IDM\ Foundation.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Removed deprecated version of IDM xctemplate"
fi



temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/Module.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating Module template exists..."
fi

# cp -R Templates/Module.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application



temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/IDMCore.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating Flow template exists..."
fi

cp -R Templates/IDMCore.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application



temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/Dependency\ Bridge.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating Dependency Bridge template exists..."
fi

# cp -R Templates/Dependency\ Bridge.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application



temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/Segue\ Router.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating Segue Router template exists..."
fi

# cp -R Templates/Segue\ Router.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application



temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/ModuleX.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating ModuleX template exists..."
fi

cp -R Templates/ModuleX.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application



echo "${green}Installed IDM-Foundation.xctemplate successfully${reset}"