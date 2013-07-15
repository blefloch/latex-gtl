MODULE      = xtl
INS_NAMES   = xtl
DTX_NAMES   = xtl
PDF_NAMES   = xtl
CLEAN_NAMES = xtl
CLEAN_MORE  =
CODE_FILES  = xtl.sty
TEST_DIR    = testfiles
TEST_NAMES  = xtl001
TEST_AFTER  = git st
AUX_EXT     = 4ct 4tc aux blg cpt dvi glo gls hd idv idx ilg ind lg log nav out snm spl tmp toc xref
ALL_EXT     = $(AUX_EXT) pdf bbl
TMP_DIR     = tmp-$(MODULE)
include ../Makefile_outline