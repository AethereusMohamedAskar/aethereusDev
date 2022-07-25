## Payments

**Description:** Payments

**Folder:** Data Extensions/Retail Transaction/

**Fields in table:** 4

**Sendable:** No

**Testable:** No

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| Order ID | Text | 256 | - | - |  |
| Payment ID | Text | 256 | + | - |  |
| Payment Method | Text | 256 | - | + |  |
| Payment Amount | Decimal | 18 | - | + | 0 |
