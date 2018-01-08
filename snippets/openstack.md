# Openstack

Delete stuck volume

    cinder reset-state --state available $VOLUME_ID
    cinder delete $VOLUME_ID
