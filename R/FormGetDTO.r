# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FormGetDTO Class
#'
#' @field type 
#' @field timezone 
#' @field uri 
#' @field creation_date 
#' @field form_data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FormGetDTO <- R6::R6Class(
  'FormGetDTO',
  public = list(
    `type` = NULL,
    `timezone` = NULL,
    `uri` = NULL,
    `creation_date` = NULL,
    `form_data` = NULL,
    initialize = function(`type`, `timezone`, `uri`, `creation_date`, `form_data`){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`timezone`)) {
        stopifnot(is.character(`timezone`), length(`timezone`) == 1)
        self$`timezone` <- `timezone`
      }
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`creation_date`)) {
        stopifnot(is.character(`creation_date`), length(`creation_date`) == 1)
        self$`creation_date` <- `creation_date`
      }
      if (!missing(`form_data`)) {
        stopifnot(R6::is.R6(`form_data`))
        self$`form_data` <- `form_data`
      }
    },
    toJSON = function() {
      FormGetDTOObject <- list()
      if (!is.null(self$`type`)) {
        FormGetDTOObject[['type']] <- self$`type`
      }
      if (!is.null(self$`timezone`)) {
        FormGetDTOObject[['timezone']] <- self$`timezone`
      }
      if (!is.null(self$`uri`)) {
        FormGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`creation_date`)) {
        FormGetDTOObject[['creation_date']] <- self$`creation_date`
      }
      if (!is.null(self$`form_data`)) {
        FormGetDTOObject[['form_data']] <- self$`form_data`$toJSON()
      }

      FormGetDTOObject
    },
    fromJSON = function(FormGetDTOJson) {
      FormGetDTOObject <- jsonlite::fromJSON(FormGetDTOJson)
      if (!is.null(FormGetDTOObject$`type`)) {
        self$`type` <- FormGetDTOObject$`type`
      }
      if (!is.null(FormGetDTOObject$`timezone`)) {
        self$`timezone` <- FormGetDTOObject$`timezone`
      }
      if (!is.null(FormGetDTOObject$`uri`)) {
        self$`uri` <- FormGetDTOObject$`uri`
      }
      if (!is.null(FormGetDTOObject$`creation_date`)) {
        self$`creation_date` <- FormGetDTOObject$`creation_date`
      }
      if (!is.null(FormGetDTOObject$`form_data`)) {
        form_dataObject <- ObjectDTO$new()
        form_dataObject$fromJSON(jsonlite::toJSON(FormGetDTOObject$form_data, auto_unbox = TRUE, null = "null"))
        self$`form_data` <- form_dataObject
      }
    },
    fromJSONObject = function(FormGetDTOObject) {
      if (!is.null(FormGetDTOObject$`type`)) {
        self$`type` <- FormGetDTOObject$`type`
      }
      if (!is.null(FormGetDTOObject$`timezone`)) {
        self$`timezone` <- FormGetDTOObject$`timezone`
      }
      if (!is.null(FormGetDTOObject$`uri`)) {
        self$`uri` <- FormGetDTOObject$`uri`
      }
      if (!is.null(FormGetDTOObject$`creation_date`)) {
        self$`creation_date` <- FormGetDTOObject$`creation_date`
      }
      if (!is.null(FormGetDTOObject$`form_data`)) {
        form_dataObject <- ObjectDTO$new()
        form_dataObject$fromJSON(jsonlite::toJSON(FormGetDTOObject$form_data, auto_unbox = TRUE, null = "null"))
        self$`form_data` <- form_dataObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "timezone": %s,
           "uri": %s,
           "creation_date": %s,
           "form_data": %s
        }',
        ifelse(is.null(self$`type`), "null",jsonlite::toJSON(self$`type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`timezone`), "null",jsonlite::toJSON(self$`timezone`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`creation_date`), "null",jsonlite::toJSON(self$`creation_date`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`form_data`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(FormGetDTOJson) {
      FormGetDTOObject <- jsonlite::fromJSON(FormGetDTOJson)
      self$`type` <- FormGetDTOObject$`type`
      self$`timezone` <- FormGetDTOObject$`timezone`
      self$`uri` <- FormGetDTOObject$`uri`
      self$`creation_date` <- FormGetDTOObject$`creation_date`
      ObjectDTOObject <- ObjectDTO$new()
      self$`form_data` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(FormGetDTOObject$form_data, auto_unbox = TRUE))
    }
  )
)
