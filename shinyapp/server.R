

# ------------------------------------------------------------------------------
# This is the server definition of the Shiny web application
# ------------------------------------------------------------------------------

# -- Define server logic
shinyServer(
    function(input, output){
      
      cat("-------------------------------------------------- \n")
      cat("Starting application server \n")
      cat("-------------------------------------------------- \n")
      
      # -- declare r communication object
      r <- reactiveValues()
      
      
      # -- kitems: generate dynamic sidebar
      output$menu <- renderMenu(kitems::dynamic_sidebar(r))
      
      
      # -------------------------------------
      # Launch modules
      # -------------------------------------
      
      # -- init module
      module_server(id = "shiny_module_id", r = r, path = path)
        
    }
)
