#!/bin/bash

# Keeping a list of useful commands for conda

# list all available packages
conda list

# conda version
conda --version

# search package name
conda search "packagename"

# install packages
conda install -c "packagename"

# show outdated packages
conda show --outdated

# bulk updated
conda update --all
