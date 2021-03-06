#' Element Class
#'
#' Element Class
#' @export
Element  <- R6::R6Class(
  'Element',
  public = list(
    id = NULL,
    name = NULL,
    initialize = function(id,name){
      if (!missing(id)) {
        stopifnot(is.numeric(id), length(id) == 1)
        self$id <- id
      }
      if (!missing(name)) {
        stopifnot(is.character(name), length(name) == 1)
        self$name <- name
      }
    },
    toJSON = function() {
       sprintf('{"id":%d,"name":"%s"}', self$id, self$name)
    }
  )
)

#' Object Class
#'
#' Object Class
#' @export
ObjectDTO  <- R6::R6Class(
  'ObjectDTO',
  public = list(
    attribs = NULL, 
    initialize = function(attribs){
      if (!missing(attribs)) {      
        self$attribs <- attribs
      }
    },
    toJSON = function() {
      if(is.null(self$attribs)){
        NULL
      }else{
        if(is.numeric(self$attribs)){
          self$attribs
        }else{
          jsonlite::toJSON(self$attribs, auto_unbox = TRUE)
        }
         
      } 
    },
    fromJSON = function(object) {
      if(is.null(self$attribs)){
        self$attribs <-  NULL
      }else{
        self$attribs <- jsonlite::fromJSON(object)
      } 
    }
  )
)
