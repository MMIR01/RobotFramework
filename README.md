# RobotFramework
This repository includes robot scripts for test automation

## More Info
Find here useful links and information about Robot Framework

### How to install RF on Windows?
Those are the steps I did for Windows installation:
1. Install python:
2. Download wxpython: https://pypi.org/project/wxPython/4.1.0/#files (wxpython-4.1.0-cp27-cp27m-win32.whl)
3. Install it with: pip install <whl file>
4. Install RF: pip install robotframework==3.2.2
5. Instalar Java (open java 1.8)
6. Install RIDE: pip install robotframework-ride

### IDEs
VS Code with 
Robot Framework Language Server:
  
https://marketplace.visualstudio.com/items?itemName=robocorptech.robotframework-lsp

As a pre-requirement to use the plugin, it is necessary to have Python3. If you previously installed Python 2, you need to upgrade it.
  
How to check your version? Execute this robot command:
```
C:\Program Files>robot --version
Robot Framework 3.2.2 (Python 2.7.14 on win32)
[The current robot.exe at this point is in: ./Python27/Scripts/robot.exe]
```
  
In order to install Python3:
  ```
1. Install python3
2. Install wxpython just in case (see above): ERROR: wxPython-4.1.0-cp38-cp38-win32.whl is not a supported wheel on this platform.
3. pip install robotframework==3.2.2 > after this the new robot.exe is not in the path
4. Update the %path% variable: C:\Users\<user>\AppData\Roaming\Python\Python310\Scripts
5. Check it that the path is fine: 
robot --version
Robot Framework 3.2.2 (Python 3.10.0 on win32)
```

