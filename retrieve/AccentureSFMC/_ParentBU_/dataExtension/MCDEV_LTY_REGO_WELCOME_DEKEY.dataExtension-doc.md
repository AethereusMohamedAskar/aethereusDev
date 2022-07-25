## MCDEV_LTY_REGO_WELCOME_DEKEY

**Name** (not equal to External Key)**:** MCDEV-Loyalty_Registration_Welcome_

**Description:** n/a

**Folder:** Data Extensions/Practice - Kanika/

**Fields in table:** 6

**Sendable:** Yes (`SubscriberKey` to `Subscriber Key`)

**Testable:** No

**Template:** TriggeredSendDataExtension

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| SubscriberKey | Text | 254 | - | - |  |
| EmailAddress | EmailAddress | 254 | - | - |  |
| First Name | Text | 50 | - | - |  |
| Last Name | Text | 50 | - | - |  |
| Loyalty Number | Text | 50 | - | - |  |
| DateAdded | Date |  | - | + | getdate() |
