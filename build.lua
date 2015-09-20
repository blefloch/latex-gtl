#!/usr/bin/env texlua
-- Build script for gtl
module = "gtl"

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
