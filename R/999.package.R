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
#   Data files are located in two different directory tree depending if
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
# @eval "library(R.utils); path <- system.file(package='AffymetrixDataTestFiles'); owd <- setwd(path); x <- unlist(sapply(c('annotationData', 'rawData'), function(path) { paste(path, list.files(path=path, recursive=TRUE), sep='/')})); setwd(owd); x <- paste(toFileListTree(x, dirsFirst=FALSE), collapse='\n'); x;"
# }
# }
#
# \author{
#  Adopted from [1] by
#   Henrik Bengtsson, \email{hb@stat.berkeley.edu},
#   James Bullard, \email{bullard@stat.berkeley.edu} and 
#   Kasper Daniel Hansen, \email{khansen@stat.berkeley.edu}.
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

