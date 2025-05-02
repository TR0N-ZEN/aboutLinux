#!/bin/bash

echo LOL

# excutes last executed command, seemingly has to be ineractively entered in the console
!!

# replaces occurence of LOL in last command with FEF and executes that newly crafted commands
!!:s/LOL/FEF/

