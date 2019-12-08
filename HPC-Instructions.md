1. If outside NYU, VPN into NYU-NET.
2. Once in, `ssh netid@gw.hpc.nyu.edu`
3. Then, `ssh prince.hpc.nyu.edu`
4. Activate virtual-env, for me - `source ~/pyenv/py-3.6.3/bin/activate`
5. Run sbatch from `/scratch/rm5310/myjupter`
6. Follow instructions from slurm out.
7. Tunnel ssh into prince from other terminal.
8. Open Jupyter notebook in the browser.
9. Close everything by running `scancel job_id`
