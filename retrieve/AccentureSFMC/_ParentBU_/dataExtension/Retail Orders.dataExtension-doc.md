## Retail Orders

**Description:** Retail Orders

**Folder:** Data Extensions/Retail Transaction/

**Fields in table:** 8

**Sendable:** No

**Testable:** No

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| Customer ID | Text | 256 | - | - |  |
| Order ID | Text | 256 | + | - |  |
| Order Number | Text | 256 | - | - |  |
| Order Date | Date |  | - | + |  |
| Order Total | Decimal | 18 | - | + | 0 |
| Tax Total | Decimal | 18 | - | + | 0 |
| Grand Total | Decimal | 18 | - | + | 0 |
| Order Status | Text | 256 | - | + |  |
