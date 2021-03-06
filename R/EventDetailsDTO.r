# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' EventDetailsDTO Class
#'
#' @field uri 
#' @field rdf_type 
#' @field rdf_type_name 
#' @field start 
#' @field end 
#' @field is_instant 
#' @field description 
#' @field targets 
#' @field author 
#' @field relations 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EventDetailsDTO <- R6::R6Class(
  'EventDetailsDTO',
  public = list(
    `uri` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    `start` = NULL,
    `end` = NULL,
    `is_instant` = NULL,
    `description` = NULL,
    `targets` = NULL,
    `author` = NULL,
    `relations` = NULL,
    initialize = function(`uri`, `rdf_type`, `rdf_type_name`, `start`, `end`, `is_instant`, `description`, `targets`, `author`, `relations`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`rdf_type_name`)) {
        stopifnot(is.character(`rdf_type_name`), length(`rdf_type_name`) == 1)
        self$`rdf_type_name` <- `rdf_type_name`
      }
      if (!missing(`start`)) {
        stopifnot(is.character(`start`), length(`start`) == 1)
        self$`start` <- `start`
      }
      if (!missing(`end`)) {
        stopifnot(is.character(`end`), length(`end`) == 1)
        self$`end` <- `end`
      }
      if (!missing(`is_instant`)) {
        self$`is_instant` <- `is_instant`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`targets`)) {
        stopifnot(is.list(`targets`), length(`targets`) != 0)
        lapply(`targets`, function(x) stopifnot(is.character(x)))
        self$`targets` <- `targets`
      }
      if (!missing(`author`)) {
        stopifnot(is.character(`author`), length(`author`) == 1)
        self$`author` <- `author`
      }
      if (!missing(`relations`)) {
        stopifnot(is.list(`relations`), length(`relations`) != 0)
        lapply(`relations`, function(x) stopifnot(R6::is.R6(x)))
        self$`relations` <- `relations`
      }
    },
    toJSON = function() {
      EventDetailsDTOObject <- list()
      if (!is.null(self$`uri`)) {
        EventDetailsDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        EventDetailsDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        EventDetailsDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`start`)) {
        EventDetailsDTOObject[['start']] <- self$`start`
      }
      if (!is.null(self$`end`)) {
        EventDetailsDTOObject[['end']] <- self$`end`
      }
      if (!is.null(self$`is_instant`)) {
        EventDetailsDTOObject[['is_instant']] <- self$`is_instant`
      }
      if (!is.null(self$`description`)) {
        EventDetailsDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`targets`)) {
        EventDetailsDTOObject[['targets']] <- self$`targets`
      }
      if (!is.null(self$`author`)) {
        EventDetailsDTOObject[['author']] <- self$`author`
      }
      if (!is.null(self$`relations`)) {
        EventDetailsDTOObject[['relations']] <- lapply(self$`relations`, function(x) x$toJSON())
      }

      EventDetailsDTOObject
    },
    fromJSON = function(EventDetailsDTOJson) {
      EventDetailsDTOObject <- jsonlite::fromJSON(EventDetailsDTOJson)
      if (!is.null(EventDetailsDTOObject$`uri`)) {
        self$`uri` <- EventDetailsDTOObject$`uri`
      }
      if (!is.null(EventDetailsDTOObject$`rdf_type`)) {
        self$`rdf_type` <- EventDetailsDTOObject$`rdf_type`
      }
      if (!is.null(EventDetailsDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- EventDetailsDTOObject$`rdf_type_name`
      }
      if (!is.null(EventDetailsDTOObject$`start`)) {
        self$`start` <- EventDetailsDTOObject$`start`
      }
      if (!is.null(EventDetailsDTOObject$`end`)) {
        self$`end` <- EventDetailsDTOObject$`end`
      }
      if (!is.null(EventDetailsDTOObject$`is_instant`)) {
        self$`is_instant` <- EventDetailsDTOObject$`is_instant`
      }
      if (!is.null(EventDetailsDTOObject$`description`)) {
        self$`description` <- EventDetailsDTOObject$`description`
      }
      if (!is.null(EventDetailsDTOObject$`targets`)) {
        self$`targets` <- EventDetailsDTOObject$`targets`
      }
      if (!is.null(EventDetailsDTOObject$`author`)) {
        self$`author` <- EventDetailsDTOObject$`author`
      }
      if (!is.null(EventDetailsDTOObject$`relations`)) {
        self$`relations` <- lapply(EventDetailsDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
    },
    fromJSONObject = function(EventDetailsDTOObject) {
      if (!is.null(EventDetailsDTOObject$`uri`)) {
        self$`uri` <- EventDetailsDTOObject$`uri`
      }
      if (!is.null(EventDetailsDTOObject$`rdf_type`)) {
        self$`rdf_type` <- EventDetailsDTOObject$`rdf_type`
      }
      if (!is.null(EventDetailsDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- EventDetailsDTOObject$`rdf_type_name`
      }
      if (!is.null(EventDetailsDTOObject$`start`)) {
        self$`start` <- EventDetailsDTOObject$`start`
      }
      if (!is.null(EventDetailsDTOObject$`end`)) {
        self$`end` <- EventDetailsDTOObject$`end`
      }
      if (!is.null(EventDetailsDTOObject$`is_instant`)) {
        self$`is_instant` <- EventDetailsDTOObject$`is_instant`
      }
      if (!is.null(EventDetailsDTOObject$`description`)) {
        self$`description` <- EventDetailsDTOObject$`description`
      }
      if (!is.null(EventDetailsDTOObject$`targets`)) {
        self$`targets` <- EventDetailsDTOObject$`targets`
      }
      if (!is.null(EventDetailsDTOObject$`author`)) {
        self$`author` <- EventDetailsDTOObject$`author`
      }
      if (!is.null(EventDetailsDTOObject$`relations`)) {
        self$`relations` <- lapply(EventDetailsDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
    },
    toJSONString = function() {
      relationsList = paste(lapply(self$`relations`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "rdf_type": %s,
           "rdf_type_name": %s,
           "start": %s,
           "end": %s,
           "is_instant": %s,
           "description": %s,
           "targets": [%s],
           "author": %s,
           "relations": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`start`), "null",jsonlite::toJSON(self$`start`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`end`), "null",jsonlite::toJSON(self$`end`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`is_instant`), "null",jsonlite::toJSON(self$`is_instant`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`targets`) || length(self$`targets`) == 0, "" ,lapply(self$`targets`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`author`), "null",jsonlite::toJSON(self$`author`,auto_unbox=TRUE, null = "null")),
        relationsList
      )
    },
    fromJSONString = function(EventDetailsDTOJson) {
      EventDetailsDTOObject <- jsonlite::fromJSON(EventDetailsDTOJson)
      self$`uri` <- EventDetailsDTOObject$`uri`
      self$`rdf_type` <- EventDetailsDTOObject$`rdf_type`
      self$`rdf_type_name` <- EventDetailsDTOObject$`rdf_type_name`
      self$`start` <- EventDetailsDTOObject$`start`
      self$`end` <- EventDetailsDTOObject$`end`
      self$`is_instant` <- EventDetailsDTOObject$`is_instant`
      self$`description` <- EventDetailsDTOObject$`description`
      self$`targets` <- EventDetailsDTOObject$`targets`
      self$`author` <- EventDetailsDTOObject$`author`
      self$`relations` <- lapply(EventDetailsDTOObject$`relations`, function(x) RDFObjectRelationDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
