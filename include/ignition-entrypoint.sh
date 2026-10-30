#! /bin/sh -e

## run a delay to ensure that active-solution is connected
while ! snapctl is-connected active-solution
do
    sleep 5
done

#check for the configuration file in the active solution directory
#set appdata directory if doesn't exist
if [ ! -d $SNAP_COMMON/solutions/activeConfiguration/ignition ]; then
    mkdir $SNAP_COMMON/solutions/activeConfiguration/ignition
fi
if [ ! -f $SNAP_COMMON/solutions/activeConfiguration/ignition/ignition.conf ]; then
    cp $SNAP_DATA/data/ignition.conf $SNAP_COMMON/solutions/activeConfiguration/ignition
fi
#on startup, take configuration from app data area
cp $SNAP_COMMON/solutions/activeConfiguration/ignition/ignition.conf $SNAP_DATA/data

#set environment variables to run on the CtrlX OS
export ACCEPT_IGNITION_EULA="Y"
export IGNITION_EDITION="edge"
export DISABLE_QUICKSTART="true"
export GATEWAY_HTTP_PORT="9088"
export GATEWAY_HTTPS_PORT="9443"
export GATEWAY_GAN_PORT="9060"
export GATEWAY_ADMIN_USERNAME="boschrexroth"
export GATEWAY_ADMIN_PASSWORD="boschrexroth"

#execute the ignition script
echo "Ignition Entrypoint complete, now running main script"
exec $SNAP/ignition.sh console