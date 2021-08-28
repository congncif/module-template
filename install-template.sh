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

function remove_template() {
	local name=$1
	local temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/$name.xctemplate
	rm -rf "$temp_dir"
}

function update_template() {
	local name=$1
	local temp_dir=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application/$name.xctemplate

	if [ -d "$temp_dir" ]; then
		echo "🌷 Updated $name template"
	else
		echo "🌹 Added $name template"
	fi

	remove_template $name

	cp -R Templates/$name.xctemplate ~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application
}

##############################################################################################
# INSTALL
##############################################################################################

# update_template IDMCore
# update_template ModuleX

# update_template VIP
# update_template VaIP
# update_template ComponentB
# update_template VIP-IDM
# update_template VaIP-IDM

# Remove legacy templates

remove_template IDMCore
remove_template ModuleX

remove_template VIP
remove_template VaIP
remove_template ComponentB
remove_template VIP-IDM
remove_template VaIP-IDM

remove_template FlowBoard

# Install templates

update_template Boardy
update_template TaskBoard
update_template EmptyBoard
update_template BlockTaskBoard
update_template BarrierBoard

update_template IOInterface
update_template ModuleIntegration

##############################################################################################
# DONE
##############################################################################################

echo "${green}Installed xctemplate successfully${reset}"
