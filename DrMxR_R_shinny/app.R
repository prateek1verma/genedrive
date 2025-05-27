# #
# # This is a Shiny web application. You can run the application by clicking
# # the 'Run App' button above.
# #
# # Find out more about building applications with Shiny here:
# #
# #    http://shiny.rstudio.com/
# #

library(grid)
library(gridExtra)
library(deSolve)
library(shiny)
library(nleqslv)
library(rootSolve)
library(markdown)
#library(plotly)
library(RColorBrewer)
library(bslib)
library(shinyjs)
library(thematic)
library(raster)
library(rasterVis)
#library(knitr)

# Define UI for application that draws a histogram
ui <- page_fluid(  # replaces fluidPage
  # theme = bs_theme(version = 4, bootswatch = "flatly"),  # default light theme
  # theme = bs_theme(version = 4, bootswatch = "cosmo"),
  # theme = bs_theme(version = 4, bootswatch = "lumen"), 
  theme = bs_theme(version = 4, bootswatch = "flatly"), 
  # useShinyjs(),
  # tags$head(
  #   tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  # ),
  tags$head(
    tags$style(HTML("
    h4 { font-size: 16px; }
    .form-group label { font-size: 14px; }
    .irs .irs-min, .irs .irs-max, .irs .irs-single, .irs .irs-bar, .irs-grid-text { font-size: 10px !important; }
  "))
  ),
  titlePanel(
    div(style = "display: flex; justify-content: space-between; align-items: center;",
        # Left side: logo + title
        div(style = "display: flex; align-items: center;",
            # img(src = "logo.png", height = "60px", style = "margin-right: 15px;"),
            span("DrMxR (Drive Mixer)", 
                 style = "font-size: 36px; font-weight: 500; color: #005B96;")
        ))),
    hr(),
  p(
    div(
      HTML("Disclaimer: This simulation is for research and educational purposes only and is not intended to be a tool for decision-making. There are many uncertainties about the details of Gene drive dynamics and there are many limitations to this simple model. This work is licensed under a <a href='https://creativecommons.org/licenses/by-sa/4.0/'> Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) License </a>."),
      style = "font-size: 11px;"  # or try "small", "10pt", etc.
    )
  ),
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
                       sliderInput(inputId = "fdd", label ="Fertility of DD", value = 1.0, min = 0, max = 1, step = 0.05),
                       div(style = "margin-top: 10px;", 
                           actionButton(
                             inputId = "reset_btn", 
                             label = "Reset", 
                             icon = icon("rotate-left"), 
                             style = "padding:4px 8px; font-size:12px; background-color:#f0f0f0; color:#333; border:1px solid #ccc; border-radius:4px;",
                             title = "Reset to default values"
                           )
                       )
                       
                ),
                
            )
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            navbarPage("Output:",
                       tabPanel("DrMxR",
                                fluidPage(
                                    fluidRow(
                                        
                                        h3("Gene Drive Dynamics"),
                                        p(HTML("The graph shows the frequency dynamics different genotypes in a single population")),
                                        wellPanel(
                                          style = "background-color: #f9f9f9; padding: 10px; border-radius: 10px;",
                                          # h4("The graph shows the frequency dynamics different genotypes in a single population"),
                                          plotOutput("distPlot", height = "520px",width = "520px")
                                        ),
                                        # card(
                                        #   full_screen = FALSE,
                                        #   class = "mb-4",  # margin-bottom
                                        #   style = "padding: 20px; border-radius: 12px; background-color: #f9f9f9;",
                                        #   plotOutput("distPlot", height = "600px")
                                        # ),
                                      
                                        
                                        # plotOutput("distPlot"),
                                        br(),
                                        br(),
                                        # p(HTML("<b>User instructions:</b> The graph shows the frequency different genotypes over time"))
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
server <- function(input, output,session) {
    
  observeEvent(input$reset_btn, {
  updateSliderInput(session, "p", value = 0.5)
  updateSliderInput(session, "dm", value = 0)
  updateSliderInput(session, "dim", value = 0)
  updateSliderInput(session, "ds", value = 0)
  updateSliderInput(session, "omega", value = 1.0)
  updateSliderInput(session, "nu", value = 1.0)
  updateSliderInput(session, "fww", value = 1.0)
  updateSliderInput(session, "fwd", value = 1.0)
  updateSliderInput(session, "fdd", value = 1.0)
  
  updateNumericInput(session, "xww0", value = 0.99)
  updateNumericInput(session, "xdd0", value = 0.01)
  updateSliderInput(session, "time_values", value = c(0, 20))
})

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
        
        p_vals <- seq(0, 1, length.out = 200)
        q_vals <- 1 - p_vals
        
        # Hardy-Weinberg genotype frequencies
        WW <- p_vals^2
        WD <- 2 * p_vals * q_vals
        DD <- q_vals^2
        
        x_hw <- WW + 0.5 * WD
        y_hw <- sqrt(3)/2 * WD
        
        # Choose a ColorBrewer palette
        my_colors <- colorRampPalette(rev(brewer.pal(9, "RdYlBu")))(100)
        # my_colors <- matlab.like(100) # colorRampPalette(rev(brewer.pal(9, "Spectral")))(100)
        color_breaks <- seq(0, 1, length.out = 100)
        
        # Normalize magnitude
        mag <- sqrt(values(field[[1]])^2 + values(field[[2]])^2)
        field_norm <- field
        values(field_norm[[1]]) <- values(field[[1]]) / max(mag, na.rm = TRUE)
        values(field_norm[[2]]) <- values(field[[2]]) / max(mag, na.rm = TRUE)
        
        
        # Create vectorplot without colorbar
        p <- vectorplot(field_norm,
                        ylab = NULL, xlab = NULL,
                        isField = 'dXY',
                        lwd.arrows = 1.5,
                        scaleSlope = FALSE, # <- Fix arrow length
                        arrow.length = 0.1,     # fixed size for arrows
                        col.arrows = '#404040',
                        interpolate = FALSE,
                        # length = 0.08,
                        maxpixels = 1e5,
                        key.arrow = NULL,
                        narrows = 4e2,
                        col.regions = my_colors,
                        at = color_breaks,
                        colorkey = FALSE,  # suppress default colorbar
                        par.settings = modifyList(PuOrTheme(), list(
                          axis.line = list(col = "transparent")
                        )),
                        scales = list(alternating = 0),
                        xlim = c(-0.1, 1.1),
                        ylim = c(-0.1, 1.1),
                        aspX = 0.2,
                        aspY = 0.2,
                        alpha = 0.6
        )
        
        # Save original panel
        original_panel <- p$panel
        
        # Custom panel
        p$panel <- function(...) {
          original_panel(...)  # draw background + arrows (vectorplot logic)
          
          # Triangle borders
          panel.lines(x = c(0, 0.5, 1, 0), 
                      y = c(0, sqrt(3)/2, 0, 0), 
                      col = "black", 
                      lwd = 3)
          
          grid.lines(x = unit(x_hw, "native"),
                     y = unit(y_hw, "native"),
                     gp = gpar(col = "#010240", lwd = 2))
          
          # Corner labels: use grid.text to guarantee visibility
          grid.text("WW", x = unit(0, "native"), y = unit(-0.05, "native"),
                    just = c("center", "top"), gp = gpar(cex = 1.2))
          grid.text("WD", x = unit(0.5, "native"), y = unit(sqrt(3)/2 + 0.04, "native"),
                    just = c("center", "bottom"), gp = gpar(cex = 1.2))
          grid.text("DD", x = unit(1, "native"), y = unit(-0.05, "native"),
                    just = c("center", "top"), gp = gpar(cex = 1.2))
        }
        
        grid.newpage()
        
        # Convert lattice plot to a grob
        p_grob <- grid.grabExpr(print(p))
        
        # Create colorbar and title grobs
        ckey <- draw.colorkey(
          key = list(
            col = my_colors,
            at = color_breaks,
            labels = list(cex = 0.8),
            height = 0.3,
            width = 1,
            space = "right"
          ),
          draw = FALSE
        )
        
        title_grob <- textGrob("Relative speed", rot = 90, gp = gpar(cex = 0.9))
        
        # Combine title + colorbar
        legend_grob <- arrangeGrob(title_grob, ckey, ncol = 2, widths = unit(c(1.5, 5), "lines"))
        
        # Final layout: left = plot, right = legend
        grid.newpage()
        
        grid.arrange(p_grob, legend_grob,
                     ncol = 2,
                     widths = unit.c(unit(1, "null"), unit(6, "lines")))
        
    },width = 520, height =520)
    
    
    output$distPlot1 <- renderPlot({
      p <- input$p 
      dm <- input$dm 
      dim <- input$dim 
      ds <- input$ds 
      omega <- input$omega 
      nu <- input$nu 
      fww <- input$fww 
      fwd <- input$fwd 
      fdd <- input$fdd
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
            # Add gridlines
            grid(nx = NULL, ny = NULL, col = "lightgray", lty = "dotted", lwd = 1)
        })
        
        # legend("right", c("Frequency of WW","Frequency of DD","Frequency of WD"),cex=1.5, pt.cex = 2,
        #       col = c(cols[1], cols[2], cols[3]), lty = 1, bty = "n")
        # Legend
        legend("right",
               legend = c("WW", "DD", "WD"),
               col = cols, lty = 1, lwd = 3,
               bty = "n", cex = 1.3, inset = 0.02)
        
        
    },width = 600,height = 500)
    
    output$plot2 <- renderPlot({
        plot(1:10 ,10:1)
    })
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)