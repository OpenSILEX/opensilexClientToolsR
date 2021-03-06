# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Feature Class
#'
#' @field type 
#' @field bbox 
#' @field coordinates 
#' @field properties 
#' @field geometry 
#' @field id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Feature <- R6::R6Class(
  'Feature',
  public = list(
    `type` = NULL,
    `bbox` = NULL,
    `coordinates` = NULL,
    `properties` = NULL,
    `geometry` = NULL,
    `id` = NULL,
    initialize = function(`type`, `bbox`, `coordinates`, `properties`, `geometry`, `id`){
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
        lapply(`coordinates`, function(x) stopifnot(is.character(x)))
        self$`coordinates` <- `coordinates`
      }
      if (!missing(`properties`)) {
        stopifnot(R6::is.R6(`properties`))
        self$`properties` <- `properties`
      }
      if (!missing(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
    },
    toJSON = function() {
      FeatureObject <- list()
      if (!is.null(self$`type`)) {
        FeatureObject[['type']] <- self$`type`
      }
      if (!is.null(self$`bbox`)) {
        FeatureObject[['bbox']] <- self$`bbox`
      }
      if (!is.null(self$`coordinates`)) {
        FeatureObject[['coordinates']] <- self$`coordinates`
      }
      if (!is.null(self$`properties`)) {
        FeatureObject[['properties']] <- self$`properties`$toJSON()
      }
      if (!is.null(self$`geometry`)) {
        FeatureObject[['geometry']] <- self$`geometry`$toJSON()
      }
      if (!is.null(self$`id`)) {
        FeatureObject[['id']] <- self$`id`
      }

      FeatureObject
    },
    fromJSON = function(FeatureJson) {
      FeatureObject <- jsonlite::fromJSON(FeatureJson)
      if (!is.null(FeatureObject$`type`)) {
        self$`type` <- FeatureObject$`type`
      }
      if (!is.null(FeatureObject$`bbox`)) {
        self$`bbox` <- FeatureObject$`bbox`
      }
      if (!is.null(FeatureObject$`coordinates`)) {
        self$`coordinates` <- FeatureObject$`coordinates`
      }
      if (!is.null(FeatureObject$`properties`)) {
        propertiesObject <- ObjectDTO$new()
        propertiesObject$fromJSON(jsonlite::toJSON(FeatureObject$properties, auto_unbox = TRUE, null = "null"))
        self$`properties` <- propertiesObject
      }
      if (!is.null(FeatureObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(FeatureObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
      if (!is.null(FeatureObject$`id`)) {
        self$`id` <- FeatureObject$`id`
      }
    },
    fromJSONObject = function(FeatureObject) {
      if (!is.null(FeatureObject$`type`)) {
        self$`type` <- FeatureObject$`type`
      }
      if (!is.null(FeatureObject$`bbox`)) {
        self$`bbox` <- FeatureObject$`bbox`
      }
      if (!is.null(FeatureObject$`coordinates`)) {
        self$`coordinates` <- FeatureObject$`coordinates`
      }
      if (!is.null(FeatureObject$`properties`)) {
        propertiesObject <- ObjectDTO$new()
        propertiesObject$fromJSON(jsonlite::toJSON(FeatureObject$properties, auto_unbox = TRUE, null = "null"))
        self$`properties` <- propertiesObject
      }
      if (!is.null(FeatureObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(FeatureObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
      if (!is.null(FeatureObject$`id`)) {
        self$`id` <- FeatureObject$`id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "bbox": [%s],
           "coordinates": [%s],
           "properties": %s,
           "geometry": %s,
           "id": %s
        }',
        ifelse(is.null(self$`type`), "null",jsonlite::toJSON(self$`type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`bbox`) || length(self$`bbox`) == 0, "" ,lapply(self$`bbox`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`coordinates`) || length(self$`coordinates`) == 0, "" ,lapply(self$`coordinates`, function(x) paste(paste0('"', x, '"'), sep=","))),
        jsonlite::toJSON(self$`properties`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`geometry`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`id`), "null",jsonlite::toJSON(self$`id`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(FeatureJson) {
      FeatureObject <- jsonlite::fromJSON(FeatureJson)
      self$`type` <- FeatureObject$`type`
      self$`bbox` <- FeatureObject$`bbox`
      self$`coordinates` <- FeatureObject$`coordinates`
      ObjectDTOObject <- ObjectDTO$new()
      self$`properties` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(FeatureObject$properties, auto_unbox = TRUE))
      GeoJsonObjectObject <- GeoJsonObject$new()
      self$`geometry` <- GeoJsonObjectObject$fromJSON(jsonlite::toJSON(FeatureObject$geometry, auto_unbox = TRUE))
      self$`id` <- FeatureObject$`id`
    }
  )
)
