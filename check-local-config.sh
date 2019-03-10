#check if local hostname file is available
filename="/etc/configuration/host.config"

if [ -e "/etc/configuration" ]; then

	if [ -e $filename ]; then
		echo "Local hostname file configuration exists"
	else
		echo "Need to clone hostname configuration file"
		echo "Installing needed software"
		sh "/etc/boot-script/install-utils-clone.sh"
	fi
else
	sudo mkdir "/etc/configuration"
	sh "/etc/boot-script/install-utils-clone.sh"
fi
