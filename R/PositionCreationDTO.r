# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PositionCreationDTO Class
#'
#' @field point 
#' @field x 
#' @field y 
#' @field z 
#' @field text 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PositionCreationDTO <- R6::R6Class(
  'PositionCreationDTO',
  public = list(
    `point` = NULL,
    `x` = NULL,
    `y` = NULL,
    `z` = NULL,
    `text` = NULL,
    initialize = function(`point`, `x`, `y`, `z`, `text`){
      if (!missing(`point`)) {
        stopifnot(R6::is.R6(`point`))
        self$`point` <- `point`
      }
      if (!missing(`x`)) {
        stopifnot(is.numeric(`x`), length(`x`) == 1)
        self$`x` <- `x`
      }
      if (!missing(`y`)) {
        stopifnot(is.numeric(`y`), length(`y`) == 1)
        self$`y` <- `y`
      }
      if (!missing(`z`)) {
        stopifnot(is.numeric(`z`), length(`z`) == 1)
        self$`z` <- `z`
      }
      if (!missing(`text`)) {
        stopifnot(is.character(`text`), length(`text`) == 1)
        self$`text` <- `text`
      }
    },
    toJSON = function() {
      PositionCreationDTOObject <- list()
      if (!is.null(self$`point`)) {
        PositionCreationDTOObject[['point']] <- self$`point`$toJSON()
      }
      if (!is.null(self$`x`)) {
        PositionCreationDTOObject[['x']] <- self$`x`
      }
      if (!is.null(self$`y`)) {
        PositionCreationDTOObject[['y']] <- self$`y`
      }
      if (!is.null(self$`z`)) {
        PositionCreationDTOObject[['z']] <- self$`z`
      }
      if (!is.null(self$`text`)) {
        PositionCreationDTOObject[['text']] <- self$`text`
      }

      PositionCreationDTOObject
    },
    fromJSON = function(PositionCreationDTOJson) {
      PositionCreationDTOObject <- jsonlite::fromJSON(PositionCreationDTOJson)
      if (!is.null(PositionCreationDTOObject$`point`)) {
        pointObject <- Point$new()
        pointObject$fromJSON(jsonlite::toJSON(PositionCreationDTOObject$point, auto_unbox = TRUE, null = "null"))
        self$`point` <- pointObject
      }
      if (!is.null(PositionCreationDTOObject$`x`)) {
        self$`x` <- PositionCreationDTOObject$`x`
      }
      if (!is.null(PositionCreationDTOObject$`y`)) {
        self$`y` <- PositionCreationDTOObject$`y`
      }
      if (!is.null(PositionCreationDTOObject$`z`)) {
        self$`z` <- PositionCreationDTOObject$`z`
      }
      if (!is.null(PositionCreationDTOObject$`text`)) {
        self$`text` <- PositionCreationDTOObject$`text`
      }
    },
    fromJSONObject = function(PositionCreationDTOObject) {
      if (!is.null(PositionCreationDTOObject$`point`)) {
        pointObject <- Point$new()
        pointObject$fromJSON(jsonlite::toJSON(PositionCreationDTOObject$point, auto_unbox = TRUE, null = "null"))
        self$`point` <- pointObject
      }
      if (!is.null(PositionCreationDTOObject$`x`)) {
        self$`x` <- PositionCreationDTOObject$`x`
      }
      if (!is.null(PositionCreationDTOObject$`y`)) {
        self$`y` <- PositionCreationDTOObject$`y`
      }
      if (!is.null(PositionCreationDTOObject$`z`)) {
        self$`z` <- PositionCreationDTOObject$`z`
      }
      if (!is.null(PositionCreationDTOObject$`text`)) {
        self$`text` <- PositionCreationDTOObject$`text`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "point": %s,
           "x": %s,
           "y": %s,
           "z": %s,
           "text": %s
        }',
        jsonlite::toJSON(self$`point`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`x`), "null",as.numeric(jsonlite::toJSON(self$`x`,auto_unbox=TRUE, null = "null"))),
        ifelse(is.null(self$`y`), "null",as.numeric(jsonlite::toJSON(self$`y`,auto_unbox=TRUE, null = "null"))),
        ifelse(is.null(self$`z`), "null",as.numeric(jsonlite::toJSON(self$`z`,auto_unbox=TRUE, null = "null"))),
        ifelse(is.null(self$`text`), "null",jsonlite::toJSON(self$`text`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(PositionCreationDTOJson) {
      PositionCreationDTOObject <- jsonlite::fromJSON(PositionCreationDTOJson)
      PointObject <- Point$new()
      self$`point` <- PointObject$fromJSON(jsonlite::toJSON(PositionCreationDTOObject$point, auto_unbox = TRUE))
      self$`x` <- PositionCreationDTOObject$`x`
      self$`y` <- PositionCreationDTOObject$`y`
      self$`z` <- PositionCreationDTOObject$`z`
      self$`text` <- PositionCreationDTOObject$`text`
    }
  )
)
