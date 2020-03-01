---
permalink: /curation/
---


# Curation Protocol

Use the following guidelines to curate each dataset. Information from the [flattenedFauna](https://app.gitbook.com/@flattenedfauna/s/practice-space/) project informed this protocol. 

## Curation Process

1. Convert the dataset to stacked format
2. Create a list of the variables (columns) in a new csv file and name this dataDictionary. 
3. Examine each data column and fill in the data dictionary.
	- Make notes about tidying and cleaning needs as you do this.
4. Tidy the data
5. Clean the data

## Data Dictionary
Create a csv file in your favorite spreadsheet program. The data dictionary will define the variables used in all the data files uploaded as one package, under one doi.  If you have a dataset with more than one data table that each have many of the same variables (e.g. survey data and trap data for the same study subject), make each table its own csv file and list all the variables from each file in the data dictionary file.
Add the following columns to dataDictionary:
|Variable |Type  |Description   |Units   |Allowed Values   |Notes|

	- Variable = Variable (column) name
	- Type = string, numeric, date, etc
	- Description = A brief description of the variable
	- Units = Units for the variable (e.g. meters). If a string, use 'none'
	- Allowed Values = For variables that have a discrete list of values that number fewer than 50, list them here alphabetically, spearated by commas. For continuous data types, use 'Any'
	- Notes = Add any other useful information to help some one understand the values or the variable.

## Tidy Data
Tidy data is important because it is easily readable and allows for easier analysis and summarization. 

It has the following characteristics.
- Data are in a stacked format.  This means that variables are the columns and observations are the rows.
- Each cell contains only one piece of information (e.g. Rather than 'Garden 015', 'Garden' should be in a location column and '015' should be in a plot column.

## Cleaning Data
General
- Remove leading zeros and consecutive white spaces
- Correct all misspellings
	- Extract all the unique values for a column and check for variation. After corrections, use this list in the data dictionary, if approporiate.
- Normalize capitalization within columns
	- Use camalCase. No spaces and first word is lowercase while all following words have the first letter capitalized.
- Normalize and define abbreviations
	- Normalize the abbreviations in the data and define them in the data dictionary.
- Escape special characters including /@#\$%
	- Work with the researcher to remove special characters from actual data unless they are absolutely necessary.  Rather than changing the content of notes and comments fields, escape the special characters here by putting a backslash (\) before the special character.
- Encode missing values and blank cells
  - Missing value codes should match the data type:
    - String: null
    - Numeric: -9999

Georeference
- Seperate Latitude and Longitude columns
- Data type is numeric and values are decimal degrees (e.g. 41.39283)
- Longitude values are appropriately signed negative or positive (on Nantucket the longitude should be negative)
- If known, in the data dictionary note the datum used (e.g. NAD87)

Date and Time
- Date and Time are separate fields
- Both fields follow [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html)
  - YYYY-MM-DD
  - hh:mm:ss (24-hour clock system) 

