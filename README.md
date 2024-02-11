# template-r-shiny-docker

Template for create a R / Shiny app running in a Docker container

## Two files implementation

The Shiny app is based on the two files ui.R / server.R implementation.

## Global.R

This template implements the global.R file to share objects between ui.R and server.R

-   attach dependencies (library)
-   declared shared objects
-   source code

## Module

This template implements the server module architecture:

-   the main server.R function calls a module_server function defined in R/module.
-   A communication object (r \<- reactiveValues()) is defined to share reactive values between modules.

## kitems

This template implements the kitems package module:

-   the kitemsManager_Server function is called from the module_server function (submodule architecture)
-   the main server.R defines an output to manage the dynamic_sidebar
-   the main ui.R uses this output to add a dynamic sidebarMenu
-   the main ui.R contains a tabItem with the kitems admin console
