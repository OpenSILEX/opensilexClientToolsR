# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PositionGetDTO Class
#'
#' @field event 
#' @field move_time 
#' @field from 
#' @field to 
#' @field position 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PositionGetDTO <- R6::R6Class(
  'PositionGetDTO',
  public = list(
    `event` = NULL,
    `move_time` = NULL,
    `from` = NULL,
    `to` = NULL,
    `position` = NULL,
    initialize = function(`event`, `move_time`, `from`, `to`, `position`){
      if (!missing(`event`)) {
        stopifnot(is.character(`event`), length(`event`) == 1)
        self$`event` <- `event`
      }
      if (!missing(`move_time`)) {
        stopifnot(is.character(`move_time`), length(`move_time`) == 1)
        self$`move_time` <- `move_time`
      }
      if (!missing(`from`)) {
        stopifnot(R6::is.R6(`from`))
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        stopifnot(R6::is.R6(`to`))
        self$`to` <- `to`
      }
      if (!missing(`position`)) {
        stopifnot(R6::is.R6(`position`))
        self$`position` <- `position`
      }
    },
    toJSON = function() {
      PositionGetDTOObject <- list()
      if (!is.null(self$`event`)) {
        PositionGetDTOObject[['event']] <- self$`event`
      }
      if (!is.null(self$`move_time`)) {
        PositionGetDTOObject[['move_time']] <- self$`move_time`
      }
      if (!is.null(self$`from`)) {
        PositionGetDTOObject[['from']] <- self$`from`$toJSON()
      }
      if (!is.null(self$`to`)) {
        PositionGetDTOObject[['to']] <- self$`to`$toJSON()
      }
      if (!is.null(self$`position`)) {
        PositionGetDTOObject[['position']] <- self$`position`$toJSON()
      }

      PositionGetDTOObject
    },
    fromJSON = function(PositionGetDTOJson) {
      PositionGetDTOObject <- jsonlite::fromJSON(PositionGetDTOJson)
      if (!is.null(PositionGetDTOObject$`event`)) {
        self$`event` <- PositionGetDTOObject$`event`
      }
      if (!is.null(PositionGetDTOObject$`move_time`)) {
        self$`move_time` <- PositionGetDTOObject$`move_time`
      }
      if (!is.null(PositionGetDTOObject$`from`)) {
        fromObject <- InfrastructureFacilityNamedDTO$new()
        fromObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$from, auto_unbox = TRUE, null = "null"))
        self$`from` <- fromObject
      }
      if (!is.null(PositionGetDTOObject$`to`)) {
        toObject <- InfrastructureFacilityNamedDTO$new()
        toObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$to, auto_unbox = TRUE, null = "null"))
        self$`to` <- toObject
      }
      if (!is.null(PositionGetDTOObject$`position`)) {
        positionObject <- PositionGetDetailDTO$new()
        positionObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$position, auto_unbox = TRUE, null = "null"))
        self$`position` <- positionObject
      }
    },
    fromJSONObject = function(PositionGetDTOObject) {
      if (!is.null(PositionGetDTOObject$`event`)) {
        self$`event` <- PositionGetDTOObject$`event`
      }
      if (!is.null(PositionGetDTOObject$`move_time`)) {
        self$`move_time` <- PositionGetDTOObject$`move_time`
      }
      if (!is.null(PositionGetDTOObject$`from`)) {
        fromObject <- InfrastructureFacilityNamedDTO$new()
        fromObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$from, auto_unbox = TRUE, null = "null"))
        self$`from` <- fromObject
      }
      if (!is.null(PositionGetDTOObject$`to`)) {
        toObject <- InfrastructureFacilityNamedDTO$new()
        toObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$to, auto_unbox = TRUE, null = "null"))
        self$`to` <- toObject
      }
      if (!is.null(PositionGetDTOObject$`position`)) {
        positionObject <- PositionGetDetailDTO$new()
        positionObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$position, auto_unbox = TRUE, null = "null"))
        self$`position` <- positionObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "event": %s,
           "move_time": %s,
           "from": %s,
           "to": %s,
           "position": %s
        }',
        ifelse(is.null(self$`event`), "null",jsonlite::toJSON(self$`event`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`move_time`), "null",jsonlite::toJSON(self$`move_time`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`from`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`to`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`position`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(PositionGetDTOJson) {
      PositionGetDTOObject <- jsonlite::fromJSON(PositionGetDTOJson)
      self$`event` <- PositionGetDTOObject$`event`
      self$`move_time` <- PositionGetDTOObject$`move_time`
      InfrastructureFacilityNamedDTOObject <- InfrastructureFacilityNamedDTO$new()
      self$`from` <- InfrastructureFacilityNamedDTOObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$from, auto_unbox = TRUE))
      InfrastructureFacilityNamedDTOObject <- InfrastructureFacilityNamedDTO$new()
      self$`to` <- InfrastructureFacilityNamedDTOObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$to, auto_unbox = TRUE))
      PositionGetDetailDTOObject <- PositionGetDetailDTO$new()
      self$`position` <- PositionGetDetailDTOObject$fromJSON(jsonlite::toJSON(PositionGetDTOObject$position, auto_unbox = TRUE))
    }
  )
)
