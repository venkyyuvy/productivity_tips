Instead of importing the usual numpy, pandas, matploblib or anyother favourite libraries of your's everytime in new interactive session. One can put that in the pystartup file. 

The key binding can also be set to vi by adding the line `set editing-mode vi` in `~/.inputrc` 

You can start using those libraries directly after starting the interactive environment.
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

Ipython also support these options. customize the file `~/.ipython/profile_default/ipython_config.py` 

Add the import statements of libraries that would be useful.

for example:
```
c.TerminalInteractiveShell.editing_mode = 'vi'

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

```
