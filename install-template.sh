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

##############################################################################################
# INSTALL IDMCore
##############################################################################################


temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/IDMCore.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating Flow template exists..."
fi

cp -R Templates/IDMCore.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application


##############################################################################################
# INSTALL MODULE X
##############################################################################################


temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/ModuleX.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating ModuleX template exists..."
fi

cp -R Templates/ModuleX.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL TESTABLE VIEW CONTROLLER
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/TestableViewController.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating TestableViewController template exists..."
fi

cp -R Templates/TestableViewController.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL BOARDY
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/Boardy.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating Boardy template exists..."
fi

cp -R Templates/Boardy.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL ADAPTER
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/InOutAdapter.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating InOutAdapter template exists..."
fi

cp -R Templates/InOutAdapter.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application


echo "${green}Installed xctemplate successfully${reset}"
