data(Exports)
g <- gvisGeoChart(Exports, locationvar="Country", colorvar = "Profit", options=list(width = 600, height = 600))
plot(g)

AndrewMap <- gvisMap(Andrew, "LatLong" , "Tip", 
                     options=list(showTip=TRUE, 
                                  height='900',
                                  showLine=TRUE, 
                                  enableScrollWheel=TRUE,
                                  mapType='terrain', 
                                  useMapTypeControl=TRUE))
plot(AndrewMap)








library(XML)
url <- "http://en.wikipedia.org/wiki/List_of_countries_by_credit_rating"
x <- readHTMLTable(readLines(url), which=3)
levels(x$Rating) <- substring(levels(x$Rating), 4, 
                              nchar(levels(x$Rating)))
x$Ranking <- x$Rating
levels(x$Ranking) <- nlevels(x$Rating):1
x$Ranking <- as.character(x$Ranking)
x$Rating <- paste(x$Country, x$Rating, sep=": ")
G <- gvisGeoChart(x, "Country", "Ranking", hovervar="Rating",
                  options=list(gvis.editor="S&P",
                               projection="kavrayskiy-vii",
                               colorAxis="{colors:['#91BFDB', '#FC8D59']}"))

plot(G)

library(XML)
eq <- read.csv("http://earthquake.usgs.gov/earthquakes/feed/v0.1/summary/2.5_week.csv")
eq$loc=paste(eq$Latitude, eq$Longitude, sep=":")

G <- gvisGeoChart(eq, "loc", "Depth", "Magnitude",
                  options=list(displayMode="Markers", 
                               colorAxis="{colors:['purple', 'red', 'orange', 'grey']}",
                               backgroundColor="lightblue"), chartid="EQ")


plot(G)



Org <- gvisOrgChart(Regions, options=list(width=600, height=250,
                                          size='large', allowCollapse=TRUE))
plot(Org)
