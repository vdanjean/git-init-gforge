
declare_forge \
  --hostname shell.forge.imag.fr \
  --desc "Forge IMAG" \
  --prio 30 \
  --projectsgitroot /scmrepos/git \
  --install-hooks imag_install_hooks

imag_install_hooks() {
	echo "WARNING: This forge misses some basic binaries (mkdir, ...)"
	echo "WARNING: adding /home/users/vdanjean/bin in remote PATH"
	echo "WARNING: adding /home/users/vdanjean/lib in remote LD_LIBRARY_PATH"
	echo 
	SSH_CMD=( "${SSH_CMD[@]}" 'PATH="$HOME/bin:$PATH"' 'LD_LIBRARY_PATH="$HOME/lib"' )
	# la forge imag ne contient pas les templates de git :-(
	CREATE_LOCAL=1
}

