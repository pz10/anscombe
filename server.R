require(shiny)

shinyServer(function(input, output) {
        # dataset 1
        model1 <- reactive({
                brushed_data1 <- brushedPoints(anscombe, input$brush1,
                                              xvar = "x1", yvar = "y1")
                if(nrow(brushed_data1) < 2){
                        return(NULL)
                }
                lm(y1 ~ x1, data = brushed_data1)
        })
        
        output$R2Out1 <- renderText({
                if(is.null(model1())){
                        "No Model Found"
                } else {
                        summary(model1())$r.squared
                }
        })
        
        output$plot1 <- renderPlot({
                plot(anscombe$x1, anscombe$y1, xlab = "x1",
                     ylab = "y1", main = "anscombe's dataset 1",
                     cex = 1.5, pch = 16, bty = "n")
                if(!is.null(model1())){
                        abline(model1(), col = "blue", lwd = 2)
                }
        })
        
        # dataset 2
        model2 <- reactive({
                brushed_data2 <- brushedPoints(anscombe, input$brush2,
                                              xvar = "x2", yvar = "y2")
                if(nrow(brushed_data2) < 2){
                        return(NULL)
                }
                lm(y2 ~ x2, data = brushed_data2)
        })
        
        output$R2Out2 <- renderText({
                if(is.null(model2())){
                        "No Model Found"
                } else {
                        summary(model2())$r.squared
                }
        })
        
        output$plot2 <- renderPlot({
                plot(anscombe$x2, anscombe$y2, xlab = "x2",
                     ylab = "y2", main = "anscombe's dataset 2",
                     cex = 1.5, pch = 16, bty = "n")
                if(!is.null(model2())){
                        abline(model2(), col = "blue", lwd = 2)
                }
        })
        
        # dataset 3
        model3 <- reactive({
                brushed_data3 <- brushedPoints(anscombe, input$brush3,
                                               xvar = "x3", yvar = "y3")
                if(nrow(brushed_data3) < 2){
                        return(NULL)
                }
                lm(y3 ~ x3, data = brushed_data3)
        })
        
        output$R2Out3 <- renderText({
                if(is.null(model3())){
                        "No Model Found"
                } else {
                        summary(model3())$r.squared
                }
        })
        
        output$plot3 <- renderPlot({
                plot(anscombe$x3, anscombe$y3, xlab = "x3",
                     ylab = "y3", main = "anscombe's dataset 3",
                     cex = 1.5, pch = 16, bty = "n")
                if(!is.null(model3())){
                        abline(model3(), col = "blue", lwd = 2)
                }
        })
        
        # dataset 4
        model4 <- reactive({
                brushed_data4 <- brushedPoints(anscombe, input$brush4,
                                               xvar = "x4", yvar = "y4")
                if(nrow(brushed_data4) < 2){
                        return(NULL)
                }
                lm(y4 ~ x4, data = brushed_data4)
        })
        
        output$R2Out4 <- renderText({
                if(is.null(model4())){
                        "No Model Found"
                } else {
                        summary(model4())$r.squared
                }
        })
        
        output$plot4 <- renderPlot({
                plot(anscombe$x4, anscombe$y4, xlab = "x4",
                     ylab = "y4", main = "anscombe's dataset 4",
                     cex = 1.5, pch = 16, bty = "n")
                if(!is.null(model4())){
                        abline(model4(), col = "blue", lwd = 2)
                }
        })
})
