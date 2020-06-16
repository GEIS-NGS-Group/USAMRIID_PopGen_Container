library(shiny)
library(msaR)
shinyServer(function(input,output) {
   output$msa <- renderMsaR(
   msaR("makona/results/maff_alignment/Brett424_1_S4_L001_mafft_align.out"))
})
