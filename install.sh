install() {
	printf "\e[33m[~] Downloading script...\e[0m\n"

	curl -L#o /var/tmp/gg https://raw.githubusercontent.com/qw3rtman/gg/master/bin/gg

	printf "\n\e[33m[~] Setting permissions...\e[0m\n"

	chmod -v +x /var/tmp/gg

	echo

	printf "\e[33m[~] Moving to \$PATH...\e[0m\n"

	sudo mv -fv /var/tmp/gg /usr/local/bin/gg

	echo

	version=($(gg -V))
	printf "\e[32m[✔] Successfully installed Git Goodies v${version[3]}\e[32m!\n"
}

install
