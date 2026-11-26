# Data Cleansing Tool

Browser-based tool to convert, check and clean SKU data (retailers, wholesalers, principals).

**Live site:** https://madkatz88.github.io/Data-Cleansing-Tool/

- `index.html` – the tool (runs fully in the browser)
- `multi-tenant-examples/` – sample catalogs used by *Mock API → Sync catalog*
- `query_data.sql` – SQL used to extract the example data

To run locally, serve the folder (e.g. `python -m http.server`) and open http://localhost:8000. Opening `index.html` directly from disk blocks catalog loading; use "Choose catalog file" instead.
