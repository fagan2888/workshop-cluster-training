## Basic cluster usage

### Working with Linux
The RCE cluster runs on Linux. This section discusses some commands that might be useful for everday cluster usage:

- Change directory: `cd <path to directory>`
- Create new folder in current directory: `mkdir <name of new folder>`
- List contents of current directory: `ls`
    + Including hidden files: `ls -al`
    + With file sizes in KB/MB/GB instead of bytes: `ls -alh`
- Create an empty file: `touch <filename>`
- Open a Vim text editor: `vi <filename>` (There are a bunch of vim specific commands you need to learn to use Vim)
- Output the contents of a text file: `cat <filename>`
- Output the first few lines of a file: `head <filename>`

For more commonly used commands, [here's](https://www.cheatography.com/davechild/cheat-sheets/linux-command-line/) a cheatsheet

### RCE-Specific Commands
The RCE cluster uses a framework called HTCondor. The following commands can be used for any cluster that runs on HTCondor.

- Connect to the RCE login node: `ssh <username>@rce.hmdc.harvard.edu`
- Connect to the RCE login node with port-forwarding: `ssh -L 8889:localhost:8889 <username>@rce.hmdc.harvard.edu`
- Check the status of your jobs: `condor_q -global <username>`
- SSH to job from the login node: `condor_ssh_to_job -name "<name of machine where job is running>" <JobID>`
- Check available resources: `rce-info.sh`
- Submit jobs: `condor_submit <submit_file_path>` or `condor_submit_util`
- Remove running jobs: `condor_rm -name "<name of the machine where job is running>" <JobID>`

### Other Relevant Commands
- Start new tmux session: `tmux new`
- Re-attach the last tmux session: `tmux a`
- Kill all running tmux sessions: `tmux kill-server`

For more, refer to [RCE documentation](https://rce-docs.hmdc.harvard.edu/book/rce-docs).
