# Running Matlab on NYU Prince (Windows)

1. Get an X11 server. I used Xming.
2. Open Windows Subsystem for Linux.
3. `export DISPLAY=localhost:0.0`
4. `ssh -Y username@prince.hpc.nyu.edu`
5. `srun --x11 --pty /bin/bash`
6. `module load matlab/2016b`
