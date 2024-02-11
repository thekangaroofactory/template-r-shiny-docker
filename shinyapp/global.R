

# ------------------------------------------------------------------------------
# Init. environment (shared with both ui.R & server.R)
# ------------------------------------------------------------------------------

# -- Attach dependencies
library(shiny)
library(shinydashboard)


# -- Declare shared path
path <- list(project = "./",
             script = "./R",
             data = "../data")


# -- Load Modules & Scripts
for (nm in list.files(path$script, full.names = TRUE, recursive = TRUE, include.dirs = FALSE))
{
  cat("Loading code from: ", nm, "\n")
  source(nm)
}
rm(nm)

