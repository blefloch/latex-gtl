#!/usr/bin/env l3build
-- Build script for gtl
bundle = "gtl"
module = "gtl"
checkengines = {"pdftex", "luatex", "xetex", "eptex", "euptex"}
checkformat = "plain"
maindir = ".."

checkdeps   = {"../package"}
typesetdeps = {"../package"}
unpackdeps  = {"../package"}
