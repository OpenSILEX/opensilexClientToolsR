# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MoveDetailsDTO Class
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
#' @field from 
#' @field to 
#' @field targets_positions 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MoveDetailsDTO <- R6::R6Class(
  'MoveDetailsDTO',
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
    `from` = NULL,
    `to` = NULL,
    `targets_positions` = NULL,
    initialize = function(`uri`, `rdf_type`, `rdf_type_name`, `start`, `end`, `is_instant`, `description`, `targets`, `author`, `relations`, `from`, `to`, `targets_positions`){
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
      if (!missing(`from`)) {
        stopifnot(R6::is.R6(`from`))
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        stopifnot(R6::is.R6(`to`))
        self$`to` <- `to`
      }
      if (!missing(`targets_positions`)) {
        stopifnot(is.list(`targets_positions`), length(`targets_positions`) != 0)
        lapply(`targets_positions`, function(x) stopifnot(R6::is.R6(x)))
        self$`targets_positions` <- `targets_positions`
      }
    },
    toJSON = function() {
      MoveDetailsDTOObject <- list()
      if (!is.null(self$`uri`)) {
        MoveDetailsDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        MoveDetailsDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        MoveDetailsDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`start`)) {
        MoveDetailsDTOObject[['start']] <- self$`start`
      }
      if (!is.null(self$`end`)) {
        MoveDetailsDTOObject[['end']] <- self$`end`
      }
      if (!is.null(self$`is_instant`)) {
        MoveDetailsDTOObject[['is_instant']] <- self$`is_instant`
      }
      if (!is.null(self$`description`)) {
        MoveDetailsDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`targets`)) {
        MoveDetailsDTOObject[['targets']] <- self$`targets`
      }
      if (!is.null(self$`author`)) {
        MoveDetailsDTOObject[['author']] <- self$`author`
      }
      if (!is.null(self$`relations`)) {
        MoveDetailsDTOObject[['relations']] <- lapply(self$`relations`, function(x) x$toJSON())
      }
      if (!is.null(self$`from`)) {
        MoveDetailsDTOObject[['from']] <- self$`from`$toJSON()
      }
      if (!is.null(self$`to`)) {
        MoveDetailsDTOObject[['to']] <- self$`to`$toJSON()
      }
      if (!is.null(self$`targets_positions`)) {
        MoveDetailsDTOObject[['targets_positions']] <- lapply(self$`targets_positions`, function(x) x$toJSON())
      }

      MoveDetailsDTOObject
    },
    fromJSON = function(MoveDetailsDTOJson) {
      MoveDetailsDTOObject <- jsonlite::fromJSON(MoveDetailsDTOJson)
      if (!is.null(MoveDetailsDTOObject$`uri`)) {
        self$`uri` <- MoveDetailsDTOObject$`uri`
      }
      if (!is.null(MoveDetailsDTOObject$`rdf_type`)) {
        self$`rdf_type` <- MoveDetailsDTOObject$`rdf_type`
      }
      if (!is.null(MoveDetailsDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- MoveDetailsDTOObject$`rdf_type_name`
      }
      if (!is.null(MoveDetailsDTOObject$`start`)) {
        self$`start` <- MoveDetailsDTOObject$`start`
      }
      if (!is.null(MoveDetailsDTOObject$`end`)) {
        self$`end` <- MoveDetailsDTOObject$`end`
      }
      if (!is.null(MoveDetailsDTOObject$`is_instant`)) {
        self$`is_instant` <- MoveDetailsDTOObject$`is_instant`
      }
      if (!is.null(MoveDetailsDTOObject$`description`)) {
        self$`description` <- MoveDetailsDTOObject$`description`
      }
      if (!is.null(MoveDetailsDTOObject$`targets`)) {
        self$`targets` <- MoveDetailsDTOObject$`targets`
      }
      if (!is.null(MoveDetailsDTOObject$`author`)) {
        self$`author` <- MoveDetailsDTOObject$`author`
      }
      if (!is.null(MoveDetailsDTOObject$`relations`)) {
        self$`relations` <- lapply(MoveDetailsDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
      if (!is.null(MoveDetailsDTOObject$`from`)) {
        fromObject <- InfrastructureFacilityNamedDTO$new()
        fromObject$fromJSON(jsonlite::toJSON(MoveDetailsDTOObject$from, auto_unbox = TRUE, null = "null"))
        self$`from` <- fromObject
      }
      if (!is.null(MoveDetailsDTOObject$`to`)) {
        toObject <- InfrastructureFacilityNamedDTO$new()
        toObject$fromJSON(jsonlite::toJSON(MoveDetailsDTOObject$to, auto_unbox = TRUE, null = "null"))
        self$`to` <- toObject
      }
      if (!is.null(MoveDetailsDTOObject$`targets_positions`)) {
        self$`targets_positions` <- lapply(MoveDetailsDTOObject$`targets_positions`, function(x) {
          targets_positionsObject <- ConcernedItemPositionGetDTO$new()
          targets_positionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          targets_positionsObject
        })
      }
    },
    fromJSONObject = function(MoveDetailsDTOObject) {
      if (!is.null(MoveDetailsDTOObject$`uri`)) {
        self$`uri` <- MoveDetailsDTOObject$`uri`
      }
      if (!is.null(MoveDetailsDTOObject$`rdf_type`)) {
        self$`rdf_type` <- MoveDetailsDTOObject$`rdf_type`
      }
      if (!is.null(MoveDetailsDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- MoveDetailsDTOObject$`rdf_type_name`
      }
      if (!is.null(MoveDetailsDTOObject$`start`)) {
        self$`start` <- MoveDetailsDTOObject$`start`
      }
      if (!is.null(MoveDetailsDTOObject$`end`)) {
        self$`end` <- MoveDetailsDTOObject$`end`
      }
      if (!is.null(MoveDetailsDTOObject$`is_instant`)) {
        self$`is_instant` <- MoveDetailsDTOObject$`is_instant`
      }
      if (!is.null(MoveDetailsDTOObject$`description`)) {
        self$`description` <- MoveDetailsDTOObject$`description`
      }
      if (!is.null(MoveDetailsDTOObject$`targets`)) {
        self$`targets` <- MoveDetailsDTOObject$`targets`
      }
      if (!is.null(MoveDetailsDTOObject$`author`)) {
        self$`author` <- MoveDetailsDTOObject$`author`
      }
      if (!is.null(MoveDetailsDTOObject$`relations`)) {
        self$`relations` <- lapply(MoveDetailsDTOObject$`relations`, function(x) {
          relationsObject <- RDFObjectRelationDTO$new()
          relationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          relationsObject
        })
      }
      if (!is.null(MoveDetailsDTOObject$`from`)) {
        fromObject <- InfrastructureFacilityNamedDTO$new()
        fromObject$fromJSON(jsonlite::toJSON(MoveDetailsDTOObject$from, auto_unbox = TRUE, null = "null"))
        self$`from` <- fromObject
      }
      if (!is.null(MoveDetailsDTOObject$`to`)) {
        toObject <- InfrastructureFacilityNamedDTO$new()
        toObject$fromJSON(jsonlite::toJSON(MoveDetailsDTOObject$to, auto_unbox = TRUE, null = "null"))
        self$`to` <- toObject
      }
      if (!is.null(MoveDetailsDTOObject$`targets_positions`)) {
        self$`targets_positions` <- lapply(MoveDetailsDTOObject$`targets_positions`, function(x) {
          targets_positionsObject <- ConcernedItemPositionGetDTO$new()
          targets_positionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          targets_positionsObject
        })
      }
    },
    toJSONString = function() {
      relationsList = paste(lapply(self$`relations`, function(x) x$toJSONString()),collapse = ",")
      targets_positionsList = paste(lapply(self$`targets_positions`, function(x) x$toJSONString()),collapse = ",")
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
           "relations": [%s],
           "from": %s,
           "to": %s,
           "targets_positions": [%s]
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
        relationsList,
        jsonlite::toJSON(self$`from`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`to`$toJSON(),auto_unbox=TRUE, null = "null"),
        targets_positionsList
      )
    },
    fromJSONString = function(MoveDetailsDTOJson) {
      MoveDetailsDTOObject <- jsonlite::fromJSON(MoveDetailsDTOJson)
      self$`uri` <- MoveDetailsDTOObject$`uri`
      self$`rdf_type` <- MoveDetailsDTOObject$`rdf_type`
      self$`rdf_type_name` <- MoveDetailsDTOObject$`rdf_type_name`
      self$`start` <- MoveDetailsDTOObject$`start`
      self$`end` <- MoveDetailsDTOObject$`end`
      self$`is_instant` <- MoveDetailsDTOObject$`is_instant`
      self$`description` <- MoveDetailsDTOObject$`description`
      self$`targets` <- MoveDetailsDTOObject$`targets`
      self$`author` <- MoveDetailsDTOObject$`author`
      self$`relations` <- lapply(MoveDetailsDTOObject$`relations`, function(x) RDFObjectRelationDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      InfrastructureFacilityNamedDTOObject <- InfrastructureFacilityNamedDTO$new()
      self$`from` <- InfrastructureFacilityNamedDTOObject$fromJSON(jsonlite::toJSON(MoveDetailsDTOObject$from, auto_unbox = TRUE))
      InfrastructureFacilityNamedDTOObject <- InfrastructureFacilityNamedDTO$new()
      self$`to` <- InfrastructureFacilityNamedDTOObject$fromJSON(jsonlite::toJSON(MoveDetailsDTOObject$to, auto_unbox = TRUE))
      self$`targets_positions` <- lapply(MoveDetailsDTOObject$`targets_positions`, function(x) ConcernedItemPositionGetDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
