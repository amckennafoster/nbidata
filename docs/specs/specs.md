---
permalink: /specs/
layout: curators
---

# Specifications & Technical Details

## Licenses

There are many license options out there and a nice review is [here](http://www.dcc.ac.uk/resources/how-guides/license-research-data) (scroll to the Standard License section). Another repository, figshare, also has a [nice summary](https://knowledge.figshare.com/articles/item/what-is-the-most-appropriate-licence-for-my-data). An important consideration when applying a license is to balance the desire/need to restrict reuse rights with the need to make the work reusable far in the future. This is especially true for datasets. Data may need to be aggregated with other datasets and if the licenses is too restrictive, this becomes a monumental task (e.g. if aggregated datasets all have different licenses, there may be no way to easily license the aggregated dataset). 

We suggest two licenses for the NBI Digital Repository:

- The [Creative Commons Attribution (CC BY)](https://creativecommons.org/licenses/by/4.0/) (version 4.0) license is recommended for reports, posters, other documents, and, when necessary, datasets.
- The [Creative Commons Zero International (CC0)](https://creativecommons.org/publicdomain/zero/1.0/) license is recommended for datasets, when possible. This is the least restrictive license and allows any use, even without attribution. It is standard practice in scholarly research to cite sources, so the idea is that attribution is not explicitly needed in the license and this ensures maximal reuse potential. 

There are six main Creative Commons licenses, outside of the CC0 license, each with various restrictions, and most **do not** meet [Open Access](https://en.wikipedia.org/wiki/Open_access) requirements:

- Attribution (CC BY)
- Attribution Share Alike (CC BY-SA)
- Attribution No Derivatives (CC BY-ND)
- Attribution Non-Commercial (CC BY-NC)
- Attribution Non-Commercial Share Alike (CC BY-NC-SA)
- Attribution Non-Commercial No Derivatives (CC BY-NC-ND)

Here is what some of the terms mean:
- Attribution No Derivative: Attribution required, others may redistribute for commercial and noncommercial use but cannot change or break up your original material.
- Attribution Non-Commercial: Attribution required, others may remix and build upon your material non-commercially and their work must also be non-commercial. Derivatives of their work do not have to follow these restrictions.
- Share Alike: Adding this means the original restrictions (e.g. non-commercial) must be applied to derivatives.

Adding derivative or commercial restrictions to a license will make the material (the dataset) less reusable and less interoperable. The Share Alike addition can also cause problems. [Rathmann (2018)](https://zenodo.org/record/1463156#.XpCh1pl7k2x) provides a great overview of licensing data and the paper is on Zenodo! The following quotes from a variety of sources summarize the impact of restrictions:

> "This means the Share Alike and No Derivatives conditions might have further reaching consequences than intended." ([Digital Curation Centre](http://www.dcc.ac.uk/resources/how-guides/license-research-data) )

> "the No Derivatives condition would likely disallow most substantive types of reuse" ([Digital Curation Centre](http://www.dcc.ac.uk/resources/how-guides/license-research-data))

> "Similar to how a non-commercial licence might restrict meaningful reuse of your dataset, a ND \[No Derivative\] license can have the same effect: it may prevent someone from recombining and reusing your data for new research." ([OpenAIRE](https://www.openaire.eu/research-data-how-to-license/))

> "...using a non-commercial licence may prevent researchers from using your data in work destined for publication. This can subsequently affect the dissemination, recognition, and impact of your dataset. And it is definitively NOT open access." ([OpenAIRE](https://www.openaire.eu/research-data-how-to-license/))

> "...the prohibition of monetary compensation may also prevent non-governmental organisations (NGOs) from re-using the data." ([Rathmann (2018)](https://zenodo.org/record/1463156#.XpCh1pl7k2x))

There is a data specific license available called the [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/) but it seems that the Creative Commons licenses are a [better option](https://forum.openmod-initiative.org/t/choosing-an-open-data-license-odc-by-vs-cc-by/640/4) for now.

For Creative Commons Licenses, use version 4.0 because this allows a better attribution format (read more at the [Digital Curation Centre](http://www.dcc.ac.uk/resources/how-guides/license-research-data))

This [interactive tool](https://ufal.github.io/public-license-selector/) will help you choose a license.


## Controlled Vocabularies

These lists are either specified by Zenodo or created specifically for NBI. To add a term to an NBI controlled vocabulary (Geographic Location, Specific Location, Study Type, or Method) open the Controlled-Vocabulary Google sheet in the NBI Google Drive. You must add the term to each applicable list. For example, here are the steps to add "Lily Pond" to the Specific Location lists:
1. In the Controlled Vocabulary sheet, add Lily Pond to the bottom of Specific Location1
2. Highlight the Specific Location1 terms and sort alphabetically
3. Copy and Paste that full list into each of the other five Specific Location columns.
4. Add any other terms to other columns as needed.
5. Scroll to the right and hit the button that "Update Form" (This will take up to a minute so be patient)

The last step puts all your updates into the Metadata Form dropdowns.

#### Study Type

- checklist
- field survey
- genetics study
- species comparison
- species survey
- population dynamics
- population survey

#### Group
- amphibians and reptiles
- bacteria
- birds
- fish
- flora
- fungi
- invasive flora
- invertebrates
- mammals
- marine fauna
- non-vascular flora

#### Geographic Location

- cape cod
- global
- martha's vinyard
- massachusetts
- muskeget
- nantucket
- national
- new england coast
- the cape and islands
- tuckernuck

#### Specific Locations

This is a very long list and is available <a href="{{site.baseurl}}/specs/specificLocation">here</a>.

#### Methods

This is also a very long list and is available <a href="{{site.baseurl}}/specs/methods">here</a>. 

#### Related Identifier Relationships

- cites this upload
- is cited by this upload
- is supplemented by this upload
- is referenced by this upload
- references this upload
- is previous version of this upload
- is new version of this upload
- contunues this upload
- is contunued by this upload
- has this upload as part
- is part of this upload
- reviews this upload
- is reviewed this upload
- documents this upload
- is documented by this upload
- is compiled/created by this upload
- complied/created this upload
- is the source this upload is derived from
- has this upload as its source
- is identical to this upload
- is an alternate identifier of this upload

#### Contributor Relationships
- Contact person
- Data collector
- Data curator
- Data manager
- Distributor
- Editor
- Hosting institution
- Other
- Producer
- Project leader
- Project manager
- Project member
- Registration agency
- Registration authority
- Related Person
- Research group
- Researcher
- Rights holder
- Sponsor
- Supervisor
- Work package leader

## Google Drive Organization

The following diagram shows the folder structure to store research outputs. Files are stored by category (Ready, Uploaded, Embargoed) and then year to upload or year uploaded. The Metadata folder contains the files used to collect metadata from the NBI Wranglers.

<a href="https://raw.githubusercontent.com/nantucketbiodiversity/NBIdigitalrepo/master/docs/assets/images/folderStructure.jpeg">![A diagram of the Google Drive folder structure](https://raw.githubusercontent.com/nantucketbiodiversity/NBIdigitalrepo/master/docs/assets/images/folderStructure.jpeg "Folder Structure"){:height="90%" width="90%"}</a>


## Citations
- Rathmann, Torsten. (2018, October). Licenses for Research Data (Version 1). Zenodo. http://doi.org/10.5281/zenodo.1463156
