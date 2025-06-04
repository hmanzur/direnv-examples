#!/usr/bin/env python3
import os


print("Hello World!", os.environ.get("DIRENV_FOO", "direnv no loaded :("))