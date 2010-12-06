#!/bin/bash
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

