# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificObjectCreationDTO Class
#'
#' @field uri 
#' @field rdf_type 
#' @field name 
#' @field experiment 
#' @field relations 
#' @field geometry 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScientificObjectCreationDTO <- R6::R6Class(
  'ScientificObjectCreationDTO',
  public = list(
    `uri` = NULL,
    `rdf_type` = NULL,
    `name` = NULL,
    `experiment` = NULL,
    `relations` = NULL,
    `geometry` = NULL,
    initialize = function(`uri`, `rdf_type`, `name`, `experiment`, `relations`, `geometry`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`experiment`)) {
        stopifnot(is.character(`experiment`), length(`experiment`) == 1)
        self$`experiment` <- `experiment`
      }
      if (!missing(`relations`)) {
        stopifnot(is.list(`relations`), length(`relations`) != 0)
        lapply(`relations`, function(x) stopifnot(R6::is.R6(x)))
        self$`relations` <- `relations`
      }
      if (!missing(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
      }
    },
    toJSON = function() {
      ScientificObjectCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ScientificObjectCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        ScientificObjectCreationDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`name`)) {
        ScientificObjectCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`experiment`)) {
        ScientificObjectCreationDTOObject[['experiment']] <- self$`experiment`
      }
      if (!is.null(self$`relations`)) {
        ScientificObjectCreationDTOObject[['relations']] <- lapply(self$`relations`, function(x) x$toJSON())
      }
      if (!is.null(self$`geometry`)) {
        ScientificObjectCreationDTOObject[['geometry']] <- self$`geometry`$toJSON()
      }

      ScientificObjectCreationDTOObject
    },
    fromJSON = function(ScientificObjectCreationDTOJson) {
      ScientificObjectCreationDTOObject <- jsonlite::fromJSON(ScientificObjectCreationDTOJson)
      if (!is.null(ScientificObjectCreationDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectCreationDTOObject$`uri`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ScientificObjectCreationDTOObject$`rdf_type`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`name`)) {
        self$`name` <- ScientificObjectCreationDTOObject$`name`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectCreationDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`relations`)) {
        self$`relations` <- lapply(ScientificObjectCreationDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
      if (!is.null(ScientificObjectCreationDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(ScientificObjectCreationDTOObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
    },
    fromJSONObject = function(ScientificObjectCreationDTOObject) {
      if (!is.null(ScientificObjectCreationDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectCreationDTOObject$`uri`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ScientificObjectCreationDTOObject$`rdf_type`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`name`)) {
        self$`name` <- ScientificObjectCreationDTOObject$`name`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectCreationDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectCreationDTOObject$`relations`)) {
        self$`relations` <- lapply(ScientificObjectCreationDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
      if (!is.null(ScientificObjectCreationDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(ScientificObjectCreationDTOObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
    },
    toJSONString = function() {
      relationsList = paste(lapply(self$`relations`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "rdf_type": %s,
           "name": %s,
           "experiment": %s,
           "relations": [%s],
           "geometry": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`experiment`), "null",jsonlite::toJSON(self$`experiment`,auto_unbox=TRUE, null = "null")),
        relationsList,
        jsonlite::toJSON(self$`geometry`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(ScientificObjectCreationDTOJson) {
      ScientificObjectCreationDTOObject <- jsonlite::fromJSON(ScientificObjectCreationDTOJson)
      self$`uri` <- ScientificObjectCreationDTOObject$`uri`
      self$`rdf_type` <- ScientificObjectCreationDTOObject$`rdf_type`
      self$`name` <- ScientificObjectCreationDTOObject$`name`
      self$`experiment` <- ScientificObjectCreationDTOObject$`experiment`
      self$`relations` <- lapply(ScientificObjectCreationDTOObject$`relations`, function(x) RDFObjectRelationDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      GeoJsonObjectObject <- GeoJsonObject$new()
      self$`geometry` <- GeoJsonObjectObject$fromJSON(jsonlite::toJSON(ScientificObjectCreationDTOObject$geometry, auto_unbox = TRUE))
    }
  )
)
