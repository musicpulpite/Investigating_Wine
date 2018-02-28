###########################################
# Text cleanup function. Enter file 
# path. Output is a vector of words, all
# lower case, with punctuation and stopwords 
# removed.
#
# This function is adapted from commands
# included in Jockers, "Text Analysis with R"
###########################################

textCleanup = function(filepath) {
  #text = scan(filepath,what="character",sep="\n")
      text = filepath
  text = paste(text, collapse= " ")
  text = tolower(text)
  text = strsplit(text,"\\W")
  text = unlist(text)
  text = text[text!=""]
  text = text[text %in% stopwords ==FALSE ]
  return(text)
}


