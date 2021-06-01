# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FactorLevelGetDTO Class
#'
#' @field uri 
#' @field name 
#' @field description 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FactorLevelGetDTO <- R6::R6Class(
  'FactorLevelGetDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `description` = NULL,
    initialize = function(`uri`, `name`, `description`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    toJSON = function() {
      FactorLevelGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        FactorLevelGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        FactorLevelGetDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        FactorLevelGetDTOObject[['description']] <- self$`description`
      }

      FactorLevelGetDTOObject
    },
    fromJSON = function(FactorLevelGetDTOJson) {
      FactorLevelGetDTOObject <- jsonlite::fromJSON(FactorLevelGetDTOJson)
      if (!is.null(FactorLevelGetDTOObject$`uri`)) {
        self$`uri` <- FactorLevelGetDTOObject$`uri`
      }
      if (!is.null(FactorLevelGetDTOObject$`name`)) {
        self$`name` <- FactorLevelGetDTOObject$`name`
      }
      if (!is.null(FactorLevelGetDTOObject$`description`)) {
        self$`description` <- FactorLevelGetDTOObject$`description`
      }
    },
    fromJSONObject = function(FactorLevelGetDTOObject) {
      if (!is.null(FactorLevelGetDTOObject$`uri`)) {
        self$`uri` <- FactorLevelGetDTOObject$`uri`
      }
      if (!is.null(FactorLevelGetDTOObject$`name`)) {
        self$`name` <- FactorLevelGetDTOObject$`name`
      }
      if (!is.null(FactorLevelGetDTOObject$`description`)) {
        self$`description` <- FactorLevelGetDTOObject$`description`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "description": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(FactorLevelGetDTOJson) {
      FactorLevelGetDTOObject <- jsonlite::fromJSON(FactorLevelGetDTOJson)
      self$`uri` <- FactorLevelGetDTOObject$`uri`
      self$`name` <- FactorLevelGetDTOObject$`name`
      self$`description` <- FactorLevelGetDTOObject$`description`
    }
  )
)
