
# Base R Shiny image
FROM rocker/shiny

# system libraries
# Try to only install system libraries you actually need
# Package Manager is a good resource to help discover system deps
RUN apt-get update && apt-get install -y \
    libcurl4-gnutls-dev \
    libssl-dev

# Install R dependencies
# -- Shiny is already included in base image
# -- remotes will be used to install package from github
RUN R -e "install.packages(c('remotes', 'shinydashboard'))"
RUN R -e 'remotes::install_github("thekangaroofactory/kitems")'

# Make a directory in the container
RUN mkdir /home/shinyapp

# Copy the Shiny app code (add because folder already exists)
ADD shinyapp /home/shinyapp

# Expose the application port
EXPOSE 3838

# Run the R Shiny app
CMD ["R", "-e", "shiny::runApp('/home/shinyapp', host = '0.0.0.0', port = 3838)"]


# -- build docker image:
# docker build -t my-app-image .

# -- run docker image:
# docker run -p 3838:3838 my-app-image

# -- access application
# http://localhost:3838/

