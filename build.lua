#!/usr/bin/env texlua
-- Build script for gtl
bundle = "gtl"
module = ""
modules = {"package", "latextests", "plaintests"}
packtdszip  = true

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
