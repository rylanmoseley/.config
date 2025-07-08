#!/bin/bash

chmod +x ./updatelists.hook
sudo cp ./updatelists.hook /usr/share/libalpm/hooks/
echo "installed hook"
