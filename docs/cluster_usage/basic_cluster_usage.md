# Basic cluster usage

## Working with Linux
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
- Copy file: `cp <old_file_path> <new_file_path>`
- Move file: `mv <old_file_path> <new_file_path>`
- Rename file: `mv <old_file_name> <new_file_name>`
- Remove file: `rm <file_name>`

For more commonly used commands, [here's](https://www.cheatography.com/davechild/cheat-sheets/linux-command-line/) a cheatsheet

## RCE-Specific Commands
The RCE cluster uses a framework called HTCondor. The following commands can be used for any cluster that runs on HTCondor.

- Connect to the RCE login node: `ssh <username>@rce.hmdc.harvard.edu`
- Connect to the RCE login node with port-forwarding: `ssh -L 8889:localhost:8889 <username>@rce.hmdc.harvard.edu`
- Check the status of your jobs: `condor_q -global <username>`
- SSH to job from the login node: `condor_ssh_to_job -name "<name of machine where job is running>" <JobID>`
- Check available resources: `rce-info.sh`
- Submit jobs: `condor_submit <submit_file_path>` or `condor_submit_util`
- Remove running jobs: `condor_rm -name "<name of the machine where job is running>" <JobID>`

## Other Relevant Commands
- Start new tmux session: `tmux new`
- Re-attach the last tmux session: `tmux a`
- Kill all running tmux sessions: `tmux kill-server`

## Optional Tips

#### Setting up SSH Key Access

If you don't want to type your password each time you SSH (from a computer you trust, of course), set up SSH keys.

Steps (for Linux and MacOS):

- [Check for existing SSH keys](https://help.github.com/articles/checking-for-existing-ssh-keys/)
- If you don't have existing keys, [generate a key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
- If you have existing keys, [add to ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#adding-your-ssh-key-to-the-ssh-agent)
- Upload the key to the remote server, using `ssh-copy-id -i ~/.ssh/id_rsa.pub <username>@rce.hmdc.harvard.edu`
