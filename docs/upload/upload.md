---
permalink: /upload/
layout: curators
---

# Uploading Data & Reports to Zenodo
Workflow: practical steps for curators to follow in order to upload data and reports to Zenodo with high-quality metadata and appropriate specifications. Include: metadata, schedule publishing, upload

## In Progress


## Process

![Flow chart showing upload decision making process](https://raw.githubusercontent.com/nantucketbiodiversity/NBIdigitalrepo/master/docs/assets/images/uploadFlow.jpeg "Upload process chart"){:height="90%" width="90%"}

# Metadata
Metadata is information about an object, like author, date created, etc. Good metadata is essential to making reports and datasets findable and usable.  Metadata gives context to a resource and without it, that resource (the report and dataset) will never be used again or, even worse, never even accessed again.  All your hard curation work will be for naught!

---

>"To data users, good metadata is like summer rain after a long drought- it's refreshing and you don't know when you'll see it again." -the authors of this documentation :)

---

## Applying Metadata Guidelines
The NBI Wrangler submits metadata related to the report and dataset to NBI via the **Metadata Form**. The fields are set up to match what is available on Zenodo.  Once a year, the NBI Uploader (the committee member responsible for uploading to Zenodo) will use the information entered into the Metadata Form to fill in values on Zenodo.

### Basic Information

#### Upload Type
Choose the upload type from the dropdown list.  If the upload will include both a report and a dataset, use dataset.

#### Date of Publication
If the exact date is unknown enter as much information as is available, with the year as a minimum. If the day or month is unknown, enter it as "01", for example: 01/01/2020

#### Title
Paste in the title from the researcher report, if available.  Otherwise, create a descriptive title.  

#### Authors 
Include all authors in the format: last name1, first name1, affiliation1, ORCID1; last name2, first name2, affiliation2, ORCID2

If the author's ORCID is unknown, leave blank.

#### Basic Description
Paste in the abstract of the researcher report and include any other relevant information.

