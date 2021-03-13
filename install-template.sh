red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

app_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application
if [ ! -d "$app_dir" ]
	echo "Preparing to update new version of template..."
then
	mkdir -p "$app_dir"
    echo "Creating new version of template..."
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

# Move to Boardy -> Remove this template
# cp -R Templates/TestableViewController.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

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

# Remove this template
# cp -R Templates/InOutAdapter.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL VIP
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/VIP.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating VIP template exists..."
fi

cp -R Templates/VIP.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL VaIP
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/VaIP.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating VaIP template exists..."
fi

cp -R Templates/VaIP.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL BoardComponent
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/ComponentB.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating ComponentB template exists..."
fi

cp -R Templates/ComponentB.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL VIP-IDM
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/VIP-IDM.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating VIP-IDM template exists..."
fi

cp -R Templates/VIP-IDM.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# INSTALL VaIP-IDM
##############################################################################################

temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/VaIP-IDM.xctemplate
if [ -d "$temp_dir" ] 
then
	rm -rf "$temp_dir"
	echo "Updating VaIP-IDM template exists..."
fi

cp -R Templates/VaIP-IDM.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

##############################################################################################
# DONE
##############################################################################################

echo "${green}Installed xctemplate successfully${reset}"
