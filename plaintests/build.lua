#!/usr/bin/env texlua
-- Build script for gtl
bundle = "gtl"
module = "gtl"
checkengines = {"pdftex", "luatex", "xetex", "eptex", "euptex"}
checkformat = "plain"
maindir = ".."

checkdeps   = {"../package"}
typesetdeps = {"../package"}
unpackdeps  = {"../package"}

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
