.onLoad <- function(libname, pkgname) {
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
