#!/usr/bin/env l3build
-- Build script for gtl
bundle = ""
module = "gtl"
tdsroot = "generic"
typesetruns = 3
checkengines = {"pdftex", "luatex", "xetex", "ptex", "uptex"}
checkconfigs = {"build", "config-plain"}
uploadconfig = {
  author       = "Bruno Le Floch",
  ctanPath     = "/macros/generic/gtl",
  email        = "blflatex+gtl@gmail.com",
  license      = "lppl1.3c",
  pkg          = "gtl",
  summary      = "Manipulating generalized token lists",
  uploader     = "Bruno Le Floch",
  version      = "0.6 2024-01-04",
  bugtracker   = "https://github.com/blefloch/latex-gtl/issues",
  description  = [[The package provides tools for simple operations on lists of tokens which are not necessarily balanced. It is in particular used a lot in the unravel package, to go through tokens one at a time rather than having to work with entire braced groups at a time.]],
  repository   = "https://github.com/blefloch/latex-gtl",
  topic        = "macro-supp",
  update       = true,
}
