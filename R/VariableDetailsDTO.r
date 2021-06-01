# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VariableDetailsDTO Class
#'
#' @field uri 
#' @field name 
#' @field alternative_name 
#' @field description 
#' @field entity 
#' @field characteristic 
#' @field trait 
#' @field trait_name 
#' @field method 
#' @field unit 
#' @field time_interval 
#' @field sampling_interval 
#' @field datatype 
#' @field exact_match 
#' @field close_match 
#' @field broad_match 
#' @field narrow_match 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VariableDetailsDTO <- R6::R6Class(
  'VariableDetailsDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `alternative_name` = NULL,
    `description` = NULL,
    `entity` = NULL,
    `characteristic` = NULL,
    `trait` = NULL,
    `trait_name` = NULL,
    `method` = NULL,
    `unit` = NULL,
    `time_interval` = NULL,
    `sampling_interval` = NULL,
    `datatype` = NULL,
    `exact_match` = NULL,
    `close_match` = NULL,
    `broad_match` = NULL,
    `narrow_match` = NULL,
    initialize = function(`uri`, `name`, `alternative_name`, `description`, `entity`, `characteristic`, `trait`, `trait_name`, `method`, `unit`, `time_interval`, `sampling_interval`, `datatype`, `exact_match`, `close_match`, `broad_match`, `narrow_match`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`alternative_name`)) {
        stopifnot(is.character(`alternative_name`), length(`alternative_name`) == 1)
        self$`alternative_name` <- `alternative_name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`entity`)) {
        stopifnot(R6::is.R6(`entity`))
        self$`entity` <- `entity`
      }
      if (!missing(`characteristic`)) {
        stopifnot(R6::is.R6(`characteristic`))
        self$`characteristic` <- `characteristic`
      }
      if (!missing(`trait`)) {
        stopifnot(is.character(`trait`), length(`trait`) == 1)
        self$`trait` <- `trait`
      }
      if (!missing(`trait_name`)) {
        stopifnot(is.character(`trait_name`), length(`trait_name`) == 1)
        self$`trait_name` <- `trait_name`
      }
      if (!missing(`method`)) {
        stopifnot(R6::is.R6(`method`))
        self$`method` <- `method`
      }
      if (!missing(`unit`)) {
        stopifnot(R6::is.R6(`unit`))
        self$`unit` <- `unit`
      }
      if (!missing(`time_interval`)) {
        stopifnot(is.character(`time_interval`), length(`time_interval`) == 1)
        self$`time_interval` <- `time_interval`
      }
      if (!missing(`sampling_interval`)) {
        stopifnot(is.character(`sampling_interval`), length(`sampling_interval`) == 1)
        self$`sampling_interval` <- `sampling_interval`
      }
      if (!missing(`datatype`)) {
        stopifnot(is.character(`datatype`), length(`datatype`) == 1)
        self$`datatype` <- `datatype`
      }
      if (!missing(`exact_match`)) {
        stopifnot(is.list(`exact_match`), length(`exact_match`) != 0)
        lapply(`exact_match`, function(x) stopifnot(is.character(x)))
        self$`exact_match` <- `exact_match`
      }
      if (!missing(`close_match`)) {
        stopifnot(is.list(`close_match`), length(`close_match`) != 0)
        lapply(`close_match`, function(x) stopifnot(is.character(x)))
        self$`close_match` <- `close_match`
      }
      if (!missing(`broad_match`)) {
        stopifnot(is.list(`broad_match`), length(`broad_match`) != 0)
        lapply(`broad_match`, function(x) stopifnot(is.character(x)))
        self$`broad_match` <- `broad_match`
      }
      if (!missing(`narrow_match`)) {
        stopifnot(is.list(`narrow_match`), length(`narrow_match`) != 0)
        lapply(`narrow_match`, function(x) stopifnot(is.character(x)))
        self$`narrow_match` <- `narrow_match`
      }
    },
    toJSON = function() {
      VariableDetailsDTOObject <- list()
      if (!is.null(self$`uri`)) {
        VariableDetailsDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        VariableDetailsDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`alternative_name`)) {
        VariableDetailsDTOObject[['alternative_name']] <- self$`alternative_name`
      }
      if (!is.null(self$`description`)) {
        VariableDetailsDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`entity`)) {
        VariableDetailsDTOObject[['entity']] <- self$`entity`$toJSON()
      }
      if (!is.null(self$`characteristic`)) {
        VariableDetailsDTOObject[['characteristic']] <- self$`characteristic`$toJSON()
      }
      if (!is.null(self$`trait`)) {
        VariableDetailsDTOObject[['trait']] <- self$`trait`
      }
      if (!is.null(self$`trait_name`)) {
        VariableDetailsDTOObject[['trait_name']] <- self$`trait_name`
      }
      if (!is.null(self$`method`)) {
        VariableDetailsDTOObject[['method']] <- self$`method`$toJSON()
      }
      if (!is.null(self$`unit`)) {
        VariableDetailsDTOObject[['unit']] <- self$`unit`$toJSON()
      }
      if (!is.null(self$`time_interval`)) {
        VariableDetailsDTOObject[['time_interval']] <- self$`time_interval`
      }
      if (!is.null(self$`sampling_interval`)) {
        VariableDetailsDTOObject[['sampling_interval']] <- self$`sampling_interval`
      }
      if (!is.null(self$`datatype`)) {
        VariableDetailsDTOObject[['datatype']] <- self$`datatype`
      }
      if (!is.null(self$`exact_match`)) {
        VariableDetailsDTOObject[['exact_match']] <- self$`exact_match`
      }
      if (!is.null(self$`close_match`)) {
        VariableDetailsDTOObject[['close_match']] <- self$`close_match`
      }
      if (!is.null(self$`broad_match`)) {
        VariableDetailsDTOObject[['broad_match']] <- self$`broad_match`
      }
      if (!is.null(self$`narrow_match`)) {
        VariableDetailsDTOObject[['narrow_match']] <- self$`narrow_match`
      }

      VariableDetailsDTOObject
    },
    fromJSON = function(VariableDetailsDTOJson) {
      VariableDetailsDTOObject <- jsonlite::fromJSON(VariableDetailsDTOJson)
      if (!is.null(VariableDetailsDTOObject$`uri`)) {
        self$`uri` <- VariableDetailsDTOObject$`uri`
      }
      if (!is.null(VariableDetailsDTOObject$`name`)) {
        self$`name` <- VariableDetailsDTOObject$`name`
      }
      if (!is.null(VariableDetailsDTOObject$`alternative_name`)) {
        self$`alternative_name` <- VariableDetailsDTOObject$`alternative_name`
      }
      if (!is.null(VariableDetailsDTOObject$`description`)) {
        self$`description` <- VariableDetailsDTOObject$`description`
      }
      if (!is.null(VariableDetailsDTOObject$`entity`)) {
        entityObject <- EntityGetDTO$new()
        entityObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$entity, auto_unbox = TRUE, null = "null"))
        self$`entity` <- entityObject
      }
      if (!is.null(VariableDetailsDTOObject$`characteristic`)) {
        characteristicObject <- CharacteristicGetDTO$new()
        characteristicObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$characteristic, auto_unbox = TRUE, null = "null"))
        self$`characteristic` <- characteristicObject
      }
      if (!is.null(VariableDetailsDTOObject$`trait`)) {
        self$`trait` <- VariableDetailsDTOObject$`trait`
      }
      if (!is.null(VariableDetailsDTOObject$`trait_name`)) {
        self$`trait_name` <- VariableDetailsDTOObject$`trait_name`
      }
      if (!is.null(VariableDetailsDTOObject$`method`)) {
        methodObject <- MethodGetDTO$new()
        methodObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$method, auto_unbox = TRUE, null = "null"))
        self$`method` <- methodObject
      }
      if (!is.null(VariableDetailsDTOObject$`unit`)) {
        unitObject <- UnitGetDTO$new()
        unitObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$unit, auto_unbox = TRUE, null = "null"))
        self$`unit` <- unitObject
      }
      if (!is.null(VariableDetailsDTOObject$`time_interval`)) {
        self$`time_interval` <- VariableDetailsDTOObject$`time_interval`
      }
      if (!is.null(VariableDetailsDTOObject$`sampling_interval`)) {
        self$`sampling_interval` <- VariableDetailsDTOObject$`sampling_interval`
      }
      if (!is.null(VariableDetailsDTOObject$`datatype`)) {
        self$`datatype` <- VariableDetailsDTOObject$`datatype`
      }
      if (!is.null(VariableDetailsDTOObject$`exact_match`)) {
        self$`exact_match` <- VariableDetailsDTOObject$`exact_match`
      }
      if (!is.null(VariableDetailsDTOObject$`close_match`)) {
        self$`close_match` <- VariableDetailsDTOObject$`close_match`
      }
      if (!is.null(VariableDetailsDTOObject$`broad_match`)) {
        self$`broad_match` <- VariableDetailsDTOObject$`broad_match`
      }
      if (!is.null(VariableDetailsDTOObject$`narrow_match`)) {
        self$`narrow_match` <- VariableDetailsDTOObject$`narrow_match`
      }
    },
    fromJSONObject = function(VariableDetailsDTOObject) {
      if (!is.null(VariableDetailsDTOObject$`uri`)) {
        self$`uri` <- VariableDetailsDTOObject$`uri`
      }
      if (!is.null(VariableDetailsDTOObject$`name`)) {
        self$`name` <- VariableDetailsDTOObject$`name`
      }
      if (!is.null(VariableDetailsDTOObject$`alternative_name`)) {
        self$`alternative_name` <- VariableDetailsDTOObject$`alternative_name`
      }
      if (!is.null(VariableDetailsDTOObject$`description`)) {
        self$`description` <- VariableDetailsDTOObject$`description`
      }
      if (!is.null(VariableDetailsDTOObject$`entity`)) {
        entityObject <- EntityGetDTO$new()
        entityObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$entity, auto_unbox = TRUE, null = "null"))
        self$`entity` <- entityObject
      }
      if (!is.null(VariableDetailsDTOObject$`characteristic`)) {
        characteristicObject <- CharacteristicGetDTO$new()
        characteristicObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$characteristic, auto_unbox = TRUE, null = "null"))
        self$`characteristic` <- characteristicObject
      }
      if (!is.null(VariableDetailsDTOObject$`trait`)) {
        self$`trait` <- VariableDetailsDTOObject$`trait`
      }
      if (!is.null(VariableDetailsDTOObject$`trait_name`)) {
        self$`trait_name` <- VariableDetailsDTOObject$`trait_name`
      }
      if (!is.null(VariableDetailsDTOObject$`method`)) {
        methodObject <- MethodGetDTO$new()
        methodObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$method, auto_unbox = TRUE, null = "null"))
        self$`method` <- methodObject
      }
      if (!is.null(VariableDetailsDTOObject$`unit`)) {
        unitObject <- UnitGetDTO$new()
        unitObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$unit, auto_unbox = TRUE, null = "null"))
        self$`unit` <- unitObject
      }
      if (!is.null(VariableDetailsDTOObject$`time_interval`)) {
        self$`time_interval` <- VariableDetailsDTOObject$`time_interval`
      }
      if (!is.null(VariableDetailsDTOObject$`sampling_interval`)) {
        self$`sampling_interval` <- VariableDetailsDTOObject$`sampling_interval`
      }
      if (!is.null(VariableDetailsDTOObject$`datatype`)) {
        self$`datatype` <- VariableDetailsDTOObject$`datatype`
      }
      if (!is.null(VariableDetailsDTOObject$`exact_match`)) {
        self$`exact_match` <- VariableDetailsDTOObject$`exact_match`
      }
      if (!is.null(VariableDetailsDTOObject$`close_match`)) {
        self$`close_match` <- VariableDetailsDTOObject$`close_match`
      }
      if (!is.null(VariableDetailsDTOObject$`broad_match`)) {
        self$`broad_match` <- VariableDetailsDTOObject$`broad_match`
      }
      if (!is.null(VariableDetailsDTOObject$`narrow_match`)) {
        self$`narrow_match` <- VariableDetailsDTOObject$`narrow_match`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "alternative_name": %s,
           "description": %s,
           "entity": %s,
           "characteristic": %s,
           "trait": %s,
           "trait_name": %s,
           "method": %s,
           "unit": %s,
           "time_interval": %s,
           "sampling_interval": %s,
           "datatype": %s,
           "exact_match": [%s],
           "close_match": [%s],
           "broad_match": [%s],
           "narrow_match": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`alternative_name`), "null",jsonlite::toJSON(self$`alternative_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`entity`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`characteristic`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`trait`), "null",jsonlite::toJSON(self$`trait`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`trait_name`), "null",jsonlite::toJSON(self$`trait_name`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`method`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`unit`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`time_interval`), "null",jsonlite::toJSON(self$`time_interval`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`sampling_interval`), "null",jsonlite::toJSON(self$`sampling_interval`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`datatype`), "null",jsonlite::toJSON(self$`datatype`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`exact_match`) || length(self$`exact_match`) == 0, "" ,lapply(self$`exact_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`close_match`) || length(self$`close_match`) == 0, "" ,lapply(self$`close_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`broad_match`) || length(self$`broad_match`) == 0, "" ,lapply(self$`broad_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`narrow_match`) || length(self$`narrow_match`) == 0, "" ,lapply(self$`narrow_match`, function(x) paste(paste0('"', x, '"'), sep=",")))
      )
    },
    fromJSONString = function(VariableDetailsDTOJson) {
      VariableDetailsDTOObject <- jsonlite::fromJSON(VariableDetailsDTOJson)
      self$`uri` <- VariableDetailsDTOObject$`uri`
      self$`name` <- VariableDetailsDTOObject$`name`
      self$`alternative_name` <- VariableDetailsDTOObject$`alternative_name`
      self$`description` <- VariableDetailsDTOObject$`description`
      EntityGetDTOObject <- EntityGetDTO$new()
      self$`entity` <- EntityGetDTOObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$entity, auto_unbox = TRUE))
      CharacteristicGetDTOObject <- CharacteristicGetDTO$new()
      self$`characteristic` <- CharacteristicGetDTOObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$characteristic, auto_unbox = TRUE))
      self$`trait` <- VariableDetailsDTOObject$`trait`
      self$`trait_name` <- VariableDetailsDTOObject$`trait_name`
      MethodGetDTOObject <- MethodGetDTO$new()
      self$`method` <- MethodGetDTOObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$method, auto_unbox = TRUE))
      UnitGetDTOObject <- UnitGetDTO$new()
      self$`unit` <- UnitGetDTOObject$fromJSON(jsonlite::toJSON(VariableDetailsDTOObject$unit, auto_unbox = TRUE))
      self$`time_interval` <- VariableDetailsDTOObject$`time_interval`
      self$`sampling_interval` <- VariableDetailsDTOObject$`sampling_interval`
      self$`datatype` <- VariableDetailsDTOObject$`datatype`
      self$`exact_match` <- VariableDetailsDTOObject$`exact_match`
      self$`close_match` <- VariableDetailsDTOObject$`close_match`
      self$`broad_match` <- VariableDetailsDTOObject$`broad_match`
      self$`narrow_match` <- VariableDetailsDTOObject$`narrow_match`
    }
  )
)
