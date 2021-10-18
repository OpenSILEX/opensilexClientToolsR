# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ActivityGetDTO Class
#'
#' @field rdf_type 
#' @field uri 
#' @field start_date 
#' @field end_date 
#' @field settings 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ActivityGetDTO <- R6::R6Class(
  'ActivityGetDTO',
  public = list(
    `rdf_type` = NULL,
    `uri` = NULL,
    `start_date` = NULL,
    `end_date` = NULL,
    `settings` = NULL,
    initialize = function(`rdf_type`, `uri`, `start_date`, `end_date`, `settings`){
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`start_date`)) {
        stopifnot(is.character(`start_date`), length(`start_date`) == 1)
        self$`start_date` <- `start_date`
      }
      if (!missing(`end_date`)) {
        stopifnot(is.character(`end_date`), length(`end_date`) == 1)
        self$`end_date` <- `end_date`
      }
      if (!missing(`settings`)) {
        stopifnot(R6::is.R6(`settings`))
        self$`settings` <- `settings`
      }
    },
    toJSON = function() {
      ActivityGetDTOObject <- list()
      if (!is.null(self$`rdf_type`)) {
        ActivityGetDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`uri`)) {
        ActivityGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`start_date`)) {
        ActivityGetDTOObject[['start_date']] <- self$`start_date`
      }
      if (!is.null(self$`end_date`)) {
        ActivityGetDTOObject[['end_date']] <- self$`end_date`
      }
      if (!is.null(self$`settings`)) {
        ActivityGetDTOObject[['settings']] <- self$`settings`$toJSON()
      }

      ActivityGetDTOObject
    },
    fromJSON = function(ActivityGetDTOJson) {
      ActivityGetDTOObject <- jsonlite::fromJSON(ActivityGetDTOJson)
      if (!is.null(ActivityGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ActivityGetDTOObject$`rdf_type`
      }
      if (!is.null(ActivityGetDTOObject$`uri`)) {
        self$`uri` <- ActivityGetDTOObject$`uri`
      }
      if (!is.null(ActivityGetDTOObject$`start_date`)) {
        self$`start_date` <- ActivityGetDTOObject$`start_date`
      }
      if (!is.null(ActivityGetDTOObject$`end_date`)) {
        self$`end_date` <- ActivityGetDTOObject$`end_date`
      }
      if (!is.null(ActivityGetDTOObject$`settings`)) {
        settingsObject <- ObjectDTO$new()
        settingsObject$fromJSON(jsonlite::toJSON(ActivityGetDTOObject$settings, auto_unbox = TRUE, null = "null"))
        self$`settings` <- settingsObject
      }
    },
    fromJSONObject = function(ActivityGetDTOObject) {
      if (!is.null(ActivityGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ActivityGetDTOObject$`rdf_type`
      }
      if (!is.null(ActivityGetDTOObject$`uri`)) {
        self$`uri` <- ActivityGetDTOObject$`uri`
      }
      if (!is.null(ActivityGetDTOObject$`start_date`)) {
        self$`start_date` <- ActivityGetDTOObject$`start_date`
      }
      if (!is.null(ActivityGetDTOObject$`end_date`)) {
        self$`end_date` <- ActivityGetDTOObject$`end_date`
      }
      if (!is.null(ActivityGetDTOObject$`settings`)) {
        settingsObject <- ObjectDTO$new()
        settingsObject$fromJSON(jsonlite::toJSON(ActivityGetDTOObject$settings, auto_unbox = TRUE, null = "null"))
        self$`settings` <- settingsObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "rdf_type": %s,
           "uri": %s,
           "start_date": %s,
           "end_date": %s,
           "settings": %s
        }',
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`start_date`), "null",jsonlite::toJSON(self$`start_date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`end_date`), "null",jsonlite::toJSON(self$`end_date`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`settings`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(ActivityGetDTOJson) {
      ActivityGetDTOObject <- jsonlite::fromJSON(ActivityGetDTOJson)
      self$`rdf_type` <- ActivityGetDTOObject$`rdf_type`
      self$`uri` <- ActivityGetDTOObject$`uri`
      self$`start_date` <- ActivityGetDTOObject$`start_date`
      self$`end_date` <- ActivityGetDTOObject$`end_date`
      ObjectDTOObject <- ObjectDTO$new()
      self$`settings` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(ActivityGetDTOObject$settings, auto_unbox = TRUE))
    }
  )
)
