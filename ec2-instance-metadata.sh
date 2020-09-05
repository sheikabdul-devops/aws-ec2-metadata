#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help()
{
 # Display Help
 echo "-all                  Show all metadata information for this host (also default)."
 echo "-ami-id               The AMI ID used to launch this instance"
 echo "-ami-launch-index     The index of this instance in the reservation (per AMI)."
 echo "-ami-manifest-path    The manifest path of the AMI with which the instance was launched."
 echo "-ancestor-ami-ids     The AMI IDs of any instances that were rebundled to create this AMI."
 echo "-block-device-mapping Defines native device names to use when exposing virtual devices."
 echo "-instance-id          The ID of this instance"
 echo "-instance-type        The type of instance to launch. For more information, see Instance Types."
 echo "-local-hostname       The local hostname of the instance."
 echo "-local-ipv4           Public IP address if launched with direct addressing"
 echo "-kernel-id            The ID of the kernel launched with this instance, if applicable."
 echo "-availability-zone    The availability zone in which the instance launched. Same as placement"
 echo "-product-codes        Product codes associated with this instance."
 echo "-public-hostname      The public hostname of the instance."
 echo "-public-ipv4          NATted public IP Address"
 echo "-public-keys          Public keys. Only available if supplied at instance launch time"
 echo "-ramdisk-id           The ID of the RAM disk launched with this instance, if applicable."
 echo "-reservation-id       ID of the reservation."
 echo "-security-groups      Names of the security groups the instance is launched in."
 echo "-user-data            User-supplied data.Only available if supplied at instance launch time."


}



################################################################################


while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

###################################################################################


if [ $1 == '-all' ]
then
  ec2-metadata -$1 > a.txt
else
  ec2-metadata -$1 > a.txt
fi

printf '['
while IFS=':' read -r key value
do
    printf '{"%s":"%s"},' "$key" "$value"
done < a.txt | sed 's/.$//'
printf ']'

rm -r a.txt
