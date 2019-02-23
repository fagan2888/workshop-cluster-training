# Additional Notes

- Great data management resources available from:
    - [ICPSR](https://www.icpsr.umich.edu/icpsrweb/content/datamanagement/dmp/index.html). Also available as [PDF](https://www.icpsr.umich.edu/files/datamanagement/DataManagementPlans-All.pdf).
    - [MIT](https://libraries.mit.edu/data-management/)
    - Essentials [slides](https://www.dropbox.com/s/e8j0ttbd517yap2/QuickDirtyDataMgmt_Slides_MIT.pdf?dl=0)
- Get participants to think about the data they work with:
    - Structure of the data
    - Naming convention
    - Documentation present / absent
    - Versioning
    - Presence of PII
    - Exercise at: https://www.dropbox.com/s/xx26a1onsu1qdpc/Worksheet_fileOrg.docx?dl=0
    - https://www.dropbox.com/s/ttv3boomxlfgiz5/Handout_fileNaming.pdf?dl=0
- Data management plan for new projects:
    - https://libraries.mit.edu/data-management/plan/write/
- Depositing data: Dataverse, ICPSR
- Advanced metadata: DDI XML formats
- Share code for restructuring data (before / after)
- Share code for auto-generating codebooks


Outline:
- How to connect to the cluster
- How to manage jobs on the cluster
- STATA xforwarding
- Jupyter forwarding
- Atom file edits

Remote FTP setup on Atom:
- install remote_ftp
- .ftpconfig for remote_ftp on atom

Brendan:
- Backups: find out from people who manage the cluster
- Have follow up sessions
- Ask people what is useful

Sehar:
- Data in personal folders because you need cuts
- When data is received, where does it go on the cluster?
- No vague outputs after the workshop, need explicit responsibilities assigned

Matte:
- Make raw-data read-only. Problem with this: RCE runs a nightly process to apply user permissions to the group.
- GitHub
- Backups are a problem on the cluster
- "codebook" the way stata calls it - incl summary statistics
- Master notebook + individual projects
- Data security: manage access regularly
- Data security: cap the amount of MB you download from the server
- Data security: no structure in place for IRB
- Data security: project leaders would tell them not to take data off of cluster
- Put in place much stricter protocol
- People might go back to NoMachine after the workshop

Backup options through HMDC:
- Project Backups
    + Monthly full backups and daily incremental backups to tape, available up to three (3) months. Recovery from tape backup can take anywhere from a few hours to over a day.
    + Multiple hourly snapshots, multiple daily snapshots, plus a single weekly snapshot. Recovery from snapshots take only a few minutes and is accessible directly to the researchers, look for a hidden .snapshot folder (note the dot).
- No Project Backups
    + No tape backups.
    + Weekly snapshot. Data must reside on disk for at least one week, after which the researcher can recover data up to a week.
