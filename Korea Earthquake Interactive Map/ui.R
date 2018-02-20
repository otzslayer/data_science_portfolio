library(shinydashboard)
library(leaflet)

header <- dashboardHeader(
    title = "Korea Earthquakes"
)
sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Earthquakes", tabName="dashboard", icon = icon("bullseye"))
    )
)
body <- dashboardBody(
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
        tags$style(type = "text/css", ".irs-grid-text {color: white;}")
    ),
    tabItems(
        tabItem(tabName ="dashboard",
                # h2("Map"),
                fluidRow(
                    column(width = 12,
                           box(width = NULL, solidHeader = TRUE,
                               leafletOutput("quakemap", height = 400),
                               htmlOutput("countQuake", inline = FALSE)
                           )
                    ),
                    column(width=6,
                           box(title="Select Time Window",
                               background = "navy",
                               # solidHeader = TRUE,
                               width = NULL,
                               height = 170,
                               collapsible=TRUE,
                               dateRangeInput("daterange", "Select date range:",
                                              start = "2005-02-01",
                                              end   = as.character(as.Date(Sys.time())),
                                              min = "2005-02-01",
                                              max = as.character(as.Date(Sys.time()))),
                               actionButton("updateButton", "Update graphs")
                               # verbatimTextOutput("adf")
                           )),
                    column(width=6,
                           box(title="Magnitude Range",
                               background = "navy",
                               width = NULL,
                               height = 170,
                               collapsible=TRUE,
                                   sliderInput("range", "Magnitudes", 2, 5.8,
                                               value = c(2.0, 5.8),
                                               step = 0.1, width = "100%"
                                   )
                           )),
                    column(width=12,
                           box(title='Quake timeline', solidHeader=TRUE,
                               background = "light-blue",
                               width = NULL,
                               collapsible = TRUE,
                               plotOutput("magHist", height=200)
                               # actionButton("refreshButton", "Draw timeline")
                           )
                           
                    ),
                    column(width=6,
                           box(title="Histogram",
                               background = "light-blue",
                               solidHeader = TRUE,
                               width=NULL,
                               # status = "success",
                               collapsible=TRUE,
                               plotOutput("quakeHist", height = 200)
                               # actionButton("histButton", "Draw histogram")
                           )),
                    column(width=6, #3
                           box(title="Frequency table",
                               background = "light-blue",
                               # status="success",
                               solidHeader = TRUE,
                               width=NULL,
                               collapsible=TRUE,
                               tableOutput("outFrequency")
                           )) #
                ))
    ))

dashboardPage(skin='blue',
              header,
              sidebar,
              body
)