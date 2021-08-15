#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
source("rotate.R")

# Define UI for application that draws a histogram
ui <- fluidPage(
  theme = shinytheme("flatly"),
  # shinythemes::themeSelector(),

    # Application title
    titlePanel("SYU"),
	
	sidebarLayout(
		sidebarPanel(
		  img(src = "profile_pic.jpg", height = 200, width = 200),
			h3("Hello, I'm Stanley Yu."),
			p("I'm a programmer and a data scientist by training."),
			br(),
			p("My work mostly revolves around developing machine learning models 
			  and performing data analysis in Python and R."),
			br(), 
			p("I'm passionate about engineering clean, modular code in the name of performing
			  crucial data analysis and developing awesome machine learning tools.  Along 
			  the way, I've come to realize a love for the art of programming and the field 
			  of computer science, and I'm always thrilled to take every opportunity 
			  afforded to me that allows me to continue to grow in this field."),
			br(),
			p("When I'm not at work, I enjoy playing tennis, skiing, and hiking, 
			  as well as sitting down to play video games with my friends."),
			h3("Contact: "),
			p("Email: delyjf88@rxltw.nzx"),
			p( 
			    a("GitHub", 
			      href= "https://github.com/stanley-c-yu?tab=repositories")
			    ),
			p(
			    a("LinkedIn", 
			      href = "https://www.linkedin.com/in/stanley-c-yu/")
			),
			br(),
			fluidRow(
			  textInput(
			    "text",
			    "",
			    value = "Her name is November.  She holds the key."
			  ),
			),
			fluidRow(
			  sliderInput(
			    "slider1",
			    "",
			    min = 0, max = 26, value = 0)
			),
			fluidRow(
			  textOutput("selected_var")
			)
		),
		mainPanel(
		  h2("About Me"),
		  h3("Education:"),
		  h4("M.S. Data Science, Northeastern University | 2020"),
		  h4("B.A. International Relations, Boston University | 2014"),
		  h3("Experience: "),
		  h4("Business Systems Analyst, Hartford Healthcare | August 2021 - Present"),
		  p("- Develop dashboards using BI tools, e.g. Tableau and QlikSense."),
		  p("- Interface with electronic health records via Epic Health Systems' databases."),
		  p("- Design and implement relational databases and a data lake for the Digestive Health Center."), 
		  p("- Research machine learning models for document classification of electronic health records."),
		  h4("Data Analyst, Tech For Campaigns | June 2021 - Present"),
		  p("- Analyze email and revenue statistics for a Democratic Virginia House Delegate using R and Python."),
		  p("- Consolidate and organize email and revenue information from disparate sources for consumption."),
		  p("- Developed a web scraper using Beautiful Soup to automate information extraction."),
		  h4("Intern, Hartford Healthcare | August 2020 - August 2021"), 
		  p("- Research machine learning models for document classification of electronic health records."),
		  h4("Data Analyst Intern, Human Rights Campaign | January 2018 - May 2018"), 
		  p("- Perform data analysis in support of fundraising campaigns."),
		  h3("Programming Languages: "),
		  p(" - Python, R, JavaScript, SQL"),
		  h3("Software: "),
		  p("- Tableau, QlikSense, ArcGIS, QGIS, Django, RShiny"),
		  )
	 )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$selected_var <- renderText({
    rotate(input$text, input$slider1)
  })

}

# Run the application 
shinyApp(ui = ui, server = server)
