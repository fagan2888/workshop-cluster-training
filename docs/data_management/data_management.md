# Project Data Management

## Essentials[^1]

- Backups
    - Cluster data often backed up, but ensure backup frequency is sufficient
    - Solution: external hard drive (local) + cluster backups + CrashPlan (cloud)
    - Above solutions contingent on data agreements / legal restrictions
- File organization and naming
    - Create a shared system, *follow it*.
    - Consider date conventions (YYYY-MM-DD), special characters, versioning
- Documentation (README files)
    - Too much documentation > not enough documentation
    - Document your system aka provide orientation documents
    - Template:

```markdown
Title

Data Source with link

Added by (CID member's name with email)

Dates:
    - Data time period
    - Date added
    - Date modified (if required)

Description

Variable descriptions (incl keys to join with other data)

Limitations

Other notes (such as licensing, citation, ethical restrictions,
             legal restrictions, funder requirements, etc.)

```

- Data security
    - All researchers working with Human Subjects are required to get [IRB ethics training](https://cuhs.harvard.edu/required-ethics-training)
    - [IRB](https://cuhs.harvard.edu) review where required
    - Don't take data off cluster, especially if sensitive
- Responsibility
    - Assign explicit responsibilities within your project for data management


## Data Management Checklist

- [ ] Stock-taking: current and future inventory
    - Space requirements, confidentiality and legal requirements
- [ ] Assigned responsibilities for data management
    - Responsibility for enforcement of project data management rules / conventions
- [ ] Storage and backup systems in place
    - Regular backups
    - Off-cluster backups for particularly important data
- [ ] File organization and naming systems in place
    - Data versions - naming and storage conventions
    - Naming, organization and version control for code
- [ ] Access and security guidelines in place
    - Tightly controlled access
    - Understand responsibilities with access
    - [Is my data confidential](http://security.harvard.edu/dct)?
    - Data agreements and legal restrictions
- [ ] Rules, conventions documented
    - Rules and conventions laid out in easily accessible document
    - Handed to new joinees as part of their orientation (both at org and project level)
- [ ] Ethics and privacy concerns addressed
    - Project IRB review
    - IRB ethics certifications
    - Projects involving existing non-public data are usually required to be reviewed by IRB

#### Resources

- Read the detailed version of the above checklist adapted from MIT Libraries' [resources](https://www.dropbox.com/s/fpj88gzwz291aec/Handout_dataMgmtChecklist.pdf?dl=0)
- Another good checklist available at page 17 (Appendix A) of [ICPSR's booklet](https://www.icpsr.umich.edu/files/datamanagement/DataManagementPlans-All.pdf)
- Tool available for Data Management Planning: [DMPTool](https://dmptool.org). Note that you don't have to "submit" the data management plan to a funder through DMPTool unless you're explicitly asked to by the funder.


[^1]: Adapted from MIT Libraries' resources on [data management](https://libraries.mit.edu/data-management/) released under a [CC-BY license](https://creativecommons.org/licenses/by/4.0/)
