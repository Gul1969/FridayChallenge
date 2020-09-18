#! /bin/bash

sudo addgroup helpers
# create group

sudo adduser gul
# create user

sudo usermod -aG helpers gul
# add user to group

touch run.sh
# create .sh file

echo "#! /bin/bash" >> run.sh
# add shebang to run.sh

echo echo "Only helpers can execute run.sh" >> run.sh
# tell run.sh to print a message

chmod 774 run.sh
#gives rwx to user and group only

sudo chgrp -R helpers run.sh
#change ownership to new group

su -c "./run.sh" -m "helpers"
# switch to new user

exit

./run.sh
# new user executes run.sh




