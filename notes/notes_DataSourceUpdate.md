# Details for updating data sources

## Routine maintenance

### In LibAnswers
- **Stats > FAQ Entries > FAQ Activity**
  1. Set **Activity between** to start in **April 2015**
  1. **Filter**
  1. **Export All FAQ Views**
- **Tickets & FAQs > FAQ Knowledge Base > Export FAQs**
  1. Select **Strip HTML from export data**
  1. **Export FAQs**
- **Stats > Query Analyzer > Export Queries**

### Locally
1. Download *..._clean.csv* and *..._store.csv* files from [SharePoint](https://penno365.sharepoint.com/:f:/r/teams/LIBLippincottLibrarians/Shared%20Documents/General/dashboard_FAQ/data?csf=1&web=1&e=EXBLH7)
1. Run *cleaner_master.R* with updated filenames
1. Optional: Delete files with dates in the file names
1. Upload *..._clean.csv* and *..._store.csv* files to [SharePoint](https://penno365.sharepoint.com/:f:/r/teams/LIBLippincottLibrarians/Shared%20Documents/General/dashboard_FAQ/data?csf=1&web=1&e=EXBLH7), replacing old versions

## Change file name/location
If you need to point to a new file, not if updating as above:
1. SharePoint/OneDrive > Right-click file > Details > Path > Copy direct link
1. Power BI Desktop > File > Options and settings > Data source settings > Paste
