

# ------------------------------------------------------------------------------
# This is the user-interface definition of the Shiny web application
# ------------------------------------------------------------------------------

# -- Define the header
header <- dashboardHeader(title = "r_shiny_docker")


# -- Define the Sidebar
sidebar <- dashboardSidebar(
  
  # -- static section
  sidebarMenu(
    
    menuItem("Home", tabName = "home", icon = icon("home"), selected = TRUE)),
  
  # -- kitems: add dynamic section
  sidebarMenu(tabName = "kitems", sidebarMenuOutput("menu"))
  
)


# -- Define the body
body <- dashboardBody(
  
  tabItems(
    
    # -- Home
    tabItem(tabName = "home",
            
            # -- standard text
            h2("Home"),
            p("This is a template r-shiny-docker app."),
            
            # -- module output
            h2("Module"),
            p("This is an output from the module:"),
            module_output_UI("shiny_module_id")),
    
    
    # -- kitems: admin console
    tabItem(tabName = "kitems_id",
            
            # -- Admin UI
            fluidRow(
              column(width = 12,
                     
                     kitems::admin_ui("shiny_module_id-kitems_id"))))
    
    
  ) # tabItems
) # dashboardBody


# -- Put them together into a dashboard
dashboardPage(
  header,
  sidebar,
  body
)

