#! /usr/bin/python


from fabric.api import local


def prepare_commit():
    local("git add *")
    local("git commit -m 'random'")
    local("git push -u origin master`")
