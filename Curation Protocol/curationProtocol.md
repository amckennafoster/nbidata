# Curation Protocol

Use the following guidelines to curate each dataset. Information from the [flattenedFauna](https://app.gitbook.com/@flattenedfauna/s/practice-space/) project informed this protocol. 

General
- Remove leading zeros and consecutive white spaces
- Correct all misspellings
- Normalize capitalization within columns
- Normalize and define abbreviations
- Escape special characters including /@#\$%
- Encode missing values and blank cells
  - Missing value codes match data type:
    - String: null
    - Numeric: -9999

Georeference
- Seperate Latitude and Longitude columns
- Data type is numeric and values are decimal degrees
- Longitude values are appropriately signed negative or positive
- If possible, insert Datum used

Date and Time
- Date and Time are separate fields
- Both fields follow [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html)
  - YYYY-MM-DD
  - hh:mm:ss (24-hour clock system) 
