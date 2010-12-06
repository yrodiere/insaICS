#!/bin/bash
# This program is free software. It comes without any warranty, to
# the extent permitted by applicable law. You can redistribute it
# and/or modify it under the terms of the Do What The Fuck You Want
# To Public License, Version 2, as published by Sam Hocevar. See
# http://sam.zoy.org/wtfpl/COPYING for more details.
#
#### config.sh
## Configures the insaICS.sh process

# WWW source files
wwwRepo="http://intranet-if.insa-lyon.fr/temps"
wwwSources=("$wwwRepo/4IF1.ics" "$wwwRepo/4IF2.ics" "$wwwRepo/4IF3.ics" "$wwwRepo/4IF4.ics" "$wwwRepo/3IF1.ics" "$wwwRepo/3IF2.ics" "$wwwRepo/3IF3.ics" "$wwwRepo/3IF4.ics") 

# Path where files will be downloaded. Theses files are to be deleted.
tmpPath=/tmp

# SED script to summarize informations in the processed file
sedICSCleaningScriptPath=sedScript

# Path where processed files are to be stored.
repoPath=/home/fenrhil/tmp

