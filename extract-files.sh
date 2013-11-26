#!/bin/sh

# Call up to otter2-pvr
./extract-files-pvr.sh

# Call up to omap4-common
cd ../omap4-common
./extract-files.sh
