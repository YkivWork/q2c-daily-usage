%dw 1.0
%output application/java
%type mbformat = :string { format: "##.####"} 
%var MBCONVERSION=1048576 
%var GBCONVERSION=1073741824 
---
{
  billingType: payload.billingType, 
  pagesAdded: payload.pagesAdded, 
  megabytesAdded: ((payload.megabytesAdded as :number) / MBCONVERSION) as :mbformat, 
  gigabytesAdded: ((payload.megabytesAdded as :number) / GBCONVERSION) as :mbformat, 
  totalHostedPages: payload.totalHostedPages, 
  totalHostedMB: ((payload.totalHostedMB as :number) / MBCONVERSION) as :mbformat, 
  totalHostedGB: ((payload.totalHostedMB as :number) / GBCONVERSION) as :mbformat, 
  projectId: payload.projectId, 
  recordDate: payload.recordDate,
  periodStart: payload.periodStart }