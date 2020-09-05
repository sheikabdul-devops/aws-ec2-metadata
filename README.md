# aws-ec2-metadata

This is bash shell script it works for linux OS servers only 

Example:

./ec2-instance-metadata.sh -h 

-h                    To Display Help
-all                  Show all metadata information for this host (also default).
-ami-id               The AMI ID used to launch this instance
-ami-launch-index     The index of this instance in the reservation (per AMI).
-ami-manifest-path    The manifest path of the AMI with which the instance was launched.
-ancestor-ami-ids     The AMI IDs of any instances that were rebundled to create this AMI.
-block-device-mapping Defines native device names to use when exposing virtual devices.
-instance-id          The ID of this instance
-instance-type        The type of instance to launch. For more information, see Instance Types.
-local-hostname       The local hostname of the instance.
-local-ipv4           Public IP address if launched with direct addressing
-kernel-id            The ID of the kernel launched with this instance, if applicable.
-availability-zone    The availability zone in which the instance launched. Same as placement
-product-codes        Product codes associated with this instance.
-public-hostname      The public hostname of the instance.
-public-ipv4          NATted public IP Address
-public-keys          Public keys. Only available if supplied at instance launch time
-ramdisk-id           The ID of the RAM disk launched with this instance, if applicable.
-reservation-id       ID of the reservation.
-security-groups      Names of the security groups the instance is launched in.
-user-data            User-supplied data.Only available if supplied at instance launch time.
