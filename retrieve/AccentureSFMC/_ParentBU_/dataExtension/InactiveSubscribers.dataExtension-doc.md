## InactiveSubscribers

**Name** (not equal to External Key)**:** Inactive Subscribers

**Description:** This suppression list is by using SSJS

**Folder:** Auto-Suppression Configuration/

**Fields in table:** 2

**Sendable:** Yes (`Email Address` to `_EmailAddress`)

**Testable:** No

**Template:** CONTEXTUAL_SUPPRESSION_LISTS

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| Email Address | EmailAddress | 254 | + | - |  |
| Date Added | Date |  | - | - | GETDATE() |
