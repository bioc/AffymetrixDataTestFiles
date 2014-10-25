#########################################################################/**
# @RdocPackage AffymetrixDataTestFiles
#
# \description{
#   @eval "packageDescription('AffymetrixDataTestFiles')$Description"
#   This package contains only data files.
# }
#
# \section{Requirements}{
#   None.
# }
#
# \section{Installation}{
#   To install this package, see \url{http://www.bioconductor.org/}.
# }
#
# \section{Location of data files}{
#   Data files are located in different directory tree depending if
#   they are annotation data files or sample data files.
#   The roots of these two directory structures are:
#   \preformatted{
#     system.file("annotationData", package="AffymetrixDataTestFiles")
#     system.file("rawData", package="AffymetrixDataTestFiles")
#   }
#   Where applicable, ASCII, XDA, and Calvin files are separated in
#   different subdirectories for easy access to either type.
#
#   Directory structure:
# \preformatted{
# @eval "local({ path <- system.file(package='AffymetrixDataTestFiles'); opwd <- setwd(path); on.exit(setwd(opwd)); library(R.utils); x <- unlist(sapply(c('annotationData', 'rawData'), function(path) { paste(path, list.files(path=path, recursive=TRUE), sep='/')})); x <- toFileListTree(x, dirsFirst=FALSE); x <- pasteTree(x); x <- paste(x, collapse='\n'); x })"
# }
# }
#
# \author{
#  Adopted from [1] by the authors of this package.
# }
#
# \section{License}{
#   LGPL version 2.1 according to [1].
# }
#
# \references{
#   [1] Affymetrix Inc, Fusion Software Developers Kit (SDK), 2007.
#       \url{http://www.affymetrix.com/support/developer/fusion/}\cr
# }
#*/#########################################################################

