# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificObjectNodeWithChildrenDTO Class
#'
#' @field uri 
#' @field name 
#' @field geometry 
#' @field rdf_type 
#' @field rdf_type_name 
#' @field creation_date 
#' @field destruction_date 
#' @field child_count 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScientificObjectNodeWithChildrenDTO <- R6::R6Class(
  'ScientificObjectNodeWithChildrenDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `geometry` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    `creation_date` = NULL,
    `destruction_date` = NULL,
    `child_count` = NULL,
    initialize = function(`uri`, `name`, `geometry`, `rdf_type`, `rdf_type_name`, `creation_date`, `destruction_date`, `child_count`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`rdf_type_name`)) {
        stopifnot(is.character(`rdf_type_name`), length(`rdf_type_name`) == 1)
        self$`rdf_type_name` <- `rdf_type_name`
      }
      if (!missing(`creation_date`)) {
        stopifnot(is.character(`creation_date`), length(`creation_date`) == 1)
        self$`creation_date` <- `creation_date`
      }
      if (!missing(`destruction_date`)) {
        stopifnot(is.character(`destruction_date`), length(`destruction_date`) == 1)
        self$`destruction_date` <- `destruction_date`
      }
      if (!missing(`child_count`)) {
        stopifnot(is.numeric(`child_count`), length(`child_count`) == 1)
        self$`child_count` <- `child_count`
      }
    },
    toJSON = function() {
      ScientificObjectNodeWithChildrenDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ScientificObjectNodeWithChildrenDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ScientificObjectNodeWithChildrenDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`geometry`)) {
        ScientificObjectNodeWithChildrenDTOObject[['geometry']] <- self$`geometry`$toJSON()
      }
      if (!is.null(self$`rdf_type`)) {
        ScientificObjectNodeWithChildrenDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        ScientificObjectNodeWithChildrenDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`creation_date`)) {
        ScientificObjectNodeWithChildrenDTOObject[['creation_date']] <- self$`creation_date`
      }
      if (!is.null(self$`destruction_date`)) {
        ScientificObjectNodeWithChildrenDTOObject[['destruction_date']] <- self$`destruction_date`
      }
      if (!is.null(self$`child_count`)) {
        ScientificObjectNodeWithChildrenDTOObject[['child_count']] <- self$`child_count`
      }

      ScientificObjectNodeWithChildrenDTOObject
    },
    fromJSON = function(ScientificObjectNodeWithChildrenDTOJson) {
      ScientificObjectNodeWithChildrenDTOObject <- jsonlite::fromJSON(ScientificObjectNodeWithChildrenDTOJson)
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectNodeWithChildrenDTOObject$`uri`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`name`)) {
        self$`name` <- ScientificObjectNodeWithChildrenDTOObject$`name`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(ScientificObjectNodeWithChildrenDTOObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ScientificObjectNodeWithChildrenDTOObject$`rdf_type`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- ScientificObjectNodeWithChildrenDTOObject$`rdf_type_name`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`creation_date`)) {
        self$`creation_date` <- ScientificObjectNodeWithChildrenDTOObject$`creation_date`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`destruction_date`)) {
        self$`destruction_date` <- ScientificObjectNodeWithChildrenDTOObject$`destruction_date`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`child_count`)) {
        self$`child_count` <- ScientificObjectNodeWithChildrenDTOObject$`child_count`
      }
    },
    fromJSONObject = function(ScientificObjectNodeWithChildrenDTOObject) {
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectNodeWithChildrenDTOObject$`uri`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`name`)) {
        self$`name` <- ScientificObjectNodeWithChildrenDTOObject$`name`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(ScientificObjectNodeWithChildrenDTOObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ScientificObjectNodeWithChildrenDTOObject$`rdf_type`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- ScientificObjectNodeWithChildrenDTOObject$`rdf_type_name`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`creation_date`)) {
        self$`creation_date` <- ScientificObjectNodeWithChildrenDTOObject$`creation_date`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`destruction_date`)) {
        self$`destruction_date` <- ScientificObjectNodeWithChildrenDTOObject$`destruction_date`
      }
      if (!is.null(ScientificObjectNodeWithChildrenDTOObject$`child_count`)) {
        self$`child_count` <- ScientificObjectNodeWithChildrenDTOObject$`child_count`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "geometry": %s,
           "rdf_type": %s,
           "rdf_type_name": %s,
           "creation_date": %s,
           "destruction_date": %s,
           "child_count": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`geometry`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`creation_date`), "null",jsonlite::toJSON(self$`creation_date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`destruction_date`), "null",jsonlite::toJSON(self$`destruction_date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`child_count`), "null",as.numeric(jsonlite::toJSON(self$`child_count`,auto_unbox=TRUE, null = "null")))
      )
    },
    fromJSONString = function(ScientificObjectNodeWithChildrenDTOJson) {
      ScientificObjectNodeWithChildrenDTOObject <- jsonlite::fromJSON(ScientificObjectNodeWithChildrenDTOJson)
      self$`uri` <- ScientificObjectNodeWithChildrenDTOObject$`uri`
      self$`name` <- ScientificObjectNodeWithChildrenDTOObject$`name`
      GeoJsonObjectObject <- GeoJsonObject$new()
      self$`geometry` <- GeoJsonObjectObject$fromJSON(jsonlite::toJSON(ScientificObjectNodeWithChildrenDTOObject$geometry, auto_unbox = TRUE))
      self$`rdf_type` <- ScientificObjectNodeWithChildrenDTOObject$`rdf_type`
      self$`rdf_type_name` <- ScientificObjectNodeWithChildrenDTOObject$`rdf_type_name`
      self$`creation_date` <- ScientificObjectNodeWithChildrenDTOObject$`creation_date`
      self$`destruction_date` <- ScientificObjectNodeWithChildrenDTOObject$`destruction_date`
      self$`child_count` <- ScientificObjectNodeWithChildrenDTOObject$`child_count`
    }
  )
)
