# Details for updating data sources

## Routine maintenance

### In LibAnswers
- **Stats > FAQ Entries > FAQ Activity**; Set **Activity between** to start in **April 2015**; **Filter**; **Export All FAQ Views**
- **Tickets & FAQs > FAQ Knowledge Base > Export FAQs**; Select **Strip HTML from export data**; **Export FAQs**
- **Stats > Query Analyzer > Export Queries**

### Locally
1. Download *..._clean.csv* and *..._store.csv* files from OneDrive
1. Run *cleaner_master.R* with updated filenames
1. Optional: Delete files with dates in the file names
1. Upload *..._clean.csv* and *..._store.csv* files to OneDrive, replacing old versions

## Change file name/location
If you need to point to a new file, not if updating as above:
1. OneDrive > Right-click file > Details > Path > Copy direct link
1. Power BI Desktop > File > Options and settings > Data source settings > Paste