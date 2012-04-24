#! /bin/bash 

################################
# Author : Vinit Kumar & Jerry Polfer ( https://github.com/vinitcool76 & https://github.com/x3nu )
# version : 0.2
################################

###################################################################################
#MIT The MIT License (MIT)

#Copyright (c) <2012> <Vinit Kumar>

#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
#associated documentation files (the "Software"), to deal in the Software without restriction,
#including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense
#, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do
#so, subject to the following conditions:
#The above copyright notice and this permission notice shall be included in all copies or substantial 
#portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE 
#AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES 
#OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION 
#WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
###################################################################################


title="Sytem information for $HOSTNAME"
right_now=$(date +"%x %r %Z")
time_stamp="updated on $right_now by $USER"

###functions


function system_info 
{ 
echo $title
echo $time_stamp
}

function show_uptime
{
echo "<h2>System Uptime</h2>"
echo "<pre>"
up -u # To use this you must download https://github.com/x3nu/up , compile it, and add it to your bin folder
echo "</pre>"
}

function drive_space
{
echo "<h2>Fileystem space</h2>"
echo "<pre>"
df -h
echo "</pre>"
}



function home_space
{
    echo "<h2>Home directory space by user</h2>"
    echo "<pre>"
    echo "Size    Dir"
    du -sh /home/*
    echo "</pre>"

}   # end of home_space 



####main

cat << _EOF_

	<html>
	<head>
		<title>$title</title>
	</head>

	<body>
		<h1>$TITLE</h1>
		<p>$TIME_STAMP</p>
		$(system_info)
		$(show_uptime)
		$(drive_space)
		$(home_space)
	</body>
	</html>
_EOF_
