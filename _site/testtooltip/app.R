library(shiny)
library(DT)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Test Tooltip"),

     
    sidebarLayout(
        sidebarPanel(
        
        ),

        # Show a plot of the generated distribution
        mainPanel(
            dataTableOutput('table')
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$table <- DT::renderDataTable({

        DT::datatable(iris, rownames = FALSE, options = list(columnDefs = list(list(visible=FALSE, targets=c(2,3,4))),rowCallback = JS(
            "function(row, data) {",
            "var full_text = 'test line break' + data[2] + '  new line:' + data[3] + '  new line:'+ data[4];",
            "$('td:eq(0)', row).attr('title',full_text);",
            "}")))
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)
