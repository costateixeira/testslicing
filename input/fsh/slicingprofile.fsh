Profile:      MyOrganization
Parent:       Organization
Title:        "Test"
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open

* type contains facility 1..1
* type[facility] = #facility //(exactly)

* type 1..*

Instance: MyOrg1
InstanceOf: MyOrganization
Title:        "Test"
* type[+] =  #facility
* type[+] =  #other

* name = "Test"




Profile:      MyObservation
Parent:       Observation
Title:        "Test"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains systolicBP 1..1 MS and diastolicBP 1..1 MS
* component[systolicBP].code = http://loinc.org#8480-6 //(exactly)
* component[systolicBP].valueQuantity 1..
* component[diastolicBP].code = http://loinc.org#8462-4 //(exactly)
* component[diastolicBP].valueQuantity 1..

* component 2..*


Instance: MyObs1
InstanceOf: MyObservation
Title:        "Test"
* component[+].code =  http://loinc.org#8480-6
* component[=].valueQuantity.value =  93
* component[+].code =  http://loinc.org#8462-4
* component[=].valueQuantity.value =  123
* component[+].valueQuantity.value =  123
* component[=].code.text = "qwerty"

* status = #final
* code = #1232

