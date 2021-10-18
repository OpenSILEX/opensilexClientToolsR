# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Point Class
#'
#' @field type 
#' @field bbox 
#' @field coordinates 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Point <- R6::R6Class(
  'Point',
  public = list(
    `type` = NULL,
    `bbox` = NULL,
    `coordinates` = NULL,
    initialize = function(`type`, `bbox`, `coordinates`){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`bbox`)) {
        stopifnot(is.list(`bbox`), length(`bbox`) != 0)
        lapply(`bbox`, function(x) stopifnot(is.character(x)))
        self$`bbox` <- `bbox`
      }
      if (!missing(`coordinates`)) {
        stopifnot(R6::is.R6(`coordinates`))
        self$`coordinates` <- `coordinates`
      }
    },
    toJSON = function() {
      PointObject <- list()
      if (!is.null(self$`type`)) {
        PointObject[['type']] <- self$`type`
      }
      if (!is.null(self$`bbox`)) {
        PointObject[['bbox']] <- self$`bbox`
      }
      if (!is.null(self$`coordinates`)) {
        PointObject[['coordinates']] <- self$`coordinates`$toJSON()
      }

      PointObject
    },
    fromJSON = function(PointJson) {
      PointObject <- jsonlite::fromJSON(PointJson)
      if (!is.null(PointObject$`type`)) {
        self$`type` <- PointObject$`type`
      }
      if (!is.null(PointObject$`bbox`)) {
        self$`bbox` <- PointObject$`bbox`
      }
      if (!is.null(PointObject$`coordinates`)) {
        coordinatesObject <- LngLatAlt$new()
        coordinatesObject$fromJSON(jsonlite::toJSON(PointObject$coordinates, auto_unbox = TRUE, null = "null"))
        self$`coordinates` <- coordinatesObject
      }
    },
    fromJSONObject = function(PointObject) {
      if (!is.null(PointObject$`type`)) {
        self$`type` <- PointObject$`type`
      }
      if (!is.null(PointObject$`bbox`)) {
        self$`bbox` <- PointObject$`bbox`
      }
      if (!is.null(PointObject$`coordinates`)) {
        coordinatesObject <- LngLatAlt$new()
        coordinatesObject$fromJSON(jsonlite::toJSON(PointObject$coordinates, auto_unbox = TRUE, null = "null"))
        self$`coordinates` <- coordinatesObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "bbox": [%s],
           "coordinates": %s
        }',
        ifelse(is.null(self$`type`), "null",jsonlite::toJSON(self$`type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`bbox`) || length(self$`bbox`) == 0, "" ,lapply(self$`bbox`, function(x) paste(paste0('"', x, '"'), sep=","))),
        jsonlite::toJSON(self$`coordinates`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(PointJson) {
      PointObject <- jsonlite::fromJSON(PointJson)
      self$`type` <- PointObject$`type`
      self$`bbox` <- PointObject$`bbox`
      LngLatAltObject <- LngLatAlt$new()
      self$`coordinates` <- LngLatAltObject$fromJSON(jsonlite::toJSON(PointObject$coordinates, auto_unbox = TRUE))
    }
  )
)
