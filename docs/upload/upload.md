---
permalink: /upload/
layout: curators
---

# Uploading Data & Reports to Zenodo

This page provides instructions for uploading research material to the repository. The Uploader should have the following in the [Google Drive](https://nantucketbiodiversity.github.io/NBIdigitalrepo/specs/#google-drive-organization):

1. A record of what is to be uploaded and all the relavant metadata in the Google sheet filled from the Metadata form
2. The research output files to be uploaded

## Overview of the Process:

- Check for embargoed datasets in the NBI Google Drive.
- Contact researchers with expiring dataset embargos to confirm consent for uploading data.
- Confirm that you have a report and hopefully dataset in the [Google Drive](https://nantucketbiodiversity.github.io/NBIdigitalrepo/upload/#google-drive-organization) for each new entry logged from the Metadata Form. The File Description column of the Google Sheet should have a list of upload files.
- If needed, make a new folder in the Uploaded folder and name it for the upload year.
- After uploading reports and datasets, move them into the new Uploaded folder. *Do not leave copies in the Ready folder.*

For each upload:
1. Check for other published versions of the report
2. Check for related identifiers both on the web and within the repository
3. If there is a dataset, make sure the files are CSV format and check to make sure the Researcher/Wrangler curated the datasets.
4. Make sure the report is in pdf format.
5. Use the information from the metadata form to:
	- Confirm the absence of protected species information
	- Click subject URL (if exists) to make sure it is valid.
6. Log into Zenodo as NBI and start a new upload
7. Fill in all the relevant metadata fields
8. Drag the files into the upload window and upload them
9. Published the files or save to publish later

## Embargoed Datasets

Look in the Embargoed folder in the Google Drive.  If there is a folder with the current upload year, any datasets in that folder have expired embargoes and should be uploaded. In the metadata google sheet, find the metadata associated with the dataset. The report should already be uploaded to the repository. Use those resources to find a contact for the researcher and confirm uploading the data is okay. Refer to the [dataset embargoes](https://nantucketbiodiversity.github.io/NBIdigitalrepo/curation/) section for the embargo guidelines.

If permission is granted, move those datasets into the appropriate year folder in the Ready folder.

---

# Uploading Files
Log into [Zenodo](https://zenodo.org) with NBI credentials. Click 'Upload' to the right of the search bar at the top of the page. Click the green 'Upload' button in the middle of the screen. Fill in all applicable metadata fields as described below using the information provided by the NBI Wrangler and the researcher's report. Be as accurate and detailed as you can!  Without good metadata, the report and data are not very useful.

## For Each Upload
The purpose of this repository is to make it easy for people to find and cite research while also helping NBI track research it has supported.  For each upload, please consider the landscape of publishing for each report or dataset you have. Look at the related identifiers (if they exist) submitted by the Wrangler and make sure it makes sense to upload the files as they are. Anything that is unique and not published elsewhere is worth uploading. Duplicates of published research are tricky though. For example, a report that is the basis for a master's thesis and contains no unique information compared to the thesis is probably not useful to upload if the University has "published" the thesis with a DOI (if there is no DOI, you could upload the thesis itself as the NBI report, with the author's permission of course). Uploading the data from a published thesis with a DOI and linking it to the university published thesis is preferred. However, what if you do not have the data? In this case, the best option is to create a pdf using the title, authors, and abstract and put in the document that the work was supported through an NBI grant. Then link it to the published thesis.

**Upload Reports and Data Seperately** Initially everything was uploaded together to make tracking easier for NBI. However, this makes it more difficult for others to cite the research appropriately.

## Community
Type 'Nantucket' and the Nantucket Biodiversity Digital Repository should show up. Click it to select it.

## Upload Type

<a href="https://raw.githubusercontent.com/nantucketbiodiversity/NBIdigitalrepo/master/docs/assets/images/uploadFlow.jpeg">![Flow chart showing upload decision making process](https://raw.githubusercontent.com/nantucketbiodiversity/NBIdigitalrepo/master/docs/assets/images/uploadFlow.jpeg "Upload process chart"){:height="90%" width="90%"}</a>

## Digital Object Identifier
Ignore this.  This field is for documents or data that are already assigned a DOI by a publisher.

## Publication date
Use the report date. If there is no date on the report, use February 15 and the year following the grant year. For example, if the report is for a 2016 grant and there is no report date, use 02-15-2017.

## Title
Use the title of the report. If publishing data seperately, title the data with "Data for [insert report title]"

## Authors
Fill in the names in the proper format. The Wrangler should have looked up ORCIDs for each author already so if they are not in the Google sheet, leave blank.

## Description
If the research was funded by NBI, on the first line put "Report submitted in fulfillment of a (Year) Nantucket Biodiversity Initiative grant." The year should be the year of the grant, while the rest of the dates (file name and publication date) should be the date on the report or the date the report was received (default to February 15 of the year following the grant year).

Paste in whatever description the Wrangler provided. You may have to delete a bunch of carriage returns if the description was pasted in from pdf.

If applicable, paste in the file descriptions provided by the Wrangler. This is useful if there are multiple files and a potential user wants to know about the files before downloading them.

## Version
Ignore.

## Language
Type in English or whatever language is applicable.

## Keywords

All keywords should be lower case.

Add the terms from the Google sheet for:
- Geography Location
- Specific Location
- Study Type
- Method
- Kingdom
- Additional Keywords
- **If this was an NBI grant,** add the keyword "nbi grant".

If there is an "Additional keyword" that should be added to the list that appears in the metadata form that Wranglers use, add it to each appropriate list in the Controlled-Vocabulary Google sheet in the Google Drive. Follow the specific directions in the [Specifications & Technical Details](https://nantucketbiodiversity.github.io/NBIdigitalrepo/specs/) section.

## Additional notes
Add anything relevant. This is a good spot to list other funding agencies that are not listed in Zenodo's list (see Grants).  List funders using a format similar to: "This work was funded by Grant Institution 1 and Grant Institution 2."

## Access right
Leave as Open Access. Do not upload anything that would fall under the other categories unless the NBI Committee decides to start doing this.

## Licenses
Paste in what the Wrangler provided if not CC 4.0. The recommended license is Creative Commons Attribution 4.0. This allows maximum reusability and requires users to cite this upload. For more information on the world of open data licenses see [Specifications & Technical Details](https://nantucketbiodiversity.github.io/NBIdigitalrepo/specs/).

## Grants
Ignore unless the Wrangler notes that the work was funded by large grant funding institutions that might be on the available list. For other organizations that funded work, list them under Additional notes above.

## Related/alternate Identifiers
Are there other uploads on the repository directly related to this research? Is there a published paper related to this research? The Wrangler should have investigated this.  If you have both data and a report, link them together here. It is a little bit of a pain, you must do this for both report and data to make sure someone can find the report from the data and the data from the report.

## Contributors
Paste in any information provided by the Wrangler. However, the contributor relationships are very specific. Only add people or institutions that have a direct relationship to the files bing uploaded.

## References to Thesis
Unlikely to use these fields.

Use the Thesis field only if the report is actually a thesis. If it has been published elsewhere, has a DOI, and there is no associated dataset, be sure to put the DOI in the Digital Object Identifier field above. If this is the data associated with a published thesis that has a DOI, DO NOT upload a copy of the thesis. Put the thesis DOI in the Related/alternate Identifier section.

## Subject
Paste in the name and url provided by the Wrangler.

## Other fields in Zenodo
References, Journal, Conference, Book/Reports/Chapter, Thesis all are used if the document is an actual publication that does not have a doi from its publication source. These are unlikely to be used by NBI. An example of use would be if an NBI affiliated organization's staff publishes a paper or a report in some publication and is allowed to make it public. The document could be uploaded to the repository as the authoritative copy and the publication information would be added the the pertinent fields listed in this section. 

### Email Template
