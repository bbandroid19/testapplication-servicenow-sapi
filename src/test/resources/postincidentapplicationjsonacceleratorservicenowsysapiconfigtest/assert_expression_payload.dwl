%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "message": "Incident Created Successfully",
  "sysId": "5661ba502f8f20109435ffecf699b6f5",
  "number": "INC0010087"
})