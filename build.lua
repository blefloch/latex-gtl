#!/usr/bin/env texlua
-- Build script for gtl
bundle = "gtl"
module = ""
modules = {"package", "latextests", "plaintests"}
tdsroot = "generic"

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
