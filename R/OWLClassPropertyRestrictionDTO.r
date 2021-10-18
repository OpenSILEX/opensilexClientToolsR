# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' OWLClassPropertyRestrictionDTO Class
#'
#' @field property 
#' @field required 
#' @field list 
#' @field rdf_type 
#' @field domain 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OWLClassPropertyRestrictionDTO <- R6::R6Class(
  'OWLClassPropertyRestrictionDTO',
  public = list(
    `property` = NULL,
    `required` = NULL,
    `list` = NULL,
    `rdf_type` = NULL,
    `domain` = NULL,
    initialize = function(`property`, `required`, `list`, `rdf_type`, `domain`){
      if (!missing(`property`)) {
        stopifnot(is.character(`property`), length(`property`) == 1)
        self$`property` <- `property`
      }
      if (!missing(`required`)) {
        self$`required` <- `required`
      }
      if (!missing(`list`)) {
        self$`list` <- `list`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`domain`)) {
        stopifnot(is.character(`domain`), length(`domain`) == 1)
        self$`domain` <- `domain`
      }
    },
    toJSON = function() {
      OWLClassPropertyRestrictionDTOObject <- list()
      if (!is.null(self$`property`)) {
        OWLClassPropertyRestrictionDTOObject[['property']] <- self$`property`
      }
      if (!is.null(self$`required`)) {
        OWLClassPropertyRestrictionDTOObject[['required']] <- self$`required`
      }
      if (!is.null(self$`list`)) {
        OWLClassPropertyRestrictionDTOObject[['list']] <- self$`list`
      }
      if (!is.null(self$`rdf_type`)) {
        OWLClassPropertyRestrictionDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`domain`)) {
        OWLClassPropertyRestrictionDTOObject[['domain']] <- self$`domain`
      }

      OWLClassPropertyRestrictionDTOObject
    },
    fromJSON = function(OWLClassPropertyRestrictionDTOJson) {
      OWLClassPropertyRestrictionDTOObject <- jsonlite::fromJSON(OWLClassPropertyRestrictionDTOJson)
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`property`)) {
        self$`property` <- OWLClassPropertyRestrictionDTOObject$`property`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`required`)) {
        self$`required` <- OWLClassPropertyRestrictionDTOObject$`required`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`list`)) {
        self$`list` <- OWLClassPropertyRestrictionDTOObject$`list`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`rdf_type`)) {
        self$`rdf_type` <- OWLClassPropertyRestrictionDTOObject$`rdf_type`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`domain`)) {
        self$`domain` <- OWLClassPropertyRestrictionDTOObject$`domain`
      }
    },
    fromJSONObject = function(OWLClassPropertyRestrictionDTOObject) {
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`property`)) {
        self$`property` <- OWLClassPropertyRestrictionDTOObject$`property`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`required`)) {
        self$`required` <- OWLClassPropertyRestrictionDTOObject$`required`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`list`)) {
        self$`list` <- OWLClassPropertyRestrictionDTOObject$`list`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`rdf_type`)) {
        self$`rdf_type` <- OWLClassPropertyRestrictionDTOObject$`rdf_type`
      }
      if (!is.null(OWLClassPropertyRestrictionDTOObject$`domain`)) {
        self$`domain` <- OWLClassPropertyRestrictionDTOObject$`domain`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "property": %s,
           "required": %s,
           "list": %s,
           "rdf_type": %s,
           "domain": %s
        }',
        ifelse(is.null(self$`property`), "null",jsonlite::toJSON(self$`property`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`required`), "null",jsonlite::toJSON(self$`required`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`list`), "null",jsonlite::toJSON(self$`list`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`domain`), "null",jsonlite::toJSON(self$`domain`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(OWLClassPropertyRestrictionDTOJson) {
      OWLClassPropertyRestrictionDTOObject <- jsonlite::fromJSON(OWLClassPropertyRestrictionDTOJson)
      self$`property` <- OWLClassPropertyRestrictionDTOObject$`property`
      self$`required` <- OWLClassPropertyRestrictionDTOObject$`required`
      self$`list` <- OWLClassPropertyRestrictionDTOObject$`list`
      self$`rdf_type` <- OWLClassPropertyRestrictionDTOObject$`rdf_type`
      self$`domain` <- OWLClassPropertyRestrictionDTOObject$`domain`
    }
  )
)
