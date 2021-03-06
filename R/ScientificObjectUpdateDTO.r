# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificObjectUpdateDTO Class
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
ScientificObjectUpdateDTO <- R6::R6Class(
  'ScientificObjectUpdateDTO',
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
      ScientificObjectUpdateDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ScientificObjectUpdateDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        ScientificObjectUpdateDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`name`)) {
        ScientificObjectUpdateDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`experiment`)) {
        ScientificObjectUpdateDTOObject[['experiment']] <- self$`experiment`
      }
      if (!is.null(self$`relations`)) {
        ScientificObjectUpdateDTOObject[['relations']] <- lapply(self$`relations`, function(x) x$toJSON())
      }
      if (!is.null(self$`geometry`)) {
        ScientificObjectUpdateDTOObject[['geometry']] <- self$`geometry`$toJSON()
      }

      ScientificObjectUpdateDTOObject
    },
    fromJSON = function(ScientificObjectUpdateDTOJson) {
      ScientificObjectUpdateDTOObject <- jsonlite::fromJSON(ScientificObjectUpdateDTOJson)
      if (!is.null(ScientificObjectUpdateDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectUpdateDTOObject$`uri`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ScientificObjectUpdateDTOObject$`rdf_type`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`name`)) {
        self$`name` <- ScientificObjectUpdateDTOObject$`name`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectUpdateDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`relations`)) {
        self$`relations` <- lapply(ScientificObjectUpdateDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(ScientificObjectUpdateDTOObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
    },
    fromJSONObject = function(ScientificObjectUpdateDTOObject) {
      if (!is.null(ScientificObjectUpdateDTOObject$`uri`)) {
        self$`uri` <- ScientificObjectUpdateDTOObject$`uri`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ScientificObjectUpdateDTOObject$`rdf_type`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`name`)) {
        self$`name` <- ScientificObjectUpdateDTOObject$`name`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`experiment`)) {
        self$`experiment` <- ScientificObjectUpdateDTOObject$`experiment`
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`relations`)) {
        self$`relations` <- lapply(ScientificObjectUpdateDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
      if (!is.null(ScientificObjectUpdateDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(ScientificObjectUpdateDTOObject$geometry, auto_unbox = TRUE, null = "null"))
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
    fromJSONString = function(ScientificObjectUpdateDTOJson) {
      ScientificObjectUpdateDTOObject <- jsonlite::fromJSON(ScientificObjectUpdateDTOJson)
      self$`uri` <- ScientificObjectUpdateDTOObject$`uri`
      self$`rdf_type` <- ScientificObjectUpdateDTOObject$`rdf_type`
      self$`name` <- ScientificObjectUpdateDTOObject$`name`
      self$`experiment` <- ScientificObjectUpdateDTOObject$`experiment`
      self$`relations` <- lapply(ScientificObjectUpdateDTOObject$`relations`, function(x) RDFObjectRelationDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      GeoJsonObjectObject <- GeoJsonObject$new()
      self$`geometry` <- GeoJsonObjectObject$fromJSON(jsonlite::toJSON(ScientificObjectUpdateDTOObject$geometry, auto_unbox = TRUE))
    }
  )
)
