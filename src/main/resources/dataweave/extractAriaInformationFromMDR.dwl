%output application/java
//TODO Need to add in CURRENCY and LEGALENT
//Then look up the MPI where the Qualifier has that Aria_Acct
%var ariaMPIFound = payload[?( $.IdentifierTypeKey == 'Aria_MPI' and $.EntityTypeKey == 'PROJ' )][0]
---
{
ariaAcct: null when (sizeOf (ariaMPIFound default [])) < 1 otherwise ariaMPIFound.Qualifier1Value,
ariaMPI: null when (sizeOf (ariaMPIFound default [])) < 1 otherwise ariaMPIFound.IdentifierValue
}