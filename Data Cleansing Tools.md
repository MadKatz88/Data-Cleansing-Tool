Data Cleansing ToolsRetailer · Wholesaler · Principal

# Convert to SKU Template

Upload an Excel or CSV file, match its columns to the 17 columns of SKU_Template.xlsx, fix anything in the grid, then download or send it to cleansing.

.xlsx, .xls, .csv or .pdf. Drag and drop works too.

# Cleansing

Problems are highlighted first. Nothing is removed until you press a button.

Greenbarcode and name correct Yellowone is wrong Redboth wrong Purple rowduplicate Red cellissue (hover for the reason)

# Tutorial

Six short steps. Each “Try it” button loads sample data and takes you to the right screen.

Screenshots are taken in your browser with sample data. Whatever you had loaded is restored afterwards.

# User guide

A printable guide for your team. Download it as a PDF or share it.

User guide

## Data Cleansing Tools

Convert, check and clean SKU data for retailers, wholesalers and principals.

### 1. What this tool does

It takes a product file from a supplier or system, lines it up with the SKU Template, finds mistakes, and helps you fix them. Everything happens in your browser. Your files are not uploaded to any server.

### 2. Quick start

1. Open **Template converter** and upload an Excel, CSV or text-based PDF file.
2. Check that each template column is matched to the right source column. Change any match with its dropdown.
3. Fix cells in the grid if needed, then press **Send to cleansing**.
4. In **Cleansing**, read the colours, press **Auto-fix formatting**, then review duplicates.
5. Export to Excel or CSV, or open the **Executive dashboard** for a summary.

### 3. The screens

| Screen | Use it to |
| --- | --- |
| **Template converter** | Match an uploaded file to the 17 SKU Template columns and download the result as Excel. |
| **Compare to template** | See the uploaded file and the template side by side. Shows missing, renamed, reordered and extra columns. |
| **Cleansing** | Upload several files, see problems highlighted, fix them, remove duplicates and export. |
| **Analytics** | Quality score, issues, completeness, pricing and margin review, and recommended actions. |
| **Validation rules** | Switch checks on or off. |
| **Backlog** | A record of every fix and removal. Each can be reverted. |
| **Mock API** | The reference catalog used to check barcodes and names. |

### 4. Colour status

| Colour | Meaning |
| --- | --- |
| Green | Barcode and name are both correct. |
| Yellow | One of them is wrong: a correct barcode with a wrong name, or a correct name with a wrong barcode. |
| Red | Barcode and name are both wrong. |
| Purple row | Duplicate. It stays until you press **Remove duplicates**. |

Hover over a colour to see the reason. A red cell means a problem in that cell; hover to read it.

### 5. What it checks

- Missing values in required columns (SKU, barcode, name, category, brand).
- Extra spaces before, after or inside text.
- Inconsistent letter case, and English or Thai spelling variants.
- Text mixed into number columns, such as “฿ 289 บาท”.
- Open for sale and Active values that are not 0 or 1.
- Negative or extreme numbers, and a sell price below cost.
- Barcodes with the wrong length or check digit.
- Duplicate barcodes or SKUs across all uploaded files.
- Whether each SKU has an image (Yes or No).

### 6. Validation rules

Turn each rule on or off in **Validation rules**. Once the data is clean, apply the same rules in your source system or spreadsheet so the errors do not return.

### 7. Exporting and sharing

- **Export Excel** and **Export CSV** save the cleaned table in the SKU Template layout.
- **Executive dashboard** builds a one-page summary. Save it as PDF or HTML.
- Press **Share** on the artifact page to send the tool itself to a colleague. Each person’s data stays in their own browser.

### 8. Limits and privacy

- Files stay on your device. Closing or refreshing the page clears loaded data, so export first.
- Files are limited to 25 MB and 50,000 rows. The Cleansing table shows the first 500 rows, but checks, fixes and exports use all rows.
- If a workbook has several sheets, the sheet with the most rows is used.
- The header row must be the first row of the sheet.
- PDF upload reads text-based PDFs only. Scanned PDFs need OCR first.
- Barcodes saved by Excel in scientific notation (for example 8.85E+12) have lost digits and cannot be repaired. Re-export the source with the column formatted as text.
- Exports prefix cells that start with = + - or @ so Excel does not run them as formulas.

### 9. Supported file formats

These layouts are recognised by their column names and matched to the template automatically. You can still change any match in the converter.

| File | How it is matched |
| --- | --- |
| **Tenant SKU export** (Real_data_tenant) | sku → SKU, barcode → Barcode, sku_name → Name, is_sold → For sale, is_active → Active, sku_order and category_order → the two order columns, unit_name → Unit, quantity → Count, category_name, sub_category_name and brand_name → Category, Subcategory and Brand, avg_price → Sell price. tenant_id, tenant_name and sku_id have no template column; tick **Keep unmapped source columns** to carry them along. Cost and the price groups stay blank. |
| **Master SKU** (Real_sku_master) and **Master SKU staging** (Real_sku_master_staging) | sku → SKU, barcode → Barcode, title → Name, pack_type_name → Unit, pack_qty → Count (without pack_qty, the number in pack_type such as x24 is used), category_th, sub_category_th and brand_th → Category, Subcategory and Brand, image_url → the image check. Size, English names, codes and IDs have no template column. Master files have no flags or prices, so those stay blank. A file with “staging” in its name is labelled as staging. |

- Many master SKUs have no SKU code, so they show Missing value in the SKU column.
- CSV files are read as text, so barcodes keep their leading zeros.
- In **Mock API**, choose one or more of SKU_Master_Global, Real_sku_master and Real_sku_master_staging to use as the reference catalog.

### 10. Troubleshooting

- **A column shows as missing but it is in my file.** Its name was not recognised. Pick it from the dropdown in the converter.
- **Everything is Red.** The barcode or name is not in the Mock API catalog. Replace the catalog with your own data source.
- **A download does not start.** Allow the save prompt. If it is blocked, use Copy CSV or Copy for Excel.

คู่มือผู้ใช้

## เครื่องมือล้างข้อมูล

แปลง ตรวจสอบ และล้างข้อมูล SKU สำหรับร้านค้าปลีก ผู้ค้าส่ง และเจ้าของแบรนด์

### 1. เครื่องมือนี้ทำอะไรได้

รับไฟล์สินค้าจากซัพพลายเออร์หรือระบบ จัดแนวให้ตรงกับ SKU Template ค้นหาข้อผิดพลาด และช่วยแก้ไข ทุกอย่างทำงานในเบราว์เซอร์ของคุณ ไฟล์จะไม่ถูกอัปโหลดไปยังเซิร์ฟเวอร์ใด ๆ

### 2. เริ่มต้นอย่างรวดเร็ว

1. เปิด **ตัวแปลงเป็น SKU Template** แล้วอัปโหลดไฟล์ Excel, CSV หรือ PDF ที่เป็นข้อความ
2. ตรวจว่าแต่ละคอลัมน์ของเทมเพลตจับคู่กับคอลัมน์ต้นทางถูกต้อง เปลี่ยนการจับคู่ได้จากรายการเลือก
3. แก้เซลล์ในตารางหากจำเป็น แล้วกด **ส่งไปล้างข้อมูล**
4. ในหน้า **ล้างข้อมูล** ดูสี กด **แก้รูปแบบอัตโนมัติ** แล้วตรวจข้อมูลซ้ำ
5. ส่งออกเป็น Excel หรือ CSV หรือเปิด **แดชบอร์ดผู้บริหาร** เพื่อดูสรุป

### 3. หน้าจอต่าง ๆ

| หน้าจอ | ใช้ทำอะไร |
| --- | --- |
| **ตัวแปลงเป็น SKU Template** | จับคู่ไฟล์ที่อัปโหลดกับ 17 คอลัมน์ของ SKU Template และดาวน์โหลดเป็น Excel |
| **เปรียบเทียบกับเทมเพลต** | ดูไฟล์ที่อัปโหลดกับเทมเพลตเคียงข้างกัน แสดงคอลัมน์ที่ขาด ชื่อต่างกัน เรียงลำดับต่างกัน และคอลัมน์เกิน |
| **ล้างข้อมูล** | อัปโหลดหลายไฟล์ ดูปัญหาที่ไฮไลต์ แก้ไข ลบข้อมูลซ้ำ และส่งออก |
| **การวิเคราะห์** | คะแนนคุณภาพ ปัญหา ความครบถ้วน ราคาและกำไรขั้นต้น และสิ่งที่ควรทำ |
| **กฎการตรวจสอบ** | เปิดหรือปิดการตรวจสอบแต่ละข้อ |
| **ประวัติการแก้ไข** | บันทึกการแก้ไขและการลบทุกครั้ง ย้อนกลับได้ทีละรายการ |
| **Mock API** | แค็ตตาล็อกอ้างอิงที่ใช้ตรวจบาร์โค้ดและชื่อสินค้า |

### 4. สถานะสี

| สี | ความหมาย |
| --- | --- |
| เขียว | บาร์โค้ดและชื่อถูกต้องทั้งคู่ |
| เหลือง | ผิดอย่างใดอย่างหนึ่ง คือบาร์โค้ดถูกแต่ชื่อผิด หรือชื่อถูกแต่บาร์โค้ดผิด |
| แดง | บาร์โค้ดและชื่อผิดทั้งคู่ |
| แถวสีม่วง | ข้อมูลซ้ำ จะอยู่จนกว่าคุณกด **ลบข้อมูลซ้ำ** |

เลื่อนเมาส์ไปที่สีเพื่อดูเหตุผล เซลล์สีแดงหมายถึงมีปัญหาในเซลล์นั้น เลื่อนเมาส์ไปอ่านรายละเอียด

### 5. สิ่งที่ตรวจสอบ

- ค่าว่างในคอลัมน์ที่จำเป็น (SKU, บาร์โค้ด, ชื่อ, หมวดหมู่, แบรนด์)
- ช่องว่างส่วนเกินหน้า หลัง หรือกลางข้อความ
- ตัวพิมพ์ใหญ่เล็กไม่สม่ำเสมอ และการสะกดที่ต่างกันทั้งภาษาอังกฤษและไทย
- ข้อความปนในคอลัมน์ตัวเลข เช่น “฿ 289 บาท”
- ค่าเปิดขายและเปิดใช้งานที่ไม่ใช่ 0 หรือ 1
- ตัวเลขติดลบหรือสูงผิดปกติ และราคาขายต่ำกว่าทุน
- บาร์โค้ดที่ความยาวหรือหลักตรวจสอบไม่ถูกต้อง
- บาร์โค้ดหรือ SKU ซ้ำข้ามทุกไฟล์ที่อัปโหลด
- แต่ละ SKU มีรูปภาพหรือไม่ (มี หรือ ไม่มี)

### 6. กฎการตรวจสอบ

เปิดหรือปิดแต่ละกฎในหน้า **กฎการตรวจสอบ** เมื่อข้อมูลสะอาดแล้ว ให้ใช้กฎเดียวกันในระบบต้นทางหรือสเปรดชีตของคุณ เพื่อไม่ให้ข้อผิดพลาดกลับมา

### 7. การส่งออกและการแชร์

- **ส่งออก Excel** และ **ส่งออก CSV** บันทึกตารางที่ล้างแล้วในรูปแบบ SKU Template
- **แดชบอร์ดผู้บริหาร** สร้างสรุปหน้าเดียว บันทึกเป็น PDF หรือ HTML
- กด **Share** ในหน้าอาร์ติแฟกต์เพื่อส่งเครื่องมือให้เพื่อนร่วมงาน ข้อมูลของแต่ละคนอยู่ในเบราว์เซอร์ของตนเอง

### 8. ขีดจำกัดและความเป็นส่วนตัว

- ไฟล์อยู่ในอุปกรณ์ของคุณ การปิดหรือรีเฟรชหน้าจะล้างข้อมูลที่โหลดไว้ ควรส่งออกก่อน
- ไฟล์จำกัด 25 MB และ 50,000 แถว ตารางล้างข้อมูลแสดง 500 แถวแรก แต่การตรวจ แก้ไข และส่งออกใช้ทุกแถว
- หากสมุดงานมีหลายชีต จะใช้ชีตที่มีแถวมากที่สุด
- แถวหัวตารางต้องเป็นแถวแรกของชีต
- การอัปโหลด PDF อ่านได้เฉพาะ PDF ที่เป็นข้อความ PDF สแกนต้องทำ OCR ก่อน
- บาร์โค้ดที่ Excel บันทึกเป็นรูปแบบวิทยาศาสตร์ (เช่น 8.85E+12) สูญเสียหลักไปแล้วและกู้คืนไม่ได้ ให้ส่งออกต้นฉบับใหม่โดยตั้งคอลัมน์เป็นข้อความ
- การส่งออกจะเติมเครื่องหมายนำหน้าเซลล์ที่ขึ้นต้นด้วย = + - หรือ @ เพื่อไม่ให้ Excel รันเป็นสูตร

### 9. รูปแบบไฟล์ที่รองรับ

เครื่องมือจะรู้จักรูปแบบเหล่านี้จากชื่อคอลัมน์ และจับคู่กับเทมเพลตให้อัตโนมัติ คุณยังเปลี่ยนการจับคู่ในตัวแปลงได้

| ไฟล์ | วิธีจับคู่ |
| --- | --- |
| **Tenant SKU export** (Real_data_tenant) | sku → SKU, barcode → Barcode, sku_name → ชื่อสินค้า, is_sold → เปิดขาย, is_active → เปิดใช้งาน, sku_order และ category_order → คอลัมน์ลำดับทั้งสอง, unit_name → หน่วยนับ, quantity → จำนวนนับ, category_name, sub_category_name และ brand_name → หมวดหมู่ หมวดหมู่ย่อย และแบรนด์, avg_price → ราคาขาย ส่วน tenant_id, tenant_name และ sku_id ไม่มีคอลัมน์ในเทมเพลต ให้ติ๊ก **เก็บคอลัมน์ต้นทางที่ไม่ได้จับคู่** หากต้องการเก็บไว้ ทุนและกลุ่มราคาจะว่างไว้ |
| **Master SKU** (Real_sku_master) และ **Master SKU staging** (Real_sku_master_staging) | sku → SKU, barcode → Barcode, title → ชื่อสินค้า, pack_type_name → หน่วยนับ, pack_qty → จำนวนนับ (หากไม่มี pack_qty จะใช้ตัวเลขใน pack_type เช่น x24), category_th, sub_category_th และ brand_th → หมวดหมู่ หมวดหมู่ย่อย และแบรนด์, image_url → ตรวจว่ามีรูปหรือไม่ ขนาด ชื่อภาษาอังกฤษ รหัส และ ID ไม่มีคอลัมน์ในเทมเพลต ไฟล์ master ไม่มีค่าเปิดขายหรือราคา จึงเว้นว่างไว้ ไฟล์ที่มีคำว่า “staging” ในชื่อจะแสดงเป็น staging |

- SKU master จำนวนมากไม่มีรหัส SKU จึงแสดงว่าค่าว่างในคอลัมน์ SKU
- ไฟล์ CSV ถูกอ่านเป็นข้อความ บาร์โค้ดจึงคงเลข 0 นำหน้าไว้
- ในหน้า **Mock API** เลือก SKU_Master_Global, Real_sku_master และ Real_sku_master_staging ได้หนึ่งไฟล์หรือหลายไฟล์เพื่อใช้เป็นแค็ตตาล็อกอ้างอิง

### 10. การแก้ปัญหา

- **คอลัมน์แสดงว่าไม่พบ แต่มีในไฟล์ของฉัน** เครื่องมือไม่รู้จักชื่อคอลัมน์ ให้เลือกจากรายการในตัวแปลง
- **ทุกแถวเป็นสีแดง** บาร์โค้ดหรือชื่อไม่อยู่ในแค็ตตาล็อก Mock API ให้เปลี่ยนเป็นแหล่งข้อมูลของคุณเอง
- **ดาวน์โหลดไม่เริ่ม** ให้อนุญาตหน้าต่างบันทึกไฟล์ หากถูกบล็อก ให้ใช้คัดลอก CSV หรือคัดลอกไปยัง Excel

# Compare to SKU Template

Upload a file and see its table next to the current SKU Template, column by column. Mismatches are coloured: green matches, yellow needs a look, red is missing.

.xlsx, .xls or .csv

# Data analytics

A quality and pricing review of the rows loaded in Cleansing. It updates after every upload, fix or removal.

# Validation rules

Turn rules on to flag entries that break them. Apply the same rules in your source system so errors don’t come back.

# Backlog

Every fix and removal is recorded here and can be reverted.

# Mock API

Reference catalog used to check barcode and name. On sync it looks for SKU_Master_Global.csv, then Real_sku_master.csv, in this folder or its multi-tenant-examples subfolder. If that is blocked (common when opening the HTML directly from disk) use "Choose catalog file" and pick one or more files: SKU_Master_Global, Real_sku_master or Real_sku_master_staging.