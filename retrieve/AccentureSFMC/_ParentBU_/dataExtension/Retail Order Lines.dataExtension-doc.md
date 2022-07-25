## Retail Order Lines

**Description:** Retail Order Lines

**Folder:** Data Extensions/Retail Transaction/

**Fields in table:** 8

**Sendable:** No

**Testable:** No

| Name | FieldType | MaxLength | IsPrimaryKey | IsNullable | DefaultValue |
| --- | --- | --- | --- | --- | --- |
| Order ID | Text | 256 | + | - |  |
| Order Line ID | Text | 256 | + | - |  |
| Product ID | Text | 256 | - | - |  |
| Quantity | Decimal | 18 | - | + | 0 |
| Extended Price | Decimal | 18 | - | + |  |
| Unit Price | Decimal | 18 | - | + |  |
| Discount | Decimal | 18 | - | + |  |
| Order Line Status | Text | 256 | - | + |  |
