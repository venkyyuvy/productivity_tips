## Terminal

For Bash terminal, the key binding can be set to **vi** by adding the following lines in `~/.inputrc`
```
set editing-mode vi
set keymap vi
```

Similary, for the fish terminal, add the following line in the `~/.config/fish/config.fish`
```
fish_vi_key_bindings
```
[Reference](https://stackoverflow.com/questions/28444740/how-to-use-vi-mode-in-fish-shell)

## Python interactive environment

Rather than importing the commonly used packages like numpy, pandas, matploblib everytime in a new interactive session. Put them in the pystartup file. 

- create a file named `.pystartup` in you home with the required imports/codes. 

  for example:

```python
import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
```

 - set the environment variable as below:
 ```
 export PYTHONSTARTUP=/home/<user_name>/.pystartup
 ```


Now, you can start using those libraries directly after entering into an interactive environment.
```
$ python
Python 3.7.4 (default, Aug 13 2019, 15:17:50) 
[Clang 4.0.1 (tags/RELEASE_401/final)] :: Anaconda, Inc. on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> pd.
Display all 117 possibilities? (y or n)
pd.Categorical(           pd.IntervalDtype(         pd.UInt64Index(
```
More information [here](https://docs.python.org/3.0/tutorial/interactive.html#history-substitution)

## Ipython

Ipython also support these options. customize the file `~/.ipython/profile_default/ipython_config.py` 

```
c.TerminalInteractiveShell.editing_mode = 'vi'
```
Add all the import statements in a `.py` file and put that file under the `~/.ipython/profile_default/startup/` directory.

for example:
> data_science.py
```
import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
```
More information from the [documentation](https://ipython.readthedocs.io/en/stable/interactive/tutorial.html?highlight=startup#startup-files)
