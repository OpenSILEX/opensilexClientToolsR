# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VueObjectTypeDTO Class
#'
#' @field uri 
#' @field name 
#' @field short_uri 
#' @field input_component 
#' @field input_components_by_property 
#' @field view_component 
#' @field rdf_type 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VueObjectTypeDTO <- R6::R6Class(
  'VueObjectTypeDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `short_uri` = NULL,
    `input_component` = NULL,
    `input_components_by_property` = NULL,
    `view_component` = NULL,
    `rdf_type` = NULL,
    initialize = function(`uri`, `name`, `short_uri`, `input_component`, `input_components_by_property`, `view_component`, `rdf_type`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`short_uri`)) {
        stopifnot(is.character(`short_uri`), length(`short_uri`) == 1)
        self$`short_uri` <- `short_uri`
      }
      if (!missing(`input_component`)) {
        stopifnot(is.character(`input_component`), length(`input_component`) == 1)
        self$`input_component` <- `input_component`
      }
      if (!missing(`input_components_by_property`)) {
        self$`input_components_by_property` <- `input_components_by_property`
      }
      if (!missing(`view_component`)) {
        stopifnot(is.character(`view_component`), length(`view_component`) == 1)
        self$`view_component` <- `view_component`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(R6::is.R6(`rdf_type`))
        self$`rdf_type` <- `rdf_type`
      }
    },
    toJSON = function() {
      VueObjectTypeDTOObject <- list()
      if (!is.null(self$`uri`)) {
        VueObjectTypeDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        VueObjectTypeDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`short_uri`)) {
        VueObjectTypeDTOObject[['short_uri']] <- self$`short_uri`
      }
      if (!is.null(self$`input_component`)) {
        VueObjectTypeDTOObject[['input_component']] <- self$`input_component`
      }
      if (!is.null(self$`input_components_by_property`)) {
        VueObjectTypeDTOObject[['input_components_by_property']] <- self$`input_components_by_property`
      }
      if (!is.null(self$`view_component`)) {
        VueObjectTypeDTOObject[['view_component']] <- self$`view_component`
      }
      if (!is.null(self$`rdf_type`)) {
        VueObjectTypeDTOObject[['rdf_type']] <- self$`rdf_type`$toJSON()
      }

      VueObjectTypeDTOObject
    },
    fromJSON = function(VueObjectTypeDTOJson) {
      VueObjectTypeDTOObject <- jsonlite::fromJSON(VueObjectTypeDTOJson)
      if (!is.null(VueObjectTypeDTOObject$`uri`)) {
        self$`uri` <- VueObjectTypeDTOObject$`uri`
      }
      if (!is.null(VueObjectTypeDTOObject$`name`)) {
        self$`name` <- VueObjectTypeDTOObject$`name`
      }
      if (!is.null(VueObjectTypeDTOObject$`short_uri`)) {
        self$`short_uri` <- VueObjectTypeDTOObject$`short_uri`
      }
      if (!is.null(VueObjectTypeDTOObject$`input_component`)) {
        self$`input_component` <- VueObjectTypeDTOObject$`input_component`
      }
      if (!is.null(VueObjectTypeDTOObject$`input_components_by_property`)) {
        self$`input_components_by_property` <- VueObjectTypeDTOObject$`input_components_by_property`
      }
      if (!is.null(VueObjectTypeDTOObject$`view_component`)) {
        self$`view_component` <- VueObjectTypeDTOObject$`view_component`
      }
      if (!is.null(VueObjectTypeDTOObject$`rdf_type`)) {
        rdf_typeObject <- RDFTypeDTO$new()
        rdf_typeObject$fromJSON(jsonlite::toJSON(VueObjectTypeDTOObject$rdf_type, auto_unbox = TRUE, null = "null"))
        self$`rdf_type` <- rdf_typeObject
      }
    },
    fromJSONObject = function(VueObjectTypeDTOObject) {
      if (!is.null(VueObjectTypeDTOObject$`uri`)) {
        self$`uri` <- VueObjectTypeDTOObject$`uri`
      }
      if (!is.null(VueObjectTypeDTOObject$`name`)) {
        self$`name` <- VueObjectTypeDTOObject$`name`
      }
      if (!is.null(VueObjectTypeDTOObject$`short_uri`)) {
        self$`short_uri` <- VueObjectTypeDTOObject$`short_uri`
      }
      if (!is.null(VueObjectTypeDTOObject$`input_component`)) {
        self$`input_component` <- VueObjectTypeDTOObject$`input_component`
      }
      if (!is.null(VueObjectTypeDTOObject$`input_components_by_property`)) {
        self$`input_components_by_property` <- VueObjectTypeDTOObject$`input_components_by_property`
      }
      if (!is.null(VueObjectTypeDTOObject$`view_component`)) {
        self$`view_component` <- VueObjectTypeDTOObject$`view_component`
      }
      if (!is.null(VueObjectTypeDTOObject$`rdf_type`)) {
        rdf_typeObject <- RDFTypeDTO$new()
        rdf_typeObject$fromJSON(jsonlite::toJSON(VueObjectTypeDTOObject$rdf_type, auto_unbox = TRUE, null = "null"))
        self$`rdf_type` <- rdf_typeObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "short_uri": %s,
           "input_component": %s,
           "input_components_by_property": %s,
           "view_component": %s,
           "rdf_type": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`short_uri`), "null",jsonlite::toJSON(self$`short_uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`input_component`), "null",jsonlite::toJSON(self$`input_component`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`input_components_by_property`), "null",jsonlite::toJSON(self$`input_components_by_property`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`view_component`), "null",jsonlite::toJSON(self$`view_component`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`rdf_type`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(VueObjectTypeDTOJson) {
      VueObjectTypeDTOObject <- jsonlite::fromJSON(VueObjectTypeDTOJson)
      self$`uri` <- VueObjectTypeDTOObject$`uri`
      self$`name` <- VueObjectTypeDTOObject$`name`
      self$`short_uri` <- VueObjectTypeDTOObject$`short_uri`
      self$`input_component` <- VueObjectTypeDTOObject$`input_component`
      self$`input_components_by_property` <- VueObjectTypeDTOObject$`input_components_by_property`
      self$`view_component` <- VueObjectTypeDTOObject$`view_component`
      RDFTypeDTOObject <- RDFTypeDTO$new()
      self$`rdf_type` <- RDFTypeDTOObject$fromJSON(jsonlite::toJSON(VueObjectTypeDTOObject$rdf_type, auto_unbox = TRUE))
    }
  )
)
