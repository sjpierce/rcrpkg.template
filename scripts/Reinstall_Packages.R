# Check your current working directory so you know where files will be written.
getwd()

# Ensure any already installed dependencies are at their latest versions.
update.packages(ask='graphics', checkBuilt=TRUE)

# Save current packages and their versions to object called ip
ip <- as.data.frame(installed.packages())
dim(ip)

# Save the object as an .rds file
saveRDS(ip, paste0("Previously_Installed_R_Packages_", Sys.Date(), ".rds"))

# After updating base R, load the file and reinstall (possibly on a different)
# computer).
ip <- readRDS("Previously_Installed_R_Packages_2024-06-16.rds")

# Ensure any already installed dependencies are at their latest versions.
update.packages(ask='graphics', checkBuilt=TRUE)
install.packages(ip$Package)
