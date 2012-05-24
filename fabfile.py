#! /usr/bin/python

from __future__ import with_statement
from fabric.api import local,settings,abort
from fabric.contrib.console import confirm

def prepare_commit():
    local("git add *")
    local("git commit -m 'random'")
    local("git push -u origin master")
