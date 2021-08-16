red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

##############################################################################################
# SETUP DIR
##############################################################################################

app_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application
if
	[ ! -d "$app_dir" ]
	echo "Preparing to update new version of template..."
then
	mkdir -p "$app_dir"
	echo "Creating new version of template..."
fi

##############################################################################################
# FUNCTIONS
##############################################################################################

function update_template() {
	local name=$1
	local temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/$name.xctemplate

	if [ -d "$temp_dir" ]; then
		rm -rf "$temp_dir"
		echo "🌷 Updated $name template"
	else
		echo "🌹 Added $name template"
	fi

	cp -R Templates/$name.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application
}

##############################################################################################
# INSTALL
##############################################################################################

update_template IDMCore

update_template ModuleX

update_template Boardy

update_template VIP

update_template VaIP

update_template ComponentB

update_template VIP-IDM

update_template VaIP-IDM

update_template IOInterface

update_template ModuleIntegration

update_template TaskBoard

update_template FlowBoard

##############################################################################################
# DONE
##############################################################################################

echo "${green}Installed xctemplate successfully${reset}"
