# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ObservationUnitXref Class
#'
#' @field id 
#' @field source 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationUnitXref <- R6::R6Class(
  'ObservationUnitXref',
  public = list(
    `id` = NULL,
    `source` = NULL,
    initialize = function(`id`, `source`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`source`)) {
        stopifnot(is.character(`source`), length(`source`) == 1)
        self$`source` <- `source`
      }
    },
    toJSON = function() {
      ObservationUnitXrefObject <- list()
      if (!is.null(self$`id`)) {
        ObservationUnitXrefObject[['id']] <- self$`id`
      }
      if (!is.null(self$`source`)) {
        ObservationUnitXrefObject[['source']] <- self$`source`
      }

      ObservationUnitXrefObject
    },
    fromJSON = function(ObservationUnitXrefJson) {
      ObservationUnitXrefObject <- jsonlite::fromJSON(ObservationUnitXrefJson)
      if (!is.null(ObservationUnitXrefObject$`id`)) {
        self$`id` <- ObservationUnitXrefObject$`id`
      }
      if (!is.null(ObservationUnitXrefObject$`source`)) {
        self$`source` <- ObservationUnitXrefObject$`source`
      }
    },
    fromJSONObject = function(ObservationUnitXrefObject) {
      if (!is.null(ObservationUnitXrefObject$`id`)) {
        self$`id` <- ObservationUnitXrefObject$`id`
      }
      if (!is.null(ObservationUnitXrefObject$`source`)) {
        self$`source` <- ObservationUnitXrefObject$`source`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "source": %s
        }',
        ifelse(is.null(self$`id`), "null",jsonlite::toJSON(self$`id`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`source`), "null",jsonlite::toJSON(self$`source`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(ObservationUnitXrefJson) {
      ObservationUnitXrefObject <- jsonlite::fromJSON(ObservationUnitXrefJson)
      self$`id` <- ObservationUnitXrefObject$`id`
      self$`source` <- ObservationUnitXrefObject$`source`
    }
  )
)
