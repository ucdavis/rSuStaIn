# Development environment situation report
# Prints key information about the R environment for diagnostic purposes.

cat("R version:\n")
print(R.version.string)

cat("\nPlatform:\n")
print(R.version$platform)

cat("\nInstalled packages (non-base):\n")
ip <- as.data.frame(installed.packages()[, c("Package", "Version")])
ip <- ip[!ip$Package %in% rownames(installed.packages(priority = "base")), ]
print(ip, row.names = FALSE)

cat("\nLibrary paths:\n")
print(.libPaths())

cat("\nsessionInfo():\n")
print(sessionInfo())
