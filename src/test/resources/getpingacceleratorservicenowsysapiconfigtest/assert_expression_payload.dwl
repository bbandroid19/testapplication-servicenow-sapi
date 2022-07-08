%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "status": "OK",
  "apiName": "Accelerator ServiceNow System API",
  "apiVersion": "1.5.0"
})