%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  999.package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{AffymetrixDataTestFiles-package}
\alias{AffymetrixDataTestFiles-package}
\alias{AffymetrixDataTestFiles}
\docType{package}

\title{Package AffymetrixDataTestFiles}


\description{
  This package contains annotation data files and sample data files of Affymetrix file formats.  The files originate from the Affymetrix' Fusion SDK distribution and other official sources.
  This package contains only data files.
}

\section{Requirements}{
  None.
}

\section{Installation}{
  To install this package, see \url{http://www.bioconductor.org/}.
}

\section{Location of data files}{
  Data files are located in two different directory tree depending if
  they are annotation data files or sample data files.
  The roots of these two directory structures are:
  \preformatted{
    system.file("annotationData", package="AffymetrixDataTestFiles")
    system.file("rawData", package="AffymetrixDataTestFiles")
  }
  Where applicable, ASCII, XDA, and Calvin files are separated in
  different subdirectories for easy access to either type.

  Directory structure:
\preformatted{
  annotationData/
    chipTypes/
      HG-Focus/
        +-HG-Focus.PSI
        3.ASCII/
          +-HG-Focus.CDF
      HuGene-1_0-st-v1/
        +-HuGene-1_0-st-v1.r4,10_probesets.pgf
      Mapping10K_Xba131/
        1.XDA/
          +-Mapping10K_Xba131.CDF
        3.ASCII/
          +-Mapping10K_Xba131.CDF
      Test3/
        +-Test3.PSI
        1.XDA/
          +-Test3.CDF
        3.ASCII/
          +-Test3.CDF
  rawData/
    FusionSDK_HG-Focus/
      HG-Focus/
        +-HG-Focus-1-121502.EXP
        +-HG-Focus-2-121502.EXP
        1.XDA/
          +-HG-Focus-1-121502.CHP
          +-HG-Focus-2-121502.CHP
        2.Calvin/
          +-HG-Focus-1-121502.CEL
          +-HG-Focus-1-121502.CHP
          +-HG-Focus-2-121502.CEL
          +-HG-Focus-2-121502.CHP
        3.ASCII/
          +-HG-Focus-1-121502.CEL
          +-HG-Focus-2-121502.CEL
    FusionSDK_HG-U133A/
      HG-U133A/
        2.Calvin/
          +-ethan1-1.CEL
    FusionSDK_Test3/
      Test3/
        +-Test3-1-121502.EXP
        +-Test3-2-121502.EXP
        1.XDA/
          +-Test3-1-121502.CHP
          +-Test3-2-121502.CHP
        2.Calvin/
          +-Test3-1-121502.CEL
          +-Test3-1-121502.CHP
          +-Test3-2-121502.CEL
          +-Test3-2-121502.CHP
        3.ASCII/
          +-Test3-1-121502.CEL
          +-Test3-2-121502.CEL
}
}

\author{
 Adopted from [1] by the authors of this package.
}

\section{License}{
  LGPL version 2.1 according to [1].
}

\references{
  [1] Affymetrix Inc, Fusion Software Developers Kit (SDK), 2007.
      \url{http://www.affymetrix.com/support/developer/fusion/}\cr
}
\keyword{package}
