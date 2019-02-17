# Project Data Management

## Planning

### Essentials
Adapted from MIT Libraries' [slides](https://www.dropbox.com/s/e8j0ttbd517yap2/QuickDirtyDataMgmt_Slides_MIT.pdf?dl=0) released under a [CC-BY license](https://creativecommons.org/licenses/by/4.0/)

- Backups
    - Cluster data often backed up, but ensure backup frequency is sufficient
    - Solution: external hard drive (local) + CrashPlan (cloud)
- File organization and naming
    - Create a shared system, *follow it*.
    - Consider date conventions (YYYY-MM-DD), special characters, versioning
- Documentation (README files)
    - Too much documentation > not enough documentation
    - Document your system aka provide orientation documents
    - Template
        - Title
        - Source with link
        - Added by (project user with email)
        - Date added
        - Description
        - Codebook
        - Limitations
        - Other notes
    - Other aspects: Licensing, citation, ethical restrictions, legal restrictions, funder requirements
- Data security
    - IRB where required
    - Don't take data off cluster, especially if sensitive

### Checklist

- At a minimum, follow the checklist available at page 17 (Appendix A) of ICPSR's [booklet](https://www.icpsr.umich.edu/files/datamanagement/DataManagementPlans-All.pdf)
- Consider the slightly more detailed project start-and-end checklists from [MIT](https://www.dropbox.com/s/fpj88gzwz291aec/Handout_dataMgmtChecklist.pdf?dl=0)
- Tool available for Data Management Planning: [DMPTool](https://dmptool.org). Note that you don't have to "submit" the data management plan to a funder through DMPTool unless you're explicitly asked to by the funder.

### Basic folder structure
```
data/
    data_1/
        raw/                    ---- Raw, immutable files
            file_1
            README.md           ---- Describes file_1: sources, quirks, codebook
        processed/              ---- Cleaned, reshaped, filtered files
            file_1
            README.md           ---- Describes file_1, the cleaned version. Include codebook if required

user_1/
    src/                        ---- Scripts / do-files are stored here
    proj/                       ---- Notebooks, experimental do-files stored here
    figs/
    tables/
    documents/
```

### Example folder structure
```
data/
    nightlights/
        raw/
            luminosity_lksjdf111.csv
        intermediate/
        processed/
            luminosity.pq
    social_security/
        raw/
            incomes_gibberish.csv
        intermediate/
        processed/
            incomes.pq

dario/
    .git/
    .gitignore
    darios_personal_files.secret
    src/
	    preprocessing/
		    cleaning_master.py
	        cleaning_nightlights.py
	        cleaning_social_security.py
        commonly_used_functions.py
        bash_scripts.sh
    notebooks/
        0-run_cleaning.ipynb
        1-modelling.ipynb
    figs/
    tables/
    documents/

andres/
    .git/
    .gitignore
    src/
        preprocessing/
		    cleaning_master.py
	        cleaning_nightlights.py
	        cleaning_social_security.py
        commonly_used_functions.py
        bash_scripts.sh
    notebooks/
        0-run_cleaning.ipynb
        1-modelling.ipynb
    figs/
    tables/
    documents/
```

#### Notes
- Data folders: `README.md` or `README.txt` files in every `raw` and `processed` folders should reference every file in the folders
- Raw files are immutable - don't touch them once you've downloaded them
- Intermediate files can be altered freely
- Processed files can be altered, as long as you first consider the repercussions on subsequent analyses
- Files are cleaned, reshaped, filtered from `raw` to `intermediate` (optional), and finally to `processed` stages.
- All analyses have to be based on files in the `processed` folder ONLY.
