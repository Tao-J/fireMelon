import os
import shutil
import sys

for src in os.listdir('dotfiles'):
    print src
    src_path = os.path.join(os.path.realpath(os.path.curdir), 'dotfiles', src)
    dst_path = os.path.join(os.environ.get('HOME'), src)
    os.system('rm -rf %s && ln -sf %s %s' % (dst_path, src_path, dst_path))
