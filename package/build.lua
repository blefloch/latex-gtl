#!/usr/bin/env texlua
-- Build script for gtl
bundle = ""
module = "gtl"
tdsroot = "generic"
maindir = ".."

typeset = function(file)
  local errorlevel = tex(file)
  if errorlevel == 0 then
    local name = stripext(file)
    errorlevel = biber(name) + bibtex(name)
    if errorlevel == 0 then
      local function cycle(name)
        return(
          makeindex(name, ".glo", ".gls", ".glg", glossarystyle) +
          makeindex(name, ".idx", ".ind", ".ilg", indexstyle)    +
          tex(file)                                              +
          tex(file)
        )
      end
      errorlevel = cycle(name)
      if errorlevel ~= 0 then
        errorlevel = cycle(name)
      end
    end
  end
  return errorlevel
end

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))

