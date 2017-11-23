%dw 1.0
%output application/java
%function convertDate (aDate) aDate as :datetime as :string {format: "YYYY-MM-dd"}
---
  {
  	// this is for the Canonical Data Model 
  	// so from this point on, the field names are fixed
  	// regardless changes in fieldnames in DSO Response
    "megabytesAdded": payload.megabytesAdded,
    "totalHostedPages": payload.totalHostedPages,
    "totalHostedMB": payload.totalHostedMB,
    "billingType": payload.billingType,
    "pagesAdded": payload.pagesAdded,
    "recordDate": convertDate(payload.recordDate),
    "projectId": payload.projectId,
    "transactionDate": convertDate(payload.periodStart) ,
    "periodEnd": convertDate(payload.periodEnd)
  }