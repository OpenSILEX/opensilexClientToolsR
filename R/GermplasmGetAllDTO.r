# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GermplasmGetAllDTO Class
#'
#' @field uri 
#' @field rdf_type 
#' @field rdf_type_name 
#' @field name 
#' @field species 
#' @field species_name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GermplasmGetAllDTO <- R6::R6Class(
  'GermplasmGetAllDTO',
  public = list(
    `uri` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    `name` = NULL,
    `species` = NULL,
    `species_name` = NULL,
    initialize = function(`uri`, `rdf_type`, `rdf_type_name`, `name`, `species`, `species_name`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`rdf_type_name`)) {
        stopifnot(is.character(`rdf_type_name`), length(`rdf_type_name`) == 1)
        self$`rdf_type_name` <- `rdf_type_name`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`species`)) {
        stopifnot(is.character(`species`), length(`species`) == 1)
        self$`species` <- `species`
      }
      if (!missing(`species_name`)) {
        stopifnot(is.character(`species_name`), length(`species_name`) == 1)
        self$`species_name` <- `species_name`
      }
    },
    toJSON = function() {
      GermplasmGetAllDTOObject <- list()
      if (!is.null(self$`uri`)) {
        GermplasmGetAllDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        GermplasmGetAllDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        GermplasmGetAllDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`name`)) {
        GermplasmGetAllDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`species`)) {
        GermplasmGetAllDTOObject[['species']] <- self$`species`
      }
      if (!is.null(self$`species_name`)) {
        GermplasmGetAllDTOObject[['species_name']] <- self$`species_name`
      }

      GermplasmGetAllDTOObject
    },
    fromJSON = function(GermplasmGetAllDTOJson) {
      GermplasmGetAllDTOObject <- jsonlite::fromJSON(GermplasmGetAllDTOJson)
      if (!is.null(GermplasmGetAllDTOObject$`uri`)) {
        self$`uri` <- GermplasmGetAllDTOObject$`uri`
      }
      if (!is.null(GermplasmGetAllDTOObject$`rdf_type`)) {
        self$`rdf_type` <- GermplasmGetAllDTOObject$`rdf_type`
      }
      if (!is.null(GermplasmGetAllDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- GermplasmGetAllDTOObject$`rdf_type_name`
      }
      if (!is.null(GermplasmGetAllDTOObject$`name`)) {
        self$`name` <- GermplasmGetAllDTOObject$`name`
      }
      if (!is.null(GermplasmGetAllDTOObject$`species`)) {
        self$`species` <- GermplasmGetAllDTOObject$`species`
      }
      if (!is.null(GermplasmGetAllDTOObject$`species_name`)) {
        self$`species_name` <- GermplasmGetAllDTOObject$`species_name`
      }
    },
    fromJSONObject = function(GermplasmGetAllDTOObject) {
      if (!is.null(GermplasmGetAllDTOObject$`uri`)) {
        self$`uri` <- GermplasmGetAllDTOObject$`uri`
      }
      if (!is.null(GermplasmGetAllDTOObject$`rdf_type`)) {
        self$`rdf_type` <- GermplasmGetAllDTOObject$`rdf_type`
      }
      if (!is.null(GermplasmGetAllDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- GermplasmGetAllDTOObject$`rdf_type_name`
      }
      if (!is.null(GermplasmGetAllDTOObject$`name`)) {
        self$`name` <- GermplasmGetAllDTOObject$`name`
      }
      if (!is.null(GermplasmGetAllDTOObject$`species`)) {
        self$`species` <- GermplasmGetAllDTOObject$`species`
      }
      if (!is.null(GermplasmGetAllDTOObject$`species_name`)) {
        self$`species_name` <- GermplasmGetAllDTOObject$`species_name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "rdf_type": %s,
           "rdf_type_name": %s,
           "name": %s,
           "species": %s,
           "species_name": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`species`), "null",jsonlite::toJSON(self$`species`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`species_name`), "null",jsonlite::toJSON(self$`species_name`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(GermplasmGetAllDTOJson) {
      GermplasmGetAllDTOObject <- jsonlite::fromJSON(GermplasmGetAllDTOJson)
      self$`uri` <- GermplasmGetAllDTOObject$`uri`
      self$`rdf_type` <- GermplasmGetAllDTOObject$`rdf_type`
      self$`rdf_type_name` <- GermplasmGetAllDTOObject$`rdf_type_name`
      self$`name` <- GermplasmGetAllDTOObject$`name`
      self$`species` <- GermplasmGetAllDTOObject$`species`
      self$`species_name` <- GermplasmGetAllDTOObject$`species_name`
    }
  )
)
