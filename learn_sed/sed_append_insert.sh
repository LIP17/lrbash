#!/bin/bash

# sed insert will insert before given address
sed '3ipattern' data

# sed append will append after given address
sed '3apattern' data

# sed append to the end of file
sed '$ainput' datainput

# sed insert multiple lines before one line
# use backtick
sed '$1i\insert1\insert2' inputfile
