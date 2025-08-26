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

You can download the `run.bat` script using either PowerShell or Command Prompt.

#### **Using PowerShell**

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/eduelias/docker-jupyter-opencv/refs/heads/main/run.bat" -OutFile "run.bat"
```

#### **Using Command Prompt (CMD) with PowerShell**

```cmd
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/eduelias/docker-jupyter-opencv/refs/heads/main/run.bat' -OutFile 'run.bat'"
```

#### **Using Command Prompt (CMD) with curl (Windows 10 and later)**

```cmd
curl -o run.bat https://raw.githubusercontent.com/eduelias/docker-jupyter-opencv/refs/heads/main/run.bat
```

Then, double-click `run.bat` or run it from the Command Prompt:

```bat
.\run.bat
```
*Notice the `.\` is required, and you should run this inside the folder you downloaded the .bat*

## Other instructions

### Customize the mounted folder

To customize the mounted folder, just change the `-v` option to the right folder you want.
1. On windows, change the `.bat`file, where it has `C:` to `C:\Documents` for instance, and it'll mount just the Documents folder.
2. On MAC/linux, change the `.sh` file, where the first `/` to `/User/admin` to mount the content of the admin user's folder.

### How to get the token

Just run the command:
```bash
docker logs jupyter
```

and it should return something like this
```bash
...
    To access the notebook, open this file in a browser:
        file:///home/thiago/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://d9d14d01734a:8888/?token=8972f3ed8fc41bcfd101d4d8750f28e321e41c87d8202537
     or http://127.0.0.1:8888/?token=8972f3ed8fc41bcfd101d4d8750f28e321e41c87d8202537
...
```

Then, just copy the `http://127.0.0.1:8888/?token=xxxxx` part and paste it into your browser.