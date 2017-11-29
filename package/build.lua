#!/usr/bin/env texlua
-- Build script for gtl
bundle = ""
module = "gtl"
tdsroot = "generic"
maindir = ".."

typeset = function(file, dir)
  dir = dir or "."
  local errorlevel = tex(file, dir)
  if errorlevel ~= 0 then
    return errorlevel
  else
    local name = jobname(file)
    errorlevel = biber(name, dir) + bibtex(name, dir)
    if errorlevel == 0 then
      local function cycle(name, dir)
        return(
          makeindex(name, dir, ".glo", ".gls", ".glg", glossarystyle) +
          makeindex(name, dir, ".idx", ".ind", ".ilg", indexstyle)    +
          tex(file, dir)                                              +
          tex(file, dir)
        )
      end
      errorlevel = cycle(name, dir)
      if errorlevel == 0 then
        errorlevel = cycle(name, dir)
      end
    end
    return errorlevel
  end
end

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))

