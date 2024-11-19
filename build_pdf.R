# build the slides as a pdf
library("renderthis")
Sys.setenv(CHROMOTE_CHROME="C:/Users/L107067/AppData/Local/Google/Chrome/Application/")
# this works
renderthis::to_pdf(from = "index.Rmd", to = "lvim_icsds2023.pdf")
# I do want partial slides
renderthis::to_pdf(from = "index.Rmd", to = "lvim_icsds2023.pdf", partial_slides = TRUE)

# renderthis::to_pdf(from = "index.Rmd", to = "lvim_icsds2023.pdf",
#                    complex_slides = TRUE, partial_slides = FALSE)
