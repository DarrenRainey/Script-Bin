#!/bin/bash
# NOTE: Clearing PageCache Only is usally fine but you can uncomment one of the other lines if you need to clear other stuff
# Clear PageCache, dentries andd inodes is not recommened on running production systems and generally cleaaring PageCache is enought.

# Clear PageCache only.
sudo sh -c "sync; echo 1 > /proc/sys/vm/drop_caches"

# Clear dentries and inodes.
#sudo sh -c "sync; echo 2 > /proc/sys/vm/drop_caches"

#Clear PageCache, dentries and inodes.
#sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
