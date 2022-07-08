%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "message": "Incident Created Successfully",
  "sysId": "5604f2d02f8f20109435ffecf699b6d5",
  "number": "INC0010088"
})