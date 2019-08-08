#!/usr/bin/python

import re
import sys
import calendar
import time

t = calendar.timegm(time.gmtime())

pattern = re.compile(r'^(\d+)\t(\w+)\t(.+?)\t(20\d\d\-\d\d\-\d\d)\s(\d\d:\d\d:\d\d)\t(\d+)\t(\d+).*$')

ok = 0
no = 0

f = open("../files/twitter.out", "r")
for line in f:
    res = re.match(pattern, line)
    if res:
        ok = ok + 1
        print "%s\n" % res.group(1)
    else:
        no = no + 1
f.close()

print >> sys.stderr, "ok: %d\nno: %d\ntime: %ss\nEND" % \
    (ok, no, int(calendar.timegm(time.gmtime()) - t))
