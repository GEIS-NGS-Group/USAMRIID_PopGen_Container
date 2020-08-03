library(shiny)
library(msaR)
shinyServer(function(input,output) {
   output$msa <- renderMsaR(
   msaR("../data/example_data/results/maff_alignment/Brett424_1_S4_L001_mafft_align.out"))
})
