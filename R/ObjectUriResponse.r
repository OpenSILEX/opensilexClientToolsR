# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ObjectUriResponse Class
#'
#' @field metadata 
#' @field result 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObjectUriResponse <- R6::R6Class(
  'ObjectUriResponse',
  public = list(
    `metadata` = NULL,
    `result` = NULL,
    initialize = function(`metadata`, `result`){
      if (!missing(`metadata`)) {
        stopifnot(R6::is.R6(`metadata`))
        self$`metadata` <- `metadata`
      }
      if (!missing(`result`)) {
        stopifnot(is.character(`result`), length(`result`) == 1)
        self$`result` <- `result`
      }
    },
    toJSON = function() {
      ObjectUriResponseObject <- list()
      if (!is.null(self$`metadata`)) {
        ObjectUriResponseObject[['metadata']] <- self$`metadata`$toJSON()
      }
      if (!is.null(self$`result`)) {
        ObjectUriResponseObject[['result']] <- self$`result`
      }

      ObjectUriResponseObject
    },
    fromJSON = function(ObjectUriResponseJson) {
      ObjectUriResponseObject <- jsonlite::fromJSON(ObjectUriResponseJson)
      if (!is.null(ObjectUriResponseObject$`metadata`)) {
        metadataObject <- MetadataDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(ObjectUriResponseObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
      if (!is.null(ObjectUriResponseObject$`result`)) {
        self$`result` <- ObjectUriResponseObject$`result`
      }
    },
    fromJSONObject = function(ObjectUriResponseObject) {
      if (!is.null(ObjectUriResponseObject$`metadata`)) {
        metadataObject <- MetadataDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(ObjectUriResponseObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
      if (!is.null(ObjectUriResponseObject$`result`)) {
        self$`result` <- ObjectUriResponseObject$`result`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "metadata": %s,
           "result": %s
        }',
        jsonlite::toJSON(self$`metadata`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`result`), "null",jsonlite::toJSON(self$`result`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(ObjectUriResponseJson) {
      ObjectUriResponseObject <- jsonlite::fromJSON(ObjectUriResponseJson)
      MetadataDTOObject <- MetadataDTO$new()
      self$`metadata` <- MetadataDTOObject$fromJSON(jsonlite::toJSON(ObjectUriResponseObject$metadata, auto_unbox = TRUE))
      self$`result` <- ObjectUriResponseObject$`result`
    }
  )
)
