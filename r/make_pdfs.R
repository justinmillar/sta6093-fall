make_pdfs <- function(file = "all"){
  
  if (file == "all") {
    file_list <- list.files(path = "content/post/", pattern = "*.Rmd", 
                            recursive = TRUE, full.names = TRUE)
    for (f in file_list){
      rmarkdown::render(f, output_format = "pdf_document", 
                        output_dir = "static/pdf", 
                        output_options = list(
                          pandoc_args = c("--metadata=linkcolor:'blue'")))
    }
  } else {
    rmarkdown::render(file, output_format = "pdf_document", 
                      output_dir = "static/pdf", 
                      output_options = list(
                        pandoc_args = c("--metadata=linkcolor:'blue'")))
  }
}
