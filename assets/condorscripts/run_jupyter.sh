. /nfs/tools/lib/anaconda/3-5.2.0/etc/profile.d/conda.sh
conda activate cid
jupyter lab --no-browser --notebook-dir="~/shared_space/" --port=8889 --NotebookApp.token="my_token"
