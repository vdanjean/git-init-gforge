
declare_forge \
  --hostname shell.forge.imag.fr \
  --desc "Forge IMAG" \
  --prio 30 \
  --projectsgitroot /scmrepos/git \
  --install-hooks imag_install_hooks

imag_install_hooks() {
	local prefix=/home/users/vdanjean
	local bindir="$prefix/bin"
	local libdir="$prefix/lib"
	echo "WARNING: This forge misses some basic binaries (mkdir, ...)"
	echo "WARNING: adding $bindir in remote PATH"
	echo "WARNING: adding $libdir in remote LD_LIBRARY_PATH"
	echo 
	SSH_CMD=( "${SSH_CMD[@]}" "$bindir/env" 'PATH="'"$bindir"':$PATH"' 'LD_LIBRARY_PATH="'"$libdir"'"' )
	# la forge imag ne contient pas les templates de git :-(
	CREATE_LOCAL=1
}

