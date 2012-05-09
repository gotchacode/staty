#! /usr/bin/python -tt

################################
# Author : Vinit Kumar
# version : 0.1
################################

###################################################################################

# GNU GPL Version 3
#
# Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>

# Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed.

###################################################################################


import sys
import os.path
import ConfigParser
import twitter

__author__ = "Vinit Kumar <vinitcool76@gmail.com>"

version = 0.1

Usage =''''
==================================================================================
Commands avaliable:
==================================================================================
----------------------------------------------------------------------------------
staty.py [options]
----------------------------------------------------------------------------------
1) update/tweet
2) friends
3) followers
4) feed
5) replies
6) mention
7) msg
8) VerifyCredentials(Use vc)
9) Search
==================================================================================
'''




Description='''
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
STATY, is a command line twitter client what you can use to tweet from any system that supports python.It's in a very nascent stage as of now, But i hope this will serve you pretty well.Also the idea behind name staty is that it can tweet system stats your preferrable twitter account. All you need is a active internet connection in the system you are intrested.
===================================================================================

Before Using
============
*)Make the file staty.py executive using chmod u+x staty.py and then move the file to your /usr/bin directory.
*) It uses python-twitter module so better install it before hand to using this command

# pip install python-twitter

'''


api = twitter.Api(consumer_key='I5OS42aDDuCUc3w1ihmG6A',consumer_secret='13dHiniIZBxgnt1uzQyYixt4673B3pE4njHlVKIAmkY',access_token_key='55832449-iutpd5gWqwo2qoK4cVIpuggHuUsQCFR7UCbPDo2ca',access_token_secret='Bj1ddLwU0vVSA8bxGEGT9oNwhsEhrJOL43XephNDKHY')



if len(sys.argv) == 1:
	print Description
	print '\n'
	print Usage
	sys.exit(2)

if (cmp(sys.argv[1],'-h') or cmp(sys.argv[1],'--help')) == 0:
	print Usage
	sys.exit(2)

if cmp(sys.argv[1],"friends") == 0:
        users = api.GetFriends()
        for u in users:
                print u.name
                print '\t'




if cmp(sys.argv[1],"msg") == 0:
        msg = api.GetDirectMessages()
        print [u.text for u in msg]

if cmp(sys.argv[1],"followers") == 0:
        followers = api.GetFollowers()
        print [u.name for u in followers]

if cmp(sys.argv[1],"vc") == 0:
        vc = api.VerifyCredentials()
        print vc

if cmp(sys.argv[1],"replies") == 0:
        reply = api.GetReplies()
        print [u.text for u in reply]

if cmp(sys.argv[1],"update") == 0 or cmp(sys.argv[1],"tweet") == 0:
	status=' '.join(sys.argv[2:])
	if len(status) < 140:
		api.PostUpdates(status)
		print "Status Is Updated Successfully!"
	else:
		print "Your status is of "+str(len(status))+"chars.Twitter doesn't allow more than 140 chars"

if cmp(sys.argv[1],"feed") == 0 and len(sys.argv) == 4:
	feeds=api.GetUserTimeline(sys.argv[2],count=sys.argv[3])
	print [feed.text for feed in feeds]

if cmp(sys.argv[1],"search") == 0:
	search = api.GetSearch(' '.join(sys.argv[2:]))
	print [getattr(s.user,"screen_name")+":"+getattr(s,"text") for s in search]

