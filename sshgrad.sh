#!/usr/bin/expect

set gradlabnum [lrange $argv 0 0]

spawn /usr/bin/ssh -g yourusername@gradlab$gradlabnum.cs.utah.edu
expect "*password:*"
send -- "yourpassword\r"

interact
