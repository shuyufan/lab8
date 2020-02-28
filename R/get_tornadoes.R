url <- "http://www.tornadohistoryproject.com/custom/27175059/table"
tornadodata <- read_html(url)
table <- tornadodata %>% 
  html_nodes("#results") %>% 
  html_table(header = TRUE) %>% 
  .[[1]] %>% 
  janitor::clean_names() %>% 
  select(spc_number:lift_lon)
saveRDS(table, file = "data/tornado.RDS")