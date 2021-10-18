# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FactorLevelCreationDTO Class
#'
#' @field uri 
#' @field name 
#' @field description 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FactorLevelCreationDTO <- R6::R6Class(
  'FactorLevelCreationDTO',
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
      FactorLevelCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        FactorLevelCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        FactorLevelCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        FactorLevelCreationDTOObject[['description']] <- self$`description`
      }

      FactorLevelCreationDTOObject
    },
    fromJSON = function(FactorLevelCreationDTOJson) {
      FactorLevelCreationDTOObject <- jsonlite::fromJSON(FactorLevelCreationDTOJson)
      if (!is.null(FactorLevelCreationDTOObject$`uri`)) {
        self$`uri` <- FactorLevelCreationDTOObject$`uri`
      }
      if (!is.null(FactorLevelCreationDTOObject$`name`)) {
        self$`name` <- FactorLevelCreationDTOObject$`name`
      }
      if (!is.null(FactorLevelCreationDTOObject$`description`)) {
        self$`description` <- FactorLevelCreationDTOObject$`description`
      }
    },
    fromJSONObject = function(FactorLevelCreationDTOObject) {
      if (!is.null(FactorLevelCreationDTOObject$`uri`)) {
        self$`uri` <- FactorLevelCreationDTOObject$`uri`
      }
      if (!is.null(FactorLevelCreationDTOObject$`name`)) {
        self$`name` <- FactorLevelCreationDTOObject$`name`
      }
      if (!is.null(FactorLevelCreationDTOObject$`description`)) {
        self$`description` <- FactorLevelCreationDTOObject$`description`
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
    fromJSONString = function(FactorLevelCreationDTOJson) {
      FactorLevelCreationDTOObject <- jsonlite::fromJSON(FactorLevelCreationDTOJson)
      self$`uri` <- FactorLevelCreationDTOObject$`uri`
      self$`name` <- FactorLevelCreationDTOObject$`name`
      self$`description` <- FactorLevelCreationDTOObject$`description`
    }
  )
)
