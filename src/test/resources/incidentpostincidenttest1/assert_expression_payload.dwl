%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "message": "Incident Created Successfully",
  "sysId": "2b95f2142f8f20109435ffecf699b69f",
  "number": "INC0010090"
})