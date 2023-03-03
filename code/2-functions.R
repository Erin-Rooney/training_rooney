# E Rooney
# March 2 2023

# load packages

source("code/0-packages.R")

# function example 1 --------

# airtemps =
#   c(212, 30.3, 78, 32) #air temps in F
# 
# celsius1 = (airtemps[1]-32)*5/9
# celsius2 = (airtemps[2]-32)*5/9
# celsius3 = (airtemps[3]-32)*5/9
# celsius4 = (airtemps[4]-32)*5/9

#fahr to celsius

#' Convert Celsius temperatures to Fahrenheit
#'
#' @param celsius The temperature in Celsius
#'
#' @return The temperature in Fahrenheit
#' @export
#' 
#' @method  fahr = (celsius*(9/5)) + 32
#'
#' @examples
#' airtemps_f = celsius_to_fahr(airtemps_c)
#' 
#' 
fahr_to_celsius = function(fahr){
  celsius =
    (fahr - 32)*5/9  
  
}

# fahr_output = fahr_to_celsius(airtemps)
# 
# celsius1b = fahr_to_celsius(airtemps[1])

#celsius to fahr

celsius_to_fahr = function(celsius){
  fahr =
    (celsius*(9/5)) + 32
  
 
}



# run Example 1 functions ----------

# airtemps_c = fahr_to_celsius(airtemps)
# airtemps_f = celsius_to_fahr(airtemps_c)
# 
# airtemps == airtemps_f


# Example 2 ------------

convert_temps = function(fahr){
  
  celsius = (fahr-32)*5/9
  kelvin = celsius + 273.15
  temps = data.frame(fahr = fahr, 
                     celsius = celsius,
                     kelvin = kelvin)
  return(temps)
  
  
}

# airtemps =
#   c(212, 30.3, 78, 32, 50, -5, 20, 89, 99, 95) #air temps in F

airtemps =
  seq(-100, 100, 10)

air_tempsoutput = convert_temps(airtemps)



