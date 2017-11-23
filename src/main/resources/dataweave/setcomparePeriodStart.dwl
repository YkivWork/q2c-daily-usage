%dw 1.0
%output application/java
%function dateOnly(value) value[0 .. 9]
---
dateOnly(flowVars.dsoRecord.periodStart)
