# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MotivationGetDTO Class
#'
#' @field uri 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MotivationGetDTO <- R6::R6Class(
  'MotivationGetDTO',
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
      MotivationGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        MotivationGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        MotivationGetDTOObject[['name']] <- self$`name`
      }

      MotivationGetDTOObject
    },
    fromJSON = function(MotivationGetDTOJson) {
      MotivationGetDTOObject <- jsonlite::fromJSON(MotivationGetDTOJson)
      if (!is.null(MotivationGetDTOObject$`uri`)) {
        self$`uri` <- MotivationGetDTOObject$`uri`
      }
      if (!is.null(MotivationGetDTOObject$`name`)) {
        self$`name` <- MotivationGetDTOObject$`name`
      }
    },
    fromJSONObject = function(MotivationGetDTOObject) {
      if (!is.null(MotivationGetDTOObject$`uri`)) {
        self$`uri` <- MotivationGetDTOObject$`uri`
      }
      if (!is.null(MotivationGetDTOObject$`name`)) {
        self$`name` <- MotivationGetDTOObject$`name`
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
    fromJSONString = function(MotivationGetDTOJson) {
      MotivationGetDTOObject <- jsonlite::fromJSON(MotivationGetDTOJson)
      self$`uri` <- MotivationGetDTOObject$`uri`
      self$`name` <- MotivationGetDTOObject$`name`
    }
  )
)
