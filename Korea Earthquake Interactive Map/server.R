library(shinydashboard)
library(leaflet)
library(dplyr)
require(reshape2)
library(scales)
require(ggplot2)
library(readr)

quake.file <- "data/kor_earth.csv"  
quake <- read_csv(quake.file) 

quake <- quake %>%
    mutate(dateTime = as.POSIXct(dateTime)) %>%
    mutate(latitude = as.numeric(gsub(x = quake$latitude, pattern = " N", replacement = ""))) %>%
    mutate(longitude = as.numeric(gsub(x = quake$longitude, pattern = " E", replacement = "")))

quake.sub <- quake
quake.sub$size <- cut(quake.sub$mag,
                      c(2, 3, 4, 5, 5.8),
                      labels = c("2 to 3", ">3 to 4", ">4 to 5", ">5 to 6"))
pallet <- colorFactor(c("gray32", "dodgerblue4",  "purple", "firebrick1"),
                      domain = c("2 to 3", ">3 to 4", ">4 to 5", ">5 to 6"))

function(input, output, session) {
    #filter quake fn
    getQuakes <- function() {
        startDate <- as.POSIXlt(paste(as.character(input$daterange[1]),
                                      "00:00:01"))
        endDate <- as.POSIXlt(paste(as.character(input$daterange[2]),
                                    "23:59:01"))
        quake.sub <- quake.sub[quake.sub$mag >= input$range[1] & quake.sub$mag <= input$range[2],]
        quake.s <- quake.sub[quake.sub$dateTime > startDate &
                                 quake.sub$dateTime < endDate,]
        return(quake.s)
    }
    #leaflet quake map
    qm <- function() {
        quake.get <- getQuakes()
        # create html for popup
        pu <- paste("<b>Mag:</b>", as.character(quake.get$mag), "<br>",
                    "<b>Time:</b>", as.character.POSIXt(quake.get$dateTime),
                    "<br>",
                    "<b>Place:</b>", quake.get$place #noticed some pecularities with the place, need to re-check
        )
        #map
        tempmap <- leaflet(data=quake.get) %>% addProviderTiles('MapBox.asheshwor.m4g4pnci') %>%
            setView((min(quake$longitude) + max(quake$longitude))/2, (min(quake$latitude) + max(quake$latitude))/2,  zoom = 6) %>%
            addCircleMarkers(~longitude, ~latitude,
                             popup = pu,
                             radius = ~((1.5)^mag),
                             color = ~pallet(size),
                             stroke = FALSE, fillOpacity = 0.6) %>%
            addLegend(
                "bottomleft", pal = pallet,
                values = sort(quake.get$size),
                title = "Magnitude"
                # labFormat = labelFormat()
            )
    }
    ## timeline
    drawHist <- eventReactive(input$updateButton, {
        quake.sub <- getQuakes()
        ggplot(quake.sub, aes(dateTime, mag, colour=size)) +
            geom_bar(stat="identity", colour="gray60",
                     fill="gray60", alpha=0.5) +
            geom_point(size=3) +
            scale_colour_manual(name = "size",
                                values = c("gray32", "dodgerblue4",
                                           "slateblue4", "purple",
                                           "firebrick1")) +
            scale_x_datetime(breaks = date_breaks("1 month"),
                             labels = date_format("%d-%b-%Y")) +
            scale_y_continuous(breaks=c(seq(1,9,2))) +
            # ylim(c(2, 8)) +
            xlab("") + ylab("Magnitude") +
            theme(plot.background = element_rect(fill = "white", colour = NA),
                  panel.background = element_rect(fill = "white", colour = NA),
                  title = element_text(colour="black", size = 13),
                  axis.title.x = element_text(hjust=1, colour="black", size = 8),
                  axis.title.y = element_text(vjust=90, colour="dodgerblue4", size = 8),
                  panel.grid.major = element_blank(),
                  panel.grid.minor = element_blank(),
                  panel.border = element_blank(),
                  legend.position = "none")
    })
    quakeSummaryTable <- eventReactive(input$updateButton, {
        quake.sub <- getQuakes()
        freq <- table(quake.sub$size)
        ftab <- data.frame(cbind(names(freq),
                                 freq,
                                 round(prop.table(freq)*100, 2)
        ))
        names(ftab) <- c("Magnitude", "Freq.", "%")
        row.names(ftab) <- NULL
        ftab
    })
    
    #  frequency table
    output$outFrequency <- renderTable(quakeSummaryTable())
    
    quakeHist <- eventReactive(input$updateButton, {
        quake.sub <- getQuakes()
        #  draw quake histogram
        ggplot(data=quake.sub, aes(x=mag)) +
            geom_histogram(aes(fill = ..count..), binwidth=0.25,
                           colour = "white") +
            xlab("Magnitude") + ylab("") +
            scale_fill_gradient("Count", low = "darkgreen", high = "red") +
            theme(plot.background = element_rect(fill = "white", colour = NA),
                  panel.background = element_rect(fill = "white", colour = NA),
                  title = element_text(colour="black", size = 13),
                  panel.grid.major = element_blank(),
                  panel.grid.minor = element_blank(),
                  panel.border = element_blank(),
                  legend.position = "right")
    }
    )

    #update map
    output$quakemap <- renderLeaflet(qm())
    #count total quakes
    output$countQuake <- renderText(paste("There were a total of<b>",
                                          nrow(getQuakes()),
                                          "</b> quakes recorded from <b>",
                                          as.character(input$daterange[1]),
                                          "</b>to<b>", as.character(input$daterange[2]),
                                          "</b>.<br>"))
    output$adf <- renderText({
        paste(as.character(input$daterange))
    })
    #update timeline
    output$magHist <- renderPlot(
        drawHist()
    )
    #update histogram
    output$quakeHist <- renderPlot(quakeHist())
    #update table
    # output$quaketable <- renderDataTable(quakeDataTable())
    output$quaketable <- renderDataTable(getQuakes())
}