#!/usr/bin/env python
import os
import sys
from neovim import attach

def main(files=[]):
    #import pdb; pdb.set_trace();
    neovim = attach('socket', path=os.environ['NVIM_LISTEN_ADDRESS'])

    for file in files:
        neovim.command('tabedit {}'.format(
            os.path.abspath(file)
            ))

if __name__ == '__main__':
    if sys.argv.count("--help") == 1:
        print "Usage: {} file [file]".format(sys.argv[0]).strip()
        exit(0)

    try:
        os.environ['NVIM_LISTEN_ADDRESS']
    except:
        print "${NVIM_LISTEN_ADDRESS} is not set"
        exit(1)

    main(sys.argv[1:])
