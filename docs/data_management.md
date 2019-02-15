## Project Data Management

#### Basic folder structure
data/
    data_1/
        raw/                    ---- Raw, immutable files
            file_1
            README.md           ---- Describes file_1: sources, quirks, codebook
        processed/              ---- Cleaned, reshaped, filtered files
            file_1_cleaned
            README.md           ---- Contains description of file_1_cleaned

user_1/
    src/
    proj/
    figs/
    tables/
    documents/

#### Example folder structure
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
