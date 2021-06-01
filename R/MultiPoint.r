# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MultiPoint Class
#'
#' @field type 
#' @field bbox 
#' @field coordinates 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultiPoint <- R6::R6Class(
  'MultiPoint',
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
        stopifnot(is.list(`coordinates`), length(`coordinates`) != 0)
        lapply(`coordinates`, function(x) stopifnot(R6::is.R6(x)))
        self$`coordinates` <- `coordinates`
      }
    },
    toJSON = function() {
      MultiPointObject <- list()
      if (!is.null(self$`type`)) {
        MultiPointObject[['type']] <- self$`type`
      }
      if (!is.null(self$`bbox`)) {
        MultiPointObject[['bbox']] <- self$`bbox`
      }
      if (!is.null(self$`coordinates`)) {
        MultiPointObject[['coordinates']] <- lapply(self$`coordinates`, function(x) x$toJSON())
      }

      MultiPointObject
    },
    fromJSON = function(MultiPointJson) {
      MultiPointObject <- jsonlite::fromJSON(MultiPointJson)
      if (!is.null(MultiPointObject$`type`)) {
        self$`type` <- MultiPointObject$`type`
      }
      if (!is.null(MultiPointObject$`bbox`)) {
        self$`bbox` <- MultiPointObject$`bbox`
      }
      if (!is.null(MultiPointObject$`coordinates`)) {
        self$`coordinates` <- lapply(MultiPointObject$`coordinates`, function(x) {
          coordinatesObject <- LngLatAlt$new()
          coordinatesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          coordinatesObject
        })
      }
    },
    fromJSONObject = function(MultiPointObject) {
      if (!is.null(MultiPointObject$`type`)) {
        self$`type` <- MultiPointObject$`type`
      }
      if (!is.null(MultiPointObject$`bbox`)) {
        self$`bbox` <- MultiPointObject$`bbox`
      }
      if (!is.null(MultiPointObject$`coordinates`)) {
        self$`coordinates` <- lapply(MultiPointObject$`coordinates`, function(x) {
          coordinatesObject <- LngLatAlt$new()
          coordinatesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          coordinatesObject
        })
      }
    },
    toJSONString = function() {
      coordinatesList = paste(lapply(self$`coordinates`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "type": %s,
           "bbox": [%s],
           "coordinates": [%s]
        }',
        ifelse(is.null(self$`type`), "null",jsonlite::toJSON(self$`type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`bbox`) || length(self$`bbox`) == 0, "" ,lapply(self$`bbox`, function(x) paste(paste0('"', x, '"'), sep=","))),
        coordinatesList
      )
    },
    fromJSONString = function(MultiPointJson) {
      MultiPointObject <- jsonlite::fromJSON(MultiPointJson)
      self$`type` <- MultiPointObject$`type`
      self$`bbox` <- MultiPointObject$`bbox`
      self$`coordinates` <- lapply(MultiPointObject$`coordinates`, function(x) LngLatAlt$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
