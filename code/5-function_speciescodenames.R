#Function for species code names

#' Common Names
#'
#' @param dat 
#'
#' @return output
#' @export
#'
#' @examples
combine_species_names = function(dat){
 output = dat %>% 
    rename(alpha_code = species) %>% 
    left_join(species, by = "alpha_code") %>% 
    filter(!is.na(common_name))

  return(output)  
  
}


#Test below if experiencing issues 

# pred_function_test = combine_species_names(pred)
# 
# nest_function_test = combine_species_names(nests)


