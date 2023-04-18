# This script is a reminder about useful package development tools.

# Load packages.
library(devtools)
library(testthat)

# Create a new package.
usethis::create_package("path/pkgname")

# Add a README file.
use_readme_rmd()

# Add a DESCRIPTION file.
use_description()

# Create a new R script in the R/ subfolder.
use_r("function_name")

# Set up to do automated testing (creates folder called "tests/testthat/").
use_testthat()

# Create a testing script for a specific function (creates a file called
# "tests/testthat/test-function_name.R")
use_test("function_name")

# Run automated tests (shortcut: Ctrl+Shift+T)
test()

# Load functions in R scripts from the R/ subfolder so you can test them
# (shortcut: Ctrl+Shift+L).
load_all()

# Update the package documentation.
document()

# Add package-level documentation.
use_package_doc()

# Add a new vignette.
use_vignette(name = "filename", title = "Title")

# Test building the vignettes.
build_vignettes()

# Check the package for errors, warnings, and notes that must be resolved.
check()

# Install the package, complete with building the vignettes.
install(build_vignettes = TRUE)

# Create a tar.gz file that contains the package (complete with vignettes).
build()
