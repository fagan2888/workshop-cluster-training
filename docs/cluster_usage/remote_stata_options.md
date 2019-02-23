## Option 1: X-forwarding

!!! note
    The typical way of running Stata (or other graphical applications) remotely, X-forwarding gives you the native behavior of Stata, but suffers from latency issues, which means that the screen will still be a bit stuttery

### Setup

**MacOS:**

- Install [Xquartz](https://www.xquartz.org/)
- Edit `~/.ssh/config` and add:
```
    Host *
        XAuthLocation /opt/X11/bin/xauth
        ForwardX11 yes
        ForwardX11Trusted yes
```

**Windows:**

- In PuTTy, enable X11 forwarding

**Linux:**

- No setup required! X11 is pre-installed
- You might have to edit `~/.ssh/config` to allow X11 forwarding (same as MacOS)

### Running Stata

- `ssh` to the RCE, adding a `-Y` flag to the command.
    + You can use `-X` (untrusted X11 forwarding) or `-Y` (trusted X11 forwarding, slightly smoother)
    + `-Y` is less secure, so only use it for applications you recognize (such as Stata)
```bash
ssh -Y <username>@rce.hmdc.harvard.edu
```
- Run the RCE provided convenience-command to start STATA jobs, with a graphical interface:
```
rce_submit.py -r -graphical -a xstata-mp
```

For commonly used commands and introductory tutorials, refer to [RCE documentation](https://rce-docs.hmdc.harvard.edu/book/rce-docs).


## Option 2: Jupyter Notebooks

!!! note
    - Thanks to [Kyle Barron's](https://github.com/kylebarron) package [`stata_kernel`](https://kylebarron.github.io/stata_kernel), we can use Stata kernels for Jupyter, allowing us to run Stata remotely with low latency.
    - However, Jupyter notebooks are not text files, so working with them does not have the do-file editor *feel* that Stata users might be used to.
    - Additionally, Jupyter notebooks are harder to manage using Git

### Setup

- SSH into the cluster, using portforwarding
```bash
ssh -Y -L 8889:localhost:8889 <username>@rce.hmdc.harvard.edu
```
- Create and prepare a conda environment, and activate it with the following commands:
```bash
# Navigate to a folder with >10GB available space (one of your shared_space dirs)
# Ideally this path should have no spaces
# Example: cd ~/shared_space/cid_saudi/shreyas/misc/envs/
cd ~/shared_space/<rest_of_path>
mkdir cid_env && cd cid_env
# Create conda environment in the current folder
conda create --prefix=cid python=3
# Activate conda environment (can now be done from any folder)
conda activate cid
# Install necessary packages
## Add conda-forge as the main channel for downloading packages (optional)
conda config --add channels conda-forge
## Download required packages
conda install -c conda-forge jupyterlab nodejs
```
- Configure JupyterLab for increased security
```bash
# Configure JupyterLab
jupyter notebook --generate-config
# Set jupyter notebook password for increased security (optional)
jupyter notebook password
# <you will be asked for a password
```
- Install STATA for Jupyter
```bash
## Install stata_kernel
pip install stata_kernel
python -m stata_kernel.install
## Install JupyterLab Extension for Stata syntax highlighting
jupyter labextension install jupyterlab-stata-highlight
```
- Submit Jupyter job
```bash
# Make a directory somewhere to house the condor scripts
mkdir ~/condorscripts && cd ~/condorscripts && mkdir condorlogs
# Download Jupyter submission script from Github Repo
curl -LJO https://raw.githubusercontent.com/cid-harvard/workshop-cluster-training/master/assets/condorscripts/jupyter.submit
# Submit condor script
condor_submit jupyter.submit
```
- Use tmux to handle connection errors/closures
```bash
# Start a new tmux window
tmux new
# SSH to the machine running your jupyter server
/bin/bash ~/condorscripts/condorsshrce.sh <username>
```
- In your browser, go to `localhost:8889`, and voila!

## Option 3: Atom + Hydrogen

!!! note
    - The text editor Atom, using the package Hydrogen, allows you to run code interactively, inspect data and plot using Jupyter kernels. This method uses [`stata_kernel`](https://kylebarron.github.io/stata_kernel) as well.
    - Recommended option! Provides a do-file like *feel*, with low latency (i.e. no stuttering).

**TODO**

Summarise [documentation](https://nteract.gitbooks.io/hydrogen/docs/Usage/RemoteKernelConnection.html)
