# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UnitGetDTO Class
#'
#' @field uri 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UnitGetDTO <- R6::R6Class(
  'UnitGetDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    initialize = function(`uri`, `name`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      UnitGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        UnitGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        UnitGetDTOObject[['name']] <- self$`name`
      }

      UnitGetDTOObject
    },
    fromJSON = function(UnitGetDTOJson) {
      UnitGetDTOObject <- jsonlite::fromJSON(UnitGetDTOJson)
      if (!is.null(UnitGetDTOObject$`uri`)) {
        self$`uri` <- UnitGetDTOObject$`uri`
      }
      if (!is.null(UnitGetDTOObject$`name`)) {
        self$`name` <- UnitGetDTOObject$`name`
      }
    },
    fromJSONObject = function(UnitGetDTOObject) {
      if (!is.null(UnitGetDTOObject$`uri`)) {
        self$`uri` <- UnitGetDTOObject$`uri`
      }
      if (!is.null(UnitGetDTOObject$`name`)) {
        self$`name` <- UnitGetDTOObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(UnitGetDTOJson) {
      UnitGetDTOObject <- jsonlite::fromJSON(UnitGetDTOJson)
      self$`uri` <- UnitGetDTOObject$`uri`
      self$`name` <- UnitGetDTOObject$`name`
    }
  )
)
