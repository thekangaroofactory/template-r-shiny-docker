

# ------------------------------------------------------------------------------
# Module Server logic
# ------------------------------------------------------------------------------

module_server <- function(id, r, path) {
  moduleServer(id, function(input, output, session) {


    # -- call kitems manager
    kitems::kitemsManager_Server(id = "kitems_id", r = r, path$data, create = FALSE, autosave = TRUE)
    
    
    # --------------------------------------------------------------------------
    # Outputs
    # --------------------------------------------------------------------------
    
    # -- sample_output
    output$module_output <- renderText({
      
      # -- get name
      r_filtered_items <- kitems::filtered_items_name("kitems_id")
      
      # -- return
      r_filtered_items})
    

  })
}

