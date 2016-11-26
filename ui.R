require(shiny)
#

library(shiny)
shinyUI(fluidPage(
        titlePanel("Exploring R2 in anscombe’s quartet dataset"),
        sidebarLayout(
                sidebarPanel(
                        h4("Use the mouse to select data points (input) from each of the individual datasets on the right. For each selection, the associated R2 would be displayed below (output)"),
                        h4("Note that selecting all points would result in an R2 of about 0.666, irrespectively of the chosen dataset"),
                        h3("Dataset 1 R2"),
                        textOutput("R2Out1"),

                        h3("Dataset 2 R2"),
                        textOutput("R2Out2"),
                        
                        h3("Dataset 3 R2"),
                        textOutput("R2Out3"),
                        
                        h3("Dataset 4 R2"),
                        textOutput("R2Out4"),
                        
                        helpText(   a("more information on anscombe’s quartet",
                                      href="https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/anscombe.html")
                        )
                ),
                mainPanel(
                        fluidRow(
                        splitLayout(#cellWidths = c("50%", "50%"),
                        plotOutput("plot1", brush = brushOpts(
                                id = "brush1"
                        )),
                        plotOutput("plot2", brush = brushOpts(
                                id = "brush2"
                        ))
                        )),
                        
                        fluidRow(
                                splitLayout(
                                        plotOutput("plot3", brush = brushOpts(
                                                id = "brush3"
                                        )),
                                        plotOutput("plot4", brush = brushOpts(
                                                id = "brush4"
                                )  
                        )
                        )
                        )
                )
        )
))
