

# ------------------------------------------------------------------------------
# Shiny module UI
# ------------------------------------------------------------------------------

# -- Sample_output
module_output_UI <- function(id) {
  
  # namespace
  ns <- NS(id)
  
  textOutput(ns("module_output"))
  
}
