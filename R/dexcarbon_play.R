#'  Forest Carbon Growth
#' @param T  period of growth
#' @param C initial carbon
#' @param parms$cc - canopy closure threshold
#' @param parms$r - base forest growth rate
#' @parms parms$K - carrying capacity
#' @parms parms$g - linear growth rate 
#' @return change in carbon

dexcarbon_play = function(time, C, parms) {
  
  # compute rate of change of forest size when C is below canopy closure threshold
  dexcarbon = parms$r*C
  
  # set rate of change to g if C is at or above threshold canopy closure
  dexcarbon = ifelse(C >= parms$cc, g, dexcarbon)
  return(list(dexcarbon))
  
  # set rate of change to 0 once carrying capacity (K) is reached
  dexcarbon = ifelse(C > parms$K, 0, dexcarbon)
  return(list(dexcarbon))
}
