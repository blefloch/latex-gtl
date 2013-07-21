MODULE      = gtl
INS_NAMES   = gtl
DTX_NAMES   = gtl
PDF_NAMES   = gtl
CLEAN_NAMES = gtl
CLEAN_MORE  =
CODE_FILES  = gtl.sty
TEST_DIR    = testfiles
TEST_NAMES  = gtl001
TEST_AFTER  = git st
AUX_EXT     = 4ct 4tc aux blg cpt dvi glo gls hd idv idx ilg ind lg log nav out snm spl tmp toc xref
ALL_EXT     = $(AUX_EXT) pdf bbl
TMP_DIR     = tmp-$(MODULE)
include ../Makefile_outline