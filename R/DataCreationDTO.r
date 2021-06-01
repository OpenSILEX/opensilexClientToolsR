# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DataCreationDTO Class
#'
#' @field uri 
#' @field date 
#' @field timezone 
#' @field scientific_objects 
#' @field variable 
#' @field value 
#' @field confidence 
#' @field provenance 
#' @field metadata 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataCreationDTO <- R6::R6Class(
  'DataCreationDTO',
  public = list(
    `uri` = NULL,
    `date` = NULL,
    `timezone` = NULL,
    `scientific_objects` = NULL,
    `variable` = NULL,
    `value` = NULL,
    `confidence` = NULL,
    `provenance` = NULL,
    `metadata` = NULL,
    initialize = function(`uri`, `date`, `timezone`, `scientific_objects`, `variable`, `value`, `confidence`, `provenance`, `metadata`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`timezone`)) {
        stopifnot(is.character(`timezone`), length(`timezone`) == 1)
        self$`timezone` <- `timezone`
      }
      if (!missing(`scientific_objects`)) {
        stopifnot(is.list(`scientific_objects`), length(`scientific_objects`) != 0)
        lapply(`scientific_objects`, function(x) stopifnot(is.character(x)))
        self$`scientific_objects` <- `scientific_objects`
      }
      if (!missing(`variable`)) {
        stopifnot(is.character(`variable`), length(`variable`) == 1)
        self$`variable` <- `variable`
      }
      if (!missing(`value`)) {
        stopifnot(R6::is.R6(`value`))
        self$`value` <- `value`
      }
      if (!missing(`confidence`)) {
        stopifnot(is.numeric(`confidence`), length(`confidence`) == 1)
        self$`confidence` <- `confidence`
      }
      if (!missing(`provenance`)) {
        stopifnot(R6::is.R6(`provenance`))
        self$`provenance` <- `provenance`
      }
      if (!missing(`metadata`)) {
        stopifnot(R6::is.R6(`metadata`))
        self$`metadata` <- `metadata`
      }
    },
    toJSON = function() {
      DataCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        DataCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`date`)) {
        DataCreationDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`timezone`)) {
        DataCreationDTOObject[['timezone']] <- self$`timezone`
      }
      if (!is.null(self$`scientific_objects`)) {
        DataCreationDTOObject[['scientific_objects']] <- self$`scientific_objects`
      }
      if (!is.null(self$`variable`)) {
        DataCreationDTOObject[['variable']] <- self$`variable`
      }
      if (!is.null(self$`value`)) {
        DataCreationDTOObject[['value']] <- self$`value`$toJSON()
      }
      if (!is.null(self$`confidence`)) {
        DataCreationDTOObject[['confidence']] <- self$`confidence`
      }
      if (!is.null(self$`provenance`)) {
        DataCreationDTOObject[['provenance']] <- self$`provenance`$toJSON()
      }
      if (!is.null(self$`metadata`)) {
        DataCreationDTOObject[['metadata']] <- self$`metadata`$toJSON()
      }

      DataCreationDTOObject
    },
    fromJSON = function(DataCreationDTOJson) {
      DataCreationDTOObject <- jsonlite::fromJSON(DataCreationDTOJson)
      if (!is.null(DataCreationDTOObject$`uri`)) {
        self$`uri` <- DataCreationDTOObject$`uri`
      }
      if (!is.null(DataCreationDTOObject$`date`)) {
        self$`date` <- DataCreationDTOObject$`date`
      }
      if (!is.null(DataCreationDTOObject$`timezone`)) {
        self$`timezone` <- DataCreationDTOObject$`timezone`
      }
      if (!is.null(DataCreationDTOObject$`scientific_objects`)) {
        self$`scientific_objects` <- DataCreationDTOObject$`scientific_objects`
      }
      if (!is.null(DataCreationDTOObject$`variable`)) {
        self$`variable` <- DataCreationDTOObject$`variable`
      }
      if (!is.null(DataCreationDTOObject$`value`)) {
        valueObject <- ObjectDTO$new()
        valueObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$value, auto_unbox = TRUE, null = "null"))
        self$`value` <- valueObject
      }
      if (!is.null(DataCreationDTOObject$`confidence`)) {
        self$`confidence` <- DataCreationDTOObject$`confidence`
      }
      if (!is.null(DataCreationDTOObject$`provenance`)) {
        provenanceObject <- DataProvenanceModel$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DataCreationDTOObject$`metadata`)) {
        metadataObject <- ObjectDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
    },
    fromJSONObject = function(DataCreationDTOObject) {
      if (!is.null(DataCreationDTOObject$`uri`)) {
        self$`uri` <- DataCreationDTOObject$`uri`
      }
      if (!is.null(DataCreationDTOObject$`date`)) {
        self$`date` <- DataCreationDTOObject$`date`
      }
      if (!is.null(DataCreationDTOObject$`timezone`)) {
        self$`timezone` <- DataCreationDTOObject$`timezone`
      }
      if (!is.null(DataCreationDTOObject$`scientific_objects`)) {
        self$`scientific_objects` <- DataCreationDTOObject$`scientific_objects`
      }
      if (!is.null(DataCreationDTOObject$`variable`)) {
        self$`variable` <- DataCreationDTOObject$`variable`
      }
      if (!is.null(DataCreationDTOObject$`value`)) {
        valueObject <- ObjectDTO$new()
        valueObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$value, auto_unbox = TRUE, null = "null"))
        self$`value` <- valueObject
      }
      if (!is.null(DataCreationDTOObject$`confidence`)) {
        self$`confidence` <- DataCreationDTOObject$`confidence`
      }
      if (!is.null(DataCreationDTOObject$`provenance`)) {
        provenanceObject <- DataProvenanceModel$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DataCreationDTOObject$`metadata`)) {
        metadataObject <- ObjectDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "date": %s,
           "timezone": %s,
           "scientific_objects": [%s],
           "variable": %s,
           "value": %s,
           "confidence": %s,
           "provenance": %s,
           "metadata": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`date`), "null",jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`timezone`), "null",jsonlite::toJSON(self$`timezone`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`scientific_objects`) || length(self$`scientific_objects`) == 0, "" ,lapply(self$`scientific_objects`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`variable`), "null",jsonlite::toJSON(self$`variable`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`value`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`confidence`), "null",as.numeric(jsonlite::toJSON(self$`confidence`,auto_unbox=TRUE, null = "null"))),
        jsonlite::toJSON(self$`provenance`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`metadata`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(DataCreationDTOJson) {
      DataCreationDTOObject <- jsonlite::fromJSON(DataCreationDTOJson)
      self$`uri` <- DataCreationDTOObject$`uri`
      self$`date` <- DataCreationDTOObject$`date`
      self$`timezone` <- DataCreationDTOObject$`timezone`
      self$`scientific_objects` <- DataCreationDTOObject$`scientific_objects`
      self$`variable` <- DataCreationDTOObject$`variable`
      ObjectDTOObject <- ObjectDTO$new()
      self$`value` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$value, auto_unbox = TRUE))
      self$`confidence` <- DataCreationDTOObject$`confidence`
      DataProvenanceModelObject <- DataProvenanceModel$new()
      self$`provenance` <- DataProvenanceModelObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$provenance, auto_unbox = TRUE))
      ObjectDTOObject <- ObjectDTO$new()
      self$`metadata` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(DataCreationDTOObject$metadata, auto_unbox = TRUE))
    }
  )
)
