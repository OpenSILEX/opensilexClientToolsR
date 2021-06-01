# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ActivityCreationDTO Class
#'
#' @field rdf_type 
#' @field uri 
#' @field start_date 
#' @field end_date 
#' @field timezone 
#' @field settings 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ActivityCreationDTO <- R6::R6Class(
  'ActivityCreationDTO',
  public = list(
    `rdf_type` = NULL,
    `uri` = NULL,
    `start_date` = NULL,
    `end_date` = NULL,
    `timezone` = NULL,
    `settings` = NULL,
    initialize = function(`rdf_type`, `uri`, `start_date`, `end_date`, `timezone`, `settings`){
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
      if (!missing(`timezone`)) {
        stopifnot(is.character(`timezone`), length(`timezone`) == 1)
        self$`timezone` <- `timezone`
      }
      if (!missing(`settings`)) {
        stopifnot(R6::is.R6(`settings`))
        self$`settings` <- `settings`
      }
    },
    toJSON = function() {
      ActivityCreationDTOObject <- list()
      if (!is.null(self$`rdf_type`)) {
        ActivityCreationDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`uri`)) {
        ActivityCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`start_date`)) {
        ActivityCreationDTOObject[['start_date']] <- self$`start_date`
      }
      if (!is.null(self$`end_date`)) {
        ActivityCreationDTOObject[['end_date']] <- self$`end_date`
      }
      if (!is.null(self$`timezone`)) {
        ActivityCreationDTOObject[['timezone']] <- self$`timezone`
      }
      if (!is.null(self$`settings`)) {
        ActivityCreationDTOObject[['settings']] <- self$`settings`$toJSON()
      }

      ActivityCreationDTOObject
    },
    fromJSON = function(ActivityCreationDTOJson) {
      ActivityCreationDTOObject <- jsonlite::fromJSON(ActivityCreationDTOJson)
      if (!is.null(ActivityCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ActivityCreationDTOObject$`rdf_type`
      }
      if (!is.null(ActivityCreationDTOObject$`uri`)) {
        self$`uri` <- ActivityCreationDTOObject$`uri`
      }
      if (!is.null(ActivityCreationDTOObject$`start_date`)) {
        self$`start_date` <- ActivityCreationDTOObject$`start_date`
      }
      if (!is.null(ActivityCreationDTOObject$`end_date`)) {
        self$`end_date` <- ActivityCreationDTOObject$`end_date`
      }
      if (!is.null(ActivityCreationDTOObject$`timezone`)) {
        self$`timezone` <- ActivityCreationDTOObject$`timezone`
      }
      if (!is.null(ActivityCreationDTOObject$`settings`)) {
        settingsObject <- ObjectDTO$new()
        settingsObject$fromJSON(jsonlite::toJSON(ActivityCreationDTOObject$settings, auto_unbox = TRUE, null = "null"))
        self$`settings` <- settingsObject
      }
    },
    fromJSONObject = function(ActivityCreationDTOObject) {
      if (!is.null(ActivityCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ActivityCreationDTOObject$`rdf_type`
      }
      if (!is.null(ActivityCreationDTOObject$`uri`)) {
        self$`uri` <- ActivityCreationDTOObject$`uri`
      }
      if (!is.null(ActivityCreationDTOObject$`start_date`)) {
        self$`start_date` <- ActivityCreationDTOObject$`start_date`
      }
      if (!is.null(ActivityCreationDTOObject$`end_date`)) {
        self$`end_date` <- ActivityCreationDTOObject$`end_date`
      }
      if (!is.null(ActivityCreationDTOObject$`timezone`)) {
        self$`timezone` <- ActivityCreationDTOObject$`timezone`
      }
      if (!is.null(ActivityCreationDTOObject$`settings`)) {
        settingsObject <- ObjectDTO$new()
        settingsObject$fromJSON(jsonlite::toJSON(ActivityCreationDTOObject$settings, auto_unbox = TRUE, null = "null"))
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
           "timezone": %s,
           "settings": %s
        }',
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`start_date`), "null",jsonlite::toJSON(self$`start_date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`end_date`), "null",jsonlite::toJSON(self$`end_date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`timezone`), "null",jsonlite::toJSON(self$`timezone`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`settings`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(ActivityCreationDTOJson) {
      ActivityCreationDTOObject <- jsonlite::fromJSON(ActivityCreationDTOJson)
      self$`rdf_type` <- ActivityCreationDTOObject$`rdf_type`
      self$`uri` <- ActivityCreationDTOObject$`uri`
      self$`start_date` <- ActivityCreationDTOObject$`start_date`
      self$`end_date` <- ActivityCreationDTOObject$`end_date`
      self$`timezone` <- ActivityCreationDTOObject$`timezone`
      ObjectDTOObject <- ObjectDTO$new()
      self$`settings` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(ActivityCreationDTOObject$settings, auto_unbox = TRUE))
    }
  )
)
