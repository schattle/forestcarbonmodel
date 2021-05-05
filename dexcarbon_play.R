#'  Forest Carbon Growth
#' @param T  period of growth
#' @param C initial carbon
#' @param parms$r - base forst growth rate
#' @parms parms$K - carrying capacity
#' @return change in carbon

dexcarbon_play = function(time, C, parms) {
  
  # compute rate of change of population
  dexcarbon = parms$r*C
  
  # set rate of change to 0 if C is greater than carrying capacity
  dexcarbon = ifelse(C > parms$K, 0, dexcarbon)
  return(list(dexcarbon))
}