# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DataUpdateDTO Class
#'
#' @field uri 
#' @field date 
#' @field timezone 
#' @field scientific_object 
#' @field variable 
#' @field value 
#' @field confidence 
#' @field provenance 
#' @field metadata 
#' @field raw_data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataUpdateDTO <- R6::R6Class(
  'DataUpdateDTO',
  public = list(
    `uri` = NULL,
    `date` = NULL,
    `timezone` = NULL,
    `scientific_object` = NULL,
    `variable` = NULL,
    `value` = NULL,
    `confidence` = NULL,
    `provenance` = NULL,
    `metadata` = NULL,
    `raw_data` = NULL,
    initialize = function(`uri`, `date`, `timezone`, `scientific_object`, `variable`, `value`, `confidence`, `provenance`, `metadata`, `raw_data`){
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
      if (!missing(`scientific_object`)) {
        stopifnot(is.character(`scientific_object`), length(`scientific_object`) == 1)
        self$`scientific_object` <- `scientific_object`
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
      if (!missing(`raw_data`)) {
        stopifnot(is.list(`raw_data`), length(`raw_data`) != 0)
        lapply(`raw_data`, function(x) stopifnot(R6::is.R6(x)))
        self$`raw_data` <- `raw_data`
      }
    },
    toJSON = function() {
      DataUpdateDTOObject <- list()
      if (!is.null(self$`uri`)) {
        DataUpdateDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`date`)) {
        DataUpdateDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`timezone`)) {
        DataUpdateDTOObject[['timezone']] <- self$`timezone`
      }
      if (!is.null(self$`scientific_object`)) {
        DataUpdateDTOObject[['scientific_object']] <- self$`scientific_object`
      }
      if (!is.null(self$`variable`)) {
        DataUpdateDTOObject[['variable']] <- self$`variable`
      }
      if (!is.null(self$`value`)) {
        DataUpdateDTOObject[['value']] <- self$`value`$toJSON()
      }
      if (!is.null(self$`confidence`)) {
        DataUpdateDTOObject[['confidence']] <- self$`confidence`
      }
      if (!is.null(self$`provenance`)) {
        DataUpdateDTOObject[['provenance']] <- self$`provenance`$toJSON()
      }
      if (!is.null(self$`metadata`)) {
        DataUpdateDTOObject[['metadata']] <- self$`metadata`$toJSON()
      }
      if (!is.null(self$`raw_data`)) {
        DataUpdateDTOObject[['raw_data']] <- lapply(self$`raw_data`, function(x) x$toJSON())
      }

      DataUpdateDTOObject
    },
    fromJSON = function(DataUpdateDTOJson) {
      DataUpdateDTOObject <- jsonlite::fromJSON(DataUpdateDTOJson)
      if (!is.null(DataUpdateDTOObject$`uri`)) {
        self$`uri` <- DataUpdateDTOObject$`uri`
      }
      if (!is.null(DataUpdateDTOObject$`date`)) {
        self$`date` <- DataUpdateDTOObject$`date`
      }
      if (!is.null(DataUpdateDTOObject$`timezone`)) {
        self$`timezone` <- DataUpdateDTOObject$`timezone`
      }
      if (!is.null(DataUpdateDTOObject$`scientific_object`)) {
        self$`scientific_object` <- DataUpdateDTOObject$`scientific_object`
      }
      if (!is.null(DataUpdateDTOObject$`variable`)) {
        self$`variable` <- DataUpdateDTOObject$`variable`
      }
      if (!is.null(DataUpdateDTOObject$`value`)) {
        valueObject <- ObjectDTO$new()
        valueObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$value, auto_unbox = TRUE, null = "null"))
        self$`value` <- valueObject
      }
      if (!is.null(DataUpdateDTOObject$`confidence`)) {
        self$`confidence` <- DataUpdateDTOObject$`confidence`
      }
      if (!is.null(DataUpdateDTOObject$`provenance`)) {
        provenanceObject <- DataProvenanceModel$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DataUpdateDTOObject$`metadata`)) {
        metadataObject <- ObjectDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
      if (!is.null(DataUpdateDTOObject$`raw_data`)) {
        self$`raw_data` <- lapply(DataUpdateDTOObject$`raw_data`, function(x) {
          raw_dataObject <- ObjectDTO$new()
          raw_dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          raw_dataObject
        })
      }
    },
    fromJSONObject = function(DataUpdateDTOObject) {
      if (!is.null(DataUpdateDTOObject$`uri`)) {
        self$`uri` <- DataUpdateDTOObject$`uri`
      }
      if (!is.null(DataUpdateDTOObject$`date`)) {
        self$`date` <- DataUpdateDTOObject$`date`
      }
      if (!is.null(DataUpdateDTOObject$`timezone`)) {
        self$`timezone` <- DataUpdateDTOObject$`timezone`
      }
      if (!is.null(DataUpdateDTOObject$`scientific_object`)) {
        self$`scientific_object` <- DataUpdateDTOObject$`scientific_object`
      }
      if (!is.null(DataUpdateDTOObject$`variable`)) {
        self$`variable` <- DataUpdateDTOObject$`variable`
      }
      if (!is.null(DataUpdateDTOObject$`value`)) {
        valueObject <- ObjectDTO$new()
        valueObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$value, auto_unbox = TRUE, null = "null"))
        self$`value` <- valueObject
      }
      if (!is.null(DataUpdateDTOObject$`confidence`)) {
        self$`confidence` <- DataUpdateDTOObject$`confidence`
      }
      if (!is.null(DataUpdateDTOObject$`provenance`)) {
        provenanceObject <- DataProvenanceModel$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DataUpdateDTOObject$`metadata`)) {
        metadataObject <- ObjectDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
      if (!is.null(DataUpdateDTOObject$`raw_data`)) {
        self$`raw_data` <- lapply(DataUpdateDTOObject$`raw_data`, function(x) {
          raw_dataObject <- ObjectDTO$new()
          raw_dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          raw_dataObject
        })
      }
    },
    toJSONString = function() {
      raw_dataList = paste(lapply(self$`raw_data`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "date": %s,
           "timezone": %s,
           "scientific_object": %s,
           "variable": %s,
           "value": %s,
           "confidence": %s,
           "provenance": %s,
           "metadata": %s,
           "raw_data": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`date`), "null",jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`timezone`), "null",jsonlite::toJSON(self$`timezone`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`scientific_object`), "null",jsonlite::toJSON(self$`scientific_object`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`variable`), "null",jsonlite::toJSON(self$`variable`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`value`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`confidence`), "null",as.numeric(jsonlite::toJSON(self$`confidence`,auto_unbox=TRUE, null = "null"))),
        jsonlite::toJSON(self$`provenance`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`metadata`$toJSON(),auto_unbox=TRUE, null = "null"),
        raw_dataList
      )
    },
    fromJSONString = function(DataUpdateDTOJson) {
      DataUpdateDTOObject <- jsonlite::fromJSON(DataUpdateDTOJson)
      self$`uri` <- DataUpdateDTOObject$`uri`
      self$`date` <- DataUpdateDTOObject$`date`
      self$`timezone` <- DataUpdateDTOObject$`timezone`
      self$`scientific_object` <- DataUpdateDTOObject$`scientific_object`
      self$`variable` <- DataUpdateDTOObject$`variable`
      ObjectDTOObject <- ObjectDTO$new()
      self$`value` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$value, auto_unbox = TRUE))
      self$`confidence` <- DataUpdateDTOObject$`confidence`
      DataProvenanceModelObject <- DataProvenanceModel$new()
      self$`provenance` <- DataProvenanceModelObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$provenance, auto_unbox = TRUE))
      ObjectDTOObject <- ObjectDTO$new()
      self$`metadata` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(DataUpdateDTOObject$metadata, auto_unbox = TRUE))
      self$`raw_data` <- lapply(DataUpdateDTOObject$`raw_data`, function(x) ObjectDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
