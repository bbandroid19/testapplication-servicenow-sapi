%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "message": "Incident Created Successfully",
  "sysId": "304c9b982fcf20109435ffecf699b65e",
  "number": "INC0010093"
})