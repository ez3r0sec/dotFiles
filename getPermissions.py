#!/usr/bin/python
# getPermissions.py
# look for the permissions bits 

import os
import sys

filename = sys.argv[1]

print(oct(os.stat(filename).st_mode)[-3:])