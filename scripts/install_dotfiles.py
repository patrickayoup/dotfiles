#!/usr/bin/env python

import os

exclude = ['.git']

scripts_dir = os.path.dirname(os.path.abspath(__file__))
project_root = os.path.dirname(scripts_dir)
home_dir = os.path.abspath(os.path.expanduser('~'))

os.chdir(project_root)

dotfiles = (f for f in os.listdir(project_root)
            if f.startswith('.') and f not in exclude)

for f in dotfiles:
    dotfile_path = os.path.join(project_root, f)
    install_path = os.path.join(home_dir, f)

    try:
        print(f'Installing {f} to {install_path}')
        os.symlink(dotfile_path, install_path)
    except FileExistsError:
        print(f'{f} already exists. Please remove this file and try again '
              f'if you wish to install {f} Skipping...')

