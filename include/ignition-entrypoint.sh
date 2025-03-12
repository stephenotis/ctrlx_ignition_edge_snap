#! /bin/sh -e

## run a delay to ensure that active-solution is connected
while ! snapctl is-connected active-solution
do
    sleep 5
done

#check for the configuration file in the active solution directory
#set appdata directory
if [ ! -d $SNAP_COMMON/solutions/activeConfiguration/ignition ]; then
    mkdir $SNAP_COMMON/solutions/activeConfiguration/ignition
    cp $SNAP_DATA/data/ignition.conf $SNAP_COMMON/solutions/activeConfiguration/ignition
fi

#execute the ignition script
echo "Ignition Entrypoint complete, now running main script"
exec $SNAP/ignition.sh