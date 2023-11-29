library(shiny)

shinyUI(
  
  fluidPage(tags$head(tags$link(rel = "icon", type = "image/x-icon", href =
                                   "https://math.bu.edu/DYSYS/chaos-game/GRAPHICS/sierp-triangle.GIF")),
    
    tags$title("Chaos Game"),
    
    titlePanel("Chaos Game"),
    
    sidebarLayout(
      
      sidebarPanel(
        
        sliderInput("iteratii",
                    label = h5(HTML((paste0("Numar de iteratii (", em("n"),"):")))),
                    min = 1000, max = 10000, value = 1000, step=1000),br(),
        
        selectInput("culoare",
                    label = h5(HTML((paste0("Culoare:")))),
                    list("Portocaliu","Rosu","Verde","Mov")),
        
        selectInput("forma_folosita",
                    label = h5(HTML((paste0("Forma folosita pentru generarea triunghiului:")))),
                    list("Triunghi","Cerc","Stea","Patrat","Cruce")),

        
        br(),
        
        div("Ciobotaru Robert"),
        
        div("Tudor Ghidarcea"),
        
        div("Dumitrescu Dumitru-Dragoș"),
        
        div("Grupa 241")
      ),
      mainPanel(
        
        plotOutput("plot", width="100%"), HTML("<hr style='height: 2px; color: #cc0000;
                                                   background-color: #cc0000; border: none;'>"),
        
        p("Reprezentare grafica Chaos Game.",style="margin-top:-10px;margin-left:150px")
        
        
      )
    )
  )
)
