---
permalink: /about/
---

# About the NBI Digital Repository

This repository came out of a collaboration between the Nantucket Biodiversity Initiative (NBI) and a team of library and information science graduate students at the University of Washington Information School.  As a consortium of non profit organizations, NBI faced the problem of tracking completed research and making research outputs available to everyone. 

# Repository Authors

#### University of Washington

**Andrew Mckenna-Foster** [LinkedIn](www.linkedin.com/in/andrew-mckenna-foster) | [GitHub](https://www.google.com/url?q=https%3A%2F%2Fgithub.com%2Famckennafoster&sa=D) | [Personal Site](https://sites.google.com/view/amckennafoster/home) | [ORCID](https://www.google.com/url?q=https%3A%2F%2Forcid.org%2F0000-0001-7641-6588&sa=D)

**Christopher Tillman Neal**

**Meghan Mitchell** [LinkedIn](https://www.linkedin.com/in/meghan--mitchell)

#### Nantucket Biodiversity Initiative

**Sarah T. Bois**, NBI Chair, and many members of the NBI Committee.

## About NBI

The [Nantucket Biodiversity Initiative](https://www.nantucketbiodiversity.org/) seeks to conserve the native biodiversity of Nantucket, Tuckernuck, Muskeget and surrounding waters through collaborative research, monitoring and education.  It is a collaboration of over 10 regional non profits, goverment departments, and schools.  

## About UW iSchool

The [University of Washington Information School](https://ischool.uw.edu/) trains students to be information professionals with an emphasis on the technologies through which information is delivered.  The iSchool offeres an undergraduate informatics degree, a Master's degree in information management, and a Master's degree in library and information science.  Both Master's programs require a culminating [Capstone project](https://ischool.uw.edu/capstone).  This digital repository is the Capstone project for a team of library and information science graduate students in 2020.

---

## Acknowledgments
Our team would like to thank NBI for the opportunity to create this repository and documentation site. Sarah T. Bois, NBI Chair and Director of Education and Research at the Linda Loring Nature Foundation, acted as the main liason between UW and NBI. Karen Beattie, Director of Science & Stewardship at the Nantucket Conservation Foundation, organized and tracked NBI reports over the last 15 years making the initial report uploads possible. We would also like to thank : individuals or communities who have helped us realize this project?

---

# Overview of Components

1. Zenodo Repository
2. GitHub Repository for documentation and this website
3. Google Drive
	- Metadata form
	- Controlled vocabulary sheet
	- How to link controlled vocabulary to the form
	- File storage

All the software used to develop this repository and documentation is open source.  

**GitHub**
This website and useful files are hosted by [GitHub](https://github.com/nantucketbiodiversity/NBIdigitalrepo).  Used extensively by developers to work collaboratively on software projects, it is increasingly used as a tool to track, document, and archive all sorts of projects.

**Zenodo**
The repository itself is hosted by Zenodo. Zenodo was founded to store data produced by CERN, the European Organization for Nuclear Research.  The repository infrastructure was built for ‘big science’ outputs, but the founders realized small scale science would benefit from access to the repository.  It was launched as a completely open resource in 2013.  Anyone can create a profile, upload files and receive a digital object identifier (DOI) so that those resources are secured and citable. Zenodo secures uploaded files for the future and is committed to their preservation.  It has a [strong back up process](https://about.zenodo.org/infrastructure/) and is well funded by government and private entities.  Zenodo software is also open source and is under constant improvement through [GitHub](https://github.com/zenodo/zenodo).

Zenodo was a good choice for NBI because it is a well established repository, it is free to upload, and it allows uploads to be grouped by institution or group. We also considered using Harvard's Dataverse.

**Google Drive, Forms, and Sheets**
Google Drive is used to store research outputs ready for upload.  The Nantucket Biodiversity Initiative has its own Google account.  The Drive also contains a controlled vocabulary Google sheet that is used to source drop-down options in the Metadata Form, also stored in the Drive.

The controlled vocabulary sheet has a script (Tools>Script Editor) that fills the appropriate fields in the form.  The code for this script comes from the YouTube channel [Learn Google Spreadsheets](https://www.youtube.com/watch?v=o3AL7ASI_cA&feature=youtu.be) and is reproduced here:

	var ssID= "[your sheet id- remove the brackets]";
	var formID= "[your form id- remove the brackets]";
	var wsData = SpreadsheetApp.openById(ssID).getSheetByName("vocab");
	var form = FormApp.openById(formID)
	function main(){
	  //Make an array of controlled vocab list titles
	  var labels = wsData.getRange(1,1,1,wsData.getLastColumn()).getValues()[0];
	  //Loop through the array
	  labels.forEach(function(label,i){
	    var options = wsData
	    .getRange(2,i+1,wsData.getLastRow()-1,1)
	    .getValues()
	    .map(function(o){ return o[0] }) //this part makes the array of arrays into an array
	    .filter(function(o){ return o !== "" }); //this removes blank values
	   updateDropDownUsingTitle(label,options);                                                                   
	  }); 
	}
	function updateDropDownUsingTitle(title,values) {
	  var items = form.getItems();
	  var titles = items.map(function(item){
	    return item.getTitle();
	  });
	  var position = titles.indexOf(title);
	  //the if is for error handling if the sheet contains a title not in the form
	  if(position !== -1){
	    var item = items[position];
	    var itemID = item.getId();
	    updateDropdown(itemID, values)
	  } 
	}
	function updateDropdown(id, values) {
	  var item = form.getItemById(id);
	  item.asListItem().setChoiceValues(values);
	  //This gets the item id- copy it from question.
		  //var items = form.getItems();
	  //Logger.log(items[8].getId().toString());  
	}

---