#### Subject
Enter the url for the study subject (species studied) if one exists.  Use the [Global Biodiversity Inforamtion Facility](https://www.gbif.org/) to find the url.  
- If the subject is not represented on GBIF, use the lowest taxonomic term available and include your subject as a keyword.  
- If there are many subjects, include the lowest taxonomic term that describes them all (e.g. https://www.gbif.org/species/6163 for a study on spiders in the family Thomisidae).

#### File Description
List the name of each file being uploaded, including the file extension (e.g. wormData.csv).  If necessary, include a description that would help a user know what the filed contains. This is useful there are many files and the file names do not fully convey the contents.

This list will be used by the NBI Uploader to confirm they have the right files to upload.  It will also be included in the Description field on the repository.

### Study Type, Location, Methods and Keywords

#### Study Type
Study type is how the collected data is analyzed or what it produces.  Examples include: checklist, species survey, genetic analysis, species-area curve, etc.

#### Locations
General Geography- The General Geography locations are the islands or other land masses, please choose as appropriate to your study. 

Specific Locations- The second set of locations are more specific. If your study had more than six specific locations, add additional specific locations as keywords in the free text keyword box.  However, please do not enter more than 10 total specific locations.  

Specific locations may include properties, generally accepted place names, property owner (e.g. Nantucket Conservation Foundation), or geographic feature (e.g. pond, hill, beach).
 
#### Methods
Choose two methods used to collect data in your study. If you used more than two methods add them as additional keywords in the free text box below.  Methods are the ways data was acquired, not the way it was analyzed.

#### Kingdom 
Choose the kingdom that the subject of your study is classified in. If your study focuses on subjects in more than one kingdom, add another kingdom as an additional keyword in the free text box below. This will be useful for users to find all NBI studies related to plants or animals or fungi.

#### Additional Keywords
Examples of this could include ecosystem analysis, symbiotic relationships, diet analysis etc.  Include words that are important that a user might search for.

### License and Embargoes

#### License
The recommended license is Creative Commons Attribution 4.0.  This allows maximum reusability and requires users to cite this upload.  For more information on the world of open data licenses see <a href="{{site.baseurl}}/reference/">the references section</a> of this site.

#### Embargoes
Enter the embargo information in this field and note why the data is embargoed and what month and year it should be published.

Researchers have the option to submit their data with their report to NBI under an agreed upon embargo restriction postponing publication to a future date.  The benefit of embargoing is that NBI holds a copy of the data in case the researcher either loses the dataset or goes incommunicado. Additionally, timely submission of data means the NBI Wrangler can curate the dataset while the project is fresh on the mind.

Here is an example:  A PhD student hopes to publish a paper based on their data as part of their dissertation.  They think it will be 2.5 years before publication.  The researcher agrees to submit data with their report but have it embargoed for 2.5 years. At the end of their grant year, NBI receives the report and dataset.  The report is published immediately.  The NBI Wrangler curates the dataset and puts it in a folder marked with the date of publication.  In 2.5 years, NBI contacts the researcher to get final confirmation for data publication.

### Related Identifiers, Funding and Contributors

#### Related Identifiers
The dataset or report may be related to a research output that is already published and has a DOI. Related identifiers may point to a research output within the NBI Digital Repository on Zenodo or may point to an external source.  For example, a researcher conducts a pilot study on Nantucket and NBI publishes the dataset and report on the repository. These likely have no related identifiers. The following year, the researcher conducts follow up research and collects a much larger dataset, subsequently publishing the results in a peer reviewed journal. The researcher submits the dataset to NBI for publication.  That dataset would have two related identifiers: one for the pilot study and one for the peer reviewed publication.

Related Identifier Relationships

Here are the relationships that will likely be useful to NBI.  Zenodo has a much longer list as well.

<table>
<tr><th>Related Identifier is</th><th>Use this relationship</th><th>Notes</th></tr>
<tr><td>Published paper that does not cite the published data</td><td>is supplemented by this upload</td><td></td></tr>
<tr><td>Published paper that cites the published dataset</td><td>cites this upload</td><td>This is likely added after paper publication</td></tr>
<tr><td>Data already published that this data is a subset of</td><td>has this upload as part</td><td>An example is beetle count data from pitfall trap data for a spider study. The published spider data and documentation act as the parent to this publication.</td></tr>
<tr><td>Data that is part of a pilot study or earlier study</td><td>is continued by this upload</td><td></td></tr>
<tr><td>Published data used/cited in the current upload</td><td>is cited by this upload</td><td></td></tr>
</table>

#### Grant Funding
Information regarding single or multiple grants that funded this research in this format: Grant funder, grant name or grant number; Grant funder, grant name or grant number; etc.  If this is NBI funded, use the following format: Nantucket Biodiversity Initiative [year of grant].  Example: Nantucket Biodiversity Initiative 2019

#### Contributors
Contributors are those who helped significantly with data collection/analysis/management or research project as a whole but are not authors.  The relationship is important. If you are an NBI Wrangler and oversaw the data curation of the dataset, include yourself as Data curator! Use any of the following:

<table>
<tr><td>Contact Person</td><td>Data curator</td><td>Data collector</td><td>Data manager</td><td>Distributor</td></tr>
<tr><td>Editor</td><td>Hosting institution</td><td>Other</td><td>Producer</td><td>Project leader</td></tr>
<tr><td>Project manager</td><td>Project member</td><td>Registration agency</td><td>Registration authority</td><td>Related person</td></tr>
<tr><td>Research group</td><td>Researcher</td><td>Rights holder</td><td>Sponsor</td><td>Supervisor</td></tr>
<tr><td>Work package leader</td><td></td><td></td><td></td><td></td></tr>
</table>

Use the following format: last name1, first name1, affiliation1, relationship1; last name2, first name2, affiliation2, relationship2


**If you believe that keywords should be added to the metadata form but do not reflect the content of the study, please do not add them in the free text box. The metadata collected from this form is used to describe your work so we strive for it to be as accurate as possible. If you would like to suggest keywords to be added to the metadata form, please do so here.**

Notes

- Some reports use only GPS coordiantes for the locations of study sites. Ex: Quinby 2017 - Evaluation of the Prey Base and Feeding Relationships of the American Burying Beetle (Nicrophorus americanus) on Nantucket Island. For these, how do we capture the specific location metadata?
- Should we suggest that checklists be submitted on the form as a Report rather than Dataset?
- We should add a page or section that shows what the controlled vocabularies are.  It would be good to link to that content from the how to use data page.
- Researcher metadata form: author names, ORCID, affiliations; contributor names/affiliations, desired report title, desired dataset title, If dataset, publication restrictions. 



## Embargoed Datasets




## Other fields in Zenodo
References, Journal, Conference, Book/Reports/Chapter, Thesis all are used if the document is an actual publication that does not have a doi from its publication source.  These are unlikely to be used by NBI.  An example of use would be if and NBI organization's staff publishes a paper or a report in some publication and is allowed to make it public.  The document could be uploaded to the repository as the authoritative copy and the publication information would be added the the pertinent fields listed in this section. 

### Email Template
