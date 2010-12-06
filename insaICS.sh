#!/bin/bash
#### insaICS.sh
## Process INSA-J.F. Petit's DOS ICS files, by converting them
## to a proper file format and summing up the events' descriptions
#### DEPENDENCIES
## see COMMANDS below

##################################################
# COMMANDS
WGET="wget -q"
BASENAME="basename"
SED="sed"
##################################################

#------------------------------------------------------------
# Show a success indication on standard error stream for local file $1.
function success ()
{
	echo "'$1' successfully processed." 1>&2
}
#------------------------------------------------------------
# Show an error on standard error stream for file $1.
# The error itself is described by $2.
function error ()
{
	echo "Couldn't process '$1' : $2." 1>&2
}
#------------------------------------------------------------

# Defines wwwSources array, repoPath constant
source config.sh

# Process each single file
for wwwSource in ${wwwSources[@]}
do
	file=$($BASENAME "$wwwSource")
	# Download the file
	if $WGET "$wwwSource" -O "$tmpPath/$file"
	then
		# Clean the file
		if $SED -f "$sedICSCleaningScriptPath" "$tmpPath/$file" > "$repoPath/$file"
		then
			success "$repoPath/$file"
		else
			error "$tmpPath/$file" "cleaning failed"
		fi
	else
		error "$wwwSource" "download failed"
	fi 
done

