## HardBounce_SL

**Name** (not equal to External Key)**:** HardBounceSL

**Description:** This Supression list is for hard bounces

**Folder:** Auto-Suppression Configuration/

**Fields in table:** 5

**Sendable:** Yes (`Email Address` to `_EmailAddress`)

**Testable:** No

**Template:** CONTEXTUAL_SUPPRESSION_LISTS

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| Email Address | EmailAddress | 254 | + | - |  |
| Date Added | Date |  | - | - | GETDATE() |
| SubscriberKey | Text | 250 | - | - |  |
| JobID | Number |  | - | + |  |
| BounceCategory | Text | 50 | - | + |  |
