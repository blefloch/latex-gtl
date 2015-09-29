#!/usr/bin/env texlua
-- Build script for gtl
module = "gtl"
checkengines = {"pdftex", "luatex", "xetex", "ptex"}

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
