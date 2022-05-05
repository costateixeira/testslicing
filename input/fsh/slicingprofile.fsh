Profile:      MyOrganization
Parent:       Organization

* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open

* type contains facility 1..1
* type[facility] = #facility (exactly)

* type 1..

Instance: MyOrg1
InstanceOf: MyOrganization

* type[+] =  #facility
* type[+] =  #facility2
