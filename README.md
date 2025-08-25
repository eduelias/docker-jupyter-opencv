# OCI Jupyter + OpenCV container

This is meant to help students to use Jupyter + OpenCV without much hassle.


## How to use this container

To use this container, just do:

### On MAC/Linux

```bash
wget https://raw.githubusercontent.com/eduelias/docker-jupyter-opencv/refs/heads/main/run.sh
# or, using curl:
curl -O https://raw.githubusercontent.com/eduelias/docker-jupyter-opencv/refs/heads/main/run.sh
```

Then make it executable and run it:

```bash
chmod +x run.sh
./run.sh
```

### On Windows

Download the batch file:

```bat
wget https://raw.githubusercontent.com/eduelias/docker-jupyter-opencv/refs/heads/main/run.bat
```

Or manually download `run.bat` from the repository.

Then, double-click `run.bat` or run it from the Command Prompt:

```bat
run.bat
```


## Other instructions

### Customize the mounted folder

To customize the mounted folder, just change the `-v` option to the right folder you want.
1. On windows, change the `.bat`file, where it has `C:` to `C:\Documents` for instance, and it'll mount just the Documents folder.
2. On MAC/linux, change the `.sh` file, where the first `/` to `/User/admin` to mount the content of the admin user's folder.