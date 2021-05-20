# #
# # This is a Shiny web application. You can run the application by clicking
# # the 'Run App' button above.
# #
# # Find out more about building applications with Shiny here:
# #
# #    http://shiny.rstudio.com/
# #

library(deSolve)
library(shiny)
#library(plotly)
library(RColorBrewer)
#library(pracma)
library(raster)
library(rasterVis)
#library(knitr)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    # Application title
    titlePanel("DrMxR (Drive Mixer)"),
    hr(),
    p(div(HTML("Disclaimer: This simulation is for research and educational purposes only and is not intended to be a tool for decision-making. There are many uncertainties and debates about the details of Gene drive dynamics and there are many limitations to this simple model. This work is licensed under a <a href=https://creativecommons.org/licenses/by-sa/4.0/> Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) License </a>"))),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            
            fluidRow(
                column(width=6,
                       h4(div(HTML("<em>Distorsion...</em>"))),           
                       sliderInput(inputId = "p", label ="Distorsion probability", value = 0.5, min = 0.5, max = 1, step = 0.05),
                       h4(div(HTML("<em>Viability Selection...</em>"))),
                       sliderInput(inputId = "dm", label ="Medea drive efficiency", value = 0, min = 0, max = 1, step = 0.05),
                       sliderInput(inputId = "dim", label ="Inverse medea drive efficiency", value = 0, min = 0, max = 1, step = 0.05),
                       sliderInput(inputId = "ds", label ="Semele drive efficiency", value = 0, min = 0, max = 1, step = 0.05),
                       sliderInput(inputId = "omega", label ="Viability of WD", value = 1.0, min = 0, max = 1, step = 0.05),
                       sliderInput(inputId = "nu", label ="Viablity of DD", value = 1.0, min = 0, max = 1, step = 0.05),
                ),
                column(width=6,
                       h4(div(HTML("<em>Fertility Selection...</em>"))),
                       sliderInput(inputId = "fww", label ="Fertility of WW", value = 1.0, min = 0, max = 1, step = 0.05),
                       sliderInput(inputId = "fwd", label ="Fertility of WD", value = 1.0, min = 0, max = 1, step = 0.05),
                       sliderInput(inputId = "fdd", label ="Fertility of DD", value = 1.0, min = 0, max = 1, step = 0.05)
                )
            )
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            navbarPage("Output:",
                       tabPanel("DrMxR",
                                fluidPage(
                                    fluidRow(
                                        
                                        h3("Gene Drive Population dynamics"),
                                        p(HTML("Simulate the population dynamics of in a single population.")),
                                        
                                        plotOutput("distPlot"),
                                        br(),
                                        br(),
                                        br(),br(),br(),
                                        p(HTML("<b>User instructions:</b> The graph shows the frequency different genotypes over time"))
                                    )
                                )
                       ),       
                       
                       tabPanel("Frequency Vs Time",
                                fluidPage(
                                    h3("Frequency versus time plot of gene drive population dynamics"),
                                    plotOutput("distPlot1"),
                                    br(),
                                    br(),
                                    br(),br(),br(),
                                    fluidRow(
                                        # Input: Numeric entry for number of obs to view ----
                                        column(width = 6,
                                               numericInput(inputId = "xww0", label = "Initial frequency of WW:", value = 0.99)),
                                        column(width = 6,
                                               numericInput(inputId = "xdd0", label = "Initial frequency of DD:", value = 0.01))),
                                    column(width = 12,
                                           sliderInput(inputId = "time_values", label = "Time interval", value = c(0, 20), min = 0, max = 200))
                                )),
                       
                       tabPanel("Manual",
                                fluidPage(
                                    br(),
                                    includeMarkdown("About.Rmd")
                                ))
                       
            )
            
            ,width=7)
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        u <- v <- raster(xmn=0, xmx=1, ymn=0, ymx=1, ncol=5e2, nrow=5e2)
        x <- init(u, v='x')
        y <- init(u, v='y')
        
        p <- input$p 
        dm <- input$dm 
        dim <- input$dim 
        ds <- input$ds 
        omega <- input$omega 
        nu <- input$nu 
        fww <- input$fww 
        fwd <- input$fwd 
        fdd <- input$fdd
        
        #Fxww <- fww * fww * x * x + (1-p)*(1-0.5*ds)*fww*fwd*x*(1-x-y) + (1-p)*(1-0.5*ds)*(1-dm)*fww*fwd*x*(1-x-y) + (1-p)*(1-p)*(1-dm)*fwd*fwd*(1-x-y)*(1-x-y)
        #Fxwd <- omega*(2* p*(1-0.5*ds)*(1-0.5*dim)*fww*fwd*x*(1-x-y) + 2*(1-p)*fwd*fdd*(1-x-y)*y + 0.5*(2-ds)*(2-dim)*fww*fdd*x*y + 2*p*(1-p)*fwd*fwd*(1-x-y)*(1-x-y))
        #Fxdd <- nu*( fdd*fdd*y*y + 2*p*fwd*fdd*(1-x-y)*y + p*p*fwd*fwd*(1-x-y)*(1-x-y) )
        
        #Favg <- Fxww + Fxwd + Fxdd
        
        x1 = 0
        y1 = 0
        x2 = 1
        y2 = 0
        x3 = 0.5
        y3 = sqrt(3)/2
        xlam <- ((y2-y3)*(x-x3) +(x3-x2)*(y-y3))/((y2-y3)*(x1-x3)+(x3-x2)*(y1-y3))
        ylam <- ((y3-y1)*(x-x3) +(x1-x3)*(y-y3))/((y2-y3)*(x1-x3)+(x3-x2)*(y1-y3))
        
        Fxww <- fww * fww * xlam * xlam + (1-p)*(1-0.5*ds)*fww*fwd*xlam*(1-xlam-ylam) + (1-p)*(1-0.5*ds)*(1-dm)*fww*fwd*xlam*(1-xlam-ylam) + (1-p)*(1-p)*(1-dm)*fwd*fwd*(1-xlam-ylam)*(1-xlam-ylam)
        Fxwd <- omega*(2* p*(1-0.5*ds)*(1-0.5*dim)*fww*fwd*xlam*(1-xlam-ylam) + 2*(1-p)*fwd*fdd*(1-xlam-ylam)*ylam + 0.5*(2-ds)*(2-dim)*fww*fdd*xlam*ylam + 2*p*(1-p)*fwd*fwd*(1-xlam-ylam)*(1-xlam-ylam))
        Fxdd <- nu*( fdd*fdd*ylam*ylam + 2*p*fwd*fdd*(1-xlam-ylam)*ylam + p*p*fwd*fwd*(1-xlam-ylam)*(1-xlam-ylam) )
        
        Favg <- Fxww + Fxwd + Fxdd
        
        u1 <- Fxww - xlam*Favg
        v1 <- Fxdd - ylam*Favg
        
        u <- (x1-x3)*u1 + (x2-x3)*v1
        v <- (y1-y3)*u1 + (y2-y3)*v1
        
        u[-sqrt(3)*x+y > 0] <- NaN
        v[y + sqrt(3)*x > sqrt(3)] <- NaN
        
        u[-sqrt(3)*x+y == 0] <- 0
        #v[y + sqrt(3)*x == sqrt(3)] <- 0
        
        field <- stack(u, v)
        names(field) <- c('u', 'v')
        
        # draw the vectorfield with the given set of parameters
        # col.regions = jet
        # jet <- colorRampPalette(c('#00007F', 'blue', '#007FFF', 'cyan','#7FFF7F', 'yellow', '#FF7F00', 'red', '#7F0000'))
        # range = seq(0, 0.5, 0.05)
        
        vectorplot(field, 
                   ylab = deparse(substitute('Frequency of WD')), 
                   xlab = deparse(substitute('Frequency of WW - DD')),
                   lwd.arrows=1.0, col.arrows='black',
                   interpolate = TRUE,
                   length=0.08,
                   maxpixels=1e5,
                   key.arrow = NULL,
                   isField='dXY', 
                   narrows=3e2,  # defines total number of arrows in the vector-plot
                   par.settings=PuOrTheme(), 
                   scales=list(alternating=0),  # removes the x-y axes numbers
                   scaleSlope=TRUE,aspX=0.2,aspY=0.2,alpha=0.6)
        #segments(x0 = 0, y0 = 0, x1 = 0.5, y1 = sqrt(3)/2, lwd = 5)               # Draw one line
        #segments(x0 = 0.5, y0 = sqrt(3)/2, x1 = 1, y1 = 0, lwd = 5)               # Draw one line
        #segments(x0 = 0, y0 = 0.15, x1 = 1, y1 = 0.15, lwd = 5)               # Draw one line
        #par(new=TRUE)
        #abline(1,-1, col="red")
    },width = 500, height = 500)
    
    output$distPlot1 <- renderPlot({
        popdyn_equations <- function(time, variables, parameters) {
            with(as.list(c(variables, parameters)), {
                Fxww <- fww * fww * xww * xww + (1-p)*(1-0.5*ds)*fww*fwd*xww*(1-xww-xdd) + (1-p)*(1-0.5*ds)*(1-dm)*fww*fwd*xww*(1-xww-xdd) + (1-p)*(1-p)*(1-dm)*fwd*fwd*(1-xww-xdd)*(1-xww-xdd)
                Fxwd <- omega*(2* p*(1-0.5*ds)*(1-0.5*dim)*fww*fwd*xww*(1-xww-xdd) + 2*(1-p)*fwd*fdd*(1-xww-xdd)*xdd + 0.5*(2-ds)*(2-dim)*fww*fdd*xww*xdd + 2*p*(1-p)*fwd*fwd*(1-xww-xdd)*(1-xww-xdd))
                Fxdd <- nu*( fdd*fdd*xdd*xdd + 2*p*fwd*fdd*(1-xww-xdd)*xdd + p*p*fwd*fwd*(1-xww-xdd)*(1-xww-xdd) )
                Favg <- Fxww + Fxwd + Fxdd
                dxww <- Fxww - xww*Favg
                # dxwd <- Fxwd - Favg
                dxdd <- Fxdd - xdd*Favg
                return(list(c(dxww, dxdd)))
            })
        }
        
        popdyn_values_1 <- reactive({
            req(input$xww0, input$xdd0, input$time_values, input$p, input$dm, input$ds, input$dim, input$omega, input$nu, input$fww, input$fwd, input$fdd)
            ode(y = c(xww = input$xww0, xdd = input$xdd0),
                times = seq(input$time_values[1], input$time_values[2],by = 0.01),
                func = popdyn_equations,
                parms = c(p = input$p, dm = input$dm, dim = input$dim, ds = input$ds, omega = input$omega, nu = input$nu, fww = input$fww, fwd = input$fwd, fdd = input$fdd),
            )
        })
        
        val <- as.data.frame(popdyn_values_1())
        cols <- brewer.pal(3, "Dark2")
        with(val, {
            #p=plot_ly(data = val, x=~times, y=~xww, color=~variableLegend, type='scatter', mode='lines')
            plot(time, xww, type = "l", col = cols[1],
                 xlab = "Time", ylab = "Frequency of genotype",ylim = c(0,1),lwd=3)
            lines(time, xdd, col = cols[2],lwd=3)
            lines(time, 1-xww-xdd, col = cols[3],lwd=3)
        })
        
        legend("right", c("Frequency of WW","Frequency of DD","Frequency of WD"),cex=1.5, pt.cex = 2,
               col = c(cols[1], cols[2], cols[3]), lty = 1, bty = "n")
        
        
    },width = 600,height = 500)
    
    output$plot2 <- renderPlot({
        plot(1:10 ,10:1)
    })
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)