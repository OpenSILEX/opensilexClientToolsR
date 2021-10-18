# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DataGetDTO Class
#'
#' @field uri 
#' @field date 
#' @field target 
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
DataGetDTO <- R6::R6Class(
  'DataGetDTO',
  public = list(
    `uri` = NULL,
    `date` = NULL,
    `target` = NULL,
    `variable` = NULL,
    `value` = NULL,
    `confidence` = NULL,
    `provenance` = NULL,
    `metadata` = NULL,
    `raw_data` = NULL,
    initialize = function(`uri`, `date`, `target`, `variable`, `value`, `confidence`, `provenance`, `metadata`, `raw_data`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
      }
      if (!missing(`target`)) {
        stopifnot(is.character(`target`), length(`target`) == 1)
        self$`target` <- `target`
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
      DataGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        DataGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`date`)) {
        DataGetDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`target`)) {
        DataGetDTOObject[['target']] <- self$`target`
      }
      if (!is.null(self$`variable`)) {
        DataGetDTOObject[['variable']] <- self$`variable`
      }
      if (!is.null(self$`value`)) {
        DataGetDTOObject[['value']] <- self$`value`$toJSON()
      }
      if (!is.null(self$`confidence`)) {
        DataGetDTOObject[['confidence']] <- self$`confidence`
      }
      if (!is.null(self$`provenance`)) {
        DataGetDTOObject[['provenance']] <- self$`provenance`$toJSON()
      }
      if (!is.null(self$`metadata`)) {
        DataGetDTOObject[['metadata']] <- self$`metadata`$toJSON()
      }
      if (!is.null(self$`raw_data`)) {
        DataGetDTOObject[['raw_data']] <- lapply(self$`raw_data`, function(x) x$toJSON())
      }

      DataGetDTOObject
    },
    fromJSON = function(DataGetDTOJson) {
      DataGetDTOObject <- jsonlite::fromJSON(DataGetDTOJson)
      if (!is.null(DataGetDTOObject$`uri`)) {
        self$`uri` <- DataGetDTOObject$`uri`
      }
      if (!is.null(DataGetDTOObject$`date`)) {
        self$`date` <- DataGetDTOObject$`date`
      }
      if (!is.null(DataGetDTOObject$`target`)) {
        self$`target` <- DataGetDTOObject$`target`
      }
      if (!is.null(DataGetDTOObject$`variable`)) {
        self$`variable` <- DataGetDTOObject$`variable`
      }
      if (!is.null(DataGetDTOObject$`value`)) {
        valueObject <- ObjectDTO$new()
        valueObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$value, auto_unbox = TRUE, null = "null"))
        self$`value` <- valueObject
      }
      if (!is.null(DataGetDTOObject$`confidence`)) {
        self$`confidence` <- DataGetDTOObject$`confidence`
      }
      if (!is.null(DataGetDTOObject$`provenance`)) {
        provenanceObject <- DataProvenanceModel$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DataGetDTOObject$`metadata`)) {
        metadataObject <- ObjectDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
      if (!is.null(DataGetDTOObject$`raw_data`)) {
        self$`raw_data` <- lapply(DataGetDTOObject$`raw_data`, function(x) {
          raw_dataObject <- ObjectDTO$new()
          raw_dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          raw_dataObject
        })
      }
    },
    fromJSONObject = function(DataGetDTOObject) {
      if (!is.null(DataGetDTOObject$`uri`)) {
        self$`uri` <- DataGetDTOObject$`uri`
      }
      if (!is.null(DataGetDTOObject$`date`)) {
        self$`date` <- DataGetDTOObject$`date`
      }
      if (!is.null(DataGetDTOObject$`target`)) {
        self$`target` <- DataGetDTOObject$`target`
      }
      if (!is.null(DataGetDTOObject$`variable`)) {
        self$`variable` <- DataGetDTOObject$`variable`
      }
      if (!is.null(DataGetDTOObject$`value`)) {
        valueObject <- ObjectDTO$new()
        valueObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$value, auto_unbox = TRUE, null = "null"))
        self$`value` <- valueObject
      }
      if (!is.null(DataGetDTOObject$`confidence`)) {
        self$`confidence` <- DataGetDTOObject$`confidence`
      }
      if (!is.null(DataGetDTOObject$`provenance`)) {
        provenanceObject <- DataProvenanceModel$new()
        provenanceObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$provenance, auto_unbox = TRUE, null = "null"))
        self$`provenance` <- provenanceObject
      }
      if (!is.null(DataGetDTOObject$`metadata`)) {
        metadataObject <- ObjectDTO$new()
        metadataObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$metadata, auto_unbox = TRUE, null = "null"))
        self$`metadata` <- metadataObject
      }
      if (!is.null(DataGetDTOObject$`raw_data`)) {
        self$`raw_data` <- lapply(DataGetDTOObject$`raw_data`, function(x) {
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
           "target": %s,
           "variable": %s,
           "value": %s,
           "confidence": %s,
           "provenance": %s,
           "metadata": %s,
           "raw_data": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`date`), "null",jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`target`), "null",jsonlite::toJSON(self$`target`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`variable`), "null",jsonlite::toJSON(self$`variable`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`value`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`confidence`), "null",as.numeric(jsonlite::toJSON(self$`confidence`,auto_unbox=TRUE, null = "null"))),
        jsonlite::toJSON(self$`provenance`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`metadata`$toJSON(),auto_unbox=TRUE, null = "null"),
        raw_dataList
      )
    },
    fromJSONString = function(DataGetDTOJson) {
      DataGetDTOObject <- jsonlite::fromJSON(DataGetDTOJson)
      self$`uri` <- DataGetDTOObject$`uri`
      self$`date` <- DataGetDTOObject$`date`
      self$`target` <- DataGetDTOObject$`target`
      self$`variable` <- DataGetDTOObject$`variable`
      ObjectDTOObject <- ObjectDTO$new()
      self$`value` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$value, auto_unbox = TRUE))
      self$`confidence` <- DataGetDTOObject$`confidence`
      DataProvenanceModelObject <- DataProvenanceModel$new()
      self$`provenance` <- DataProvenanceModelObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$provenance, auto_unbox = TRUE))
      ObjectDTOObject <- ObjectDTO$new()
      self$`metadata` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(DataGetDTOObject$metadata, auto_unbox = TRUE))
      self$`raw_data` <- lapply(DataGetDTOObject$`raw_data`, function(x) ObjectDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
