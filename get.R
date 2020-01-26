install.packages("rvest")
install.packages("stringr")

library(rvest)
library(stringr)
library(dplyr)

url <- "https://news.joins.com/politics/bluehouse/list?cloc=joongang-section-subsection"


read_news <-  function(url){
    read_html(url) %>%
    html_nodes("div.list_basic li h2 a") %>%
    html_text() %>%
    return()
}

read_news(url)
