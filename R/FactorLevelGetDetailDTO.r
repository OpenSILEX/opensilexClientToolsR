# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FactorLevelGetDetailDTO Class
#'
#' @field uri 
#' @field name 
#' @field description 
#' @field factor 
#' @field factor_name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FactorLevelGetDetailDTO <- R6::R6Class(
  'FactorLevelGetDetailDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `description` = NULL,
    `factor` = NULL,
    `factor_name` = NULL,
    initialize = function(`uri`, `name`, `description`, `factor`, `factor_name`){
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
      if (!missing(`factor`)) {
        stopifnot(is.character(`factor`), length(`factor`) == 1)
        self$`factor` <- `factor`
      }
      if (!missing(`factor_name`)) {
        stopifnot(is.character(`factor_name`), length(`factor_name`) == 1)
        self$`factor_name` <- `factor_name`
      }
    },
    toJSON = function() {
      FactorLevelGetDetailDTOObject <- list()
      if (!is.null(self$`uri`)) {
        FactorLevelGetDetailDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        FactorLevelGetDetailDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        FactorLevelGetDetailDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`factor`)) {
        FactorLevelGetDetailDTOObject[['factor']] <- self$`factor`
      }
      if (!is.null(self$`factor_name`)) {
        FactorLevelGetDetailDTOObject[['factor_name']] <- self$`factor_name`
      }

      FactorLevelGetDetailDTOObject
    },
    fromJSON = function(FactorLevelGetDetailDTOJson) {
      FactorLevelGetDetailDTOObject <- jsonlite::fromJSON(FactorLevelGetDetailDTOJson)
      if (!is.null(FactorLevelGetDetailDTOObject$`uri`)) {
        self$`uri` <- FactorLevelGetDetailDTOObject$`uri`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`name`)) {
        self$`name` <- FactorLevelGetDetailDTOObject$`name`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`description`)) {
        self$`description` <- FactorLevelGetDetailDTOObject$`description`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`factor`)) {
        self$`factor` <- FactorLevelGetDetailDTOObject$`factor`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`factor_name`)) {
        self$`factor_name` <- FactorLevelGetDetailDTOObject$`factor_name`
      }
    },
    fromJSONObject = function(FactorLevelGetDetailDTOObject) {
      if (!is.null(FactorLevelGetDetailDTOObject$`uri`)) {
        self$`uri` <- FactorLevelGetDetailDTOObject$`uri`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`name`)) {
        self$`name` <- FactorLevelGetDetailDTOObject$`name`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`description`)) {
        self$`description` <- FactorLevelGetDetailDTOObject$`description`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`factor`)) {
        self$`factor` <- FactorLevelGetDetailDTOObject$`factor`
      }
      if (!is.null(FactorLevelGetDetailDTOObject$`factor_name`)) {
        self$`factor_name` <- FactorLevelGetDetailDTOObject$`factor_name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "description": %s,
           "factor": %s,
           "factor_name": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`factor`), "null",jsonlite::toJSON(self$`factor`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`factor_name`), "null",jsonlite::toJSON(self$`factor_name`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(FactorLevelGetDetailDTOJson) {
      FactorLevelGetDetailDTOObject <- jsonlite::fromJSON(FactorLevelGetDetailDTOJson)
      self$`uri` <- FactorLevelGetDetailDTOObject$`uri`
      self$`name` <- FactorLevelGetDetailDTOObject$`name`
      self$`description` <- FactorLevelGetDetailDTOObject$`description`
      self$`factor` <- FactorLevelGetDetailDTOObject$`factor`
      self$`factor_name` <- FactorLevelGetDetailDTOObject$`factor_name`
    }
  )
)
