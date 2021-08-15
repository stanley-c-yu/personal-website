shift <- function(char, key) {
  # Check if character is alphabetic 
  if (grepl("^[A-Za-z]+$", char, perl = T) == TRUE) {
    # Re-map lower or uppercase letters by downshifting with the key number 
    n = utf8ToInt(ifelse(char %in% LETTERS, 'A', 'a'))
    new_char = intToUtf8( (utf8ToInt(char) + key - n) %% 26 + n )
  } else {
    # Character is white space or punctuation, and we just return it 
    new_char = char
  }
}

rotate <- function(text, key) {
  # Break the text into a list of split characters 
  broken_text = unlist(strsplit(text, ""))
  # Re-map characters using sapply and shift helper function
  new_text = sapply(broken_text, shift, key)
  # Collapse the individual characters back into a string
  text = paste(new_text, collapse = '')
  #print(text)
  return(text)
}