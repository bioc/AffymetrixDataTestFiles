## .onAttach <- function(libname, pkgname) {
##   dirs <- c("annotationData", "rawData");
##   paths <- lapply(dirs, FUN=function(dir) {
##     system.file(dir, package=pkgname);
##   })
##   names(paths) <- dirs;
## 
##   pos <- grep(sprintf("^package:%s$", pkgname), search());
##   assign(pkgname, paths, pos=pos);
## }

.onLoad <- function(libname, pkgname) {
#  cat(sprintf(".onLoad('%s','%s') called\n", libname, pkgname));

  # Append package's annotationData/ directory tree to the 
  # search path of affxparser::findCdf().
  paths <- getOption("AFFX_CDF_PATH");
  if (length(paths) > 0) {
    paths <- unlist(strsplit(paths, split=";"));
    paths <- paths[nchar(paths) > 0];
  }

  path <- system.file("annotationData", package=pkgname);
  paths <- c(path, paths);

  paths <- paste(unique(paths), collapse=";");
  options("AFFX_CDF_PATH"=paths);
}

## .Last.lib <- function(libpath) {
##   cat(sprintf(".Last.lib('%s') called\n", libpath));
## }

## .onUnload <- function(libpath) {
## #  cat(sprintf(".onLoad('%s') called\n", libpath));
## 
##   # Figure out the package name (HOW?!?)
##   pkgname <- basename(libname);
##   # Handle package version number
##   pkgname <- gsub("_[0-9.]*$", "", pkgname);
## 
##   # Remove the package's annotationData/ directory tree from the 
##   # search path of affxparser::findCdf().
##   paths <- getOption("AFFX_CDF_PATH");
##   paths <- unlist(strsplit(paths, split=";"), use.names=FALSE);
##   paths <- paths[nchar(paths) > 0];
## 
##   path <- system.file("annotationData", package=pkgname);
##   paths <- setdiff(paths, path);
## 
##   paths <- paste(unique(paths), collapse=";");
##   options("AFFX_CDF_PATH"=paths);
## }
