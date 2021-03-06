# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProvenanceUpdateDTO Class
#'
#' @field uri 
#' @field name 
#' @field description 
#' @field prov_activity 
#' @field prov_agent 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProvenanceUpdateDTO <- R6::R6Class(
  'ProvenanceUpdateDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `description` = NULL,
    `prov_activity` = NULL,
    `prov_agent` = NULL,
    initialize = function(`uri`, `name`, `description`, `prov_activity`, `prov_agent`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`prov_activity`)) {
        stopifnot(is.list(`prov_activity`), length(`prov_activity`) != 0)
        lapply(`prov_activity`, function(x) stopifnot(R6::is.R6(x)))
        self$`prov_activity` <- `prov_activity`
      }
      if (!missing(`prov_agent`)) {
        stopifnot(is.list(`prov_agent`), length(`prov_agent`) != 0)
        lapply(`prov_agent`, function(x) stopifnot(R6::is.R6(x)))
        self$`prov_agent` <- `prov_agent`
      }
    },
    toJSON = function() {
      ProvenanceUpdateDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ProvenanceUpdateDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ProvenanceUpdateDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        ProvenanceUpdateDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`prov_activity`)) {
        ProvenanceUpdateDTOObject[['prov_activity']] <- lapply(self$`prov_activity`, function(x) x$toJSON())
      }
      if (!is.null(self$`prov_agent`)) {
        ProvenanceUpdateDTOObject[['prov_agent']] <- lapply(self$`prov_agent`, function(x) x$toJSON())
      }

      ProvenanceUpdateDTOObject
    },
    fromJSON = function(ProvenanceUpdateDTOJson) {
      ProvenanceUpdateDTOObject <- jsonlite::fromJSON(ProvenanceUpdateDTOJson)
      if (!is.null(ProvenanceUpdateDTOObject$`uri`)) {
        self$`uri` <- ProvenanceUpdateDTOObject$`uri`
      }
      if (!is.null(ProvenanceUpdateDTOObject$`name`)) {
        self$`name` <- ProvenanceUpdateDTOObject$`name`
      }
      if (!is.null(ProvenanceUpdateDTOObject$`description`)) {
        self$`description` <- ProvenanceUpdateDTOObject$`description`
      }
      if (!is.null(ProvenanceUpdateDTOObject$`prov_activity`)) {
        self$`prov_activity` <- lapply(ProvenanceUpdateDTOObject$`prov_activity`, function(x) {
          prov_activityObject <- ActivityCreationDTO$new()
          prov_activityObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          prov_activityObject
        })
      }
      if (!is.null(ProvenanceUpdateDTOObject$`prov_agent`)) {
        self$`prov_agent` <- lapply(ProvenanceUpdateDTOObject$`prov_agent`, function(x) {
          prov_agentObject <- AgentModel$new()
          prov_agentObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          prov_agentObject
        })
      }
    },
    fromJSONObject = function(ProvenanceUpdateDTOObject) {
      if (!is.null(ProvenanceUpdateDTOObject$`uri`)) {
        self$`uri` <- ProvenanceUpdateDTOObject$`uri`
      }
      if (!is.null(ProvenanceUpdateDTOObject$`name`)) {
        self$`name` <- ProvenanceUpdateDTOObject$`name`
      }
      if (!is.null(ProvenanceUpdateDTOObject$`description`)) {
        self$`description` <- ProvenanceUpdateDTOObject$`description`
      }
      if (!is.null(ProvenanceUpdateDTOObject$`prov_activity`)) {
        self$`prov_activity` <- lapply(ProvenanceUpdateDTOObject$`prov_activity`, function(x) {
          prov_activityObject <- ActivityCreationDTO$new()
          prov_activityObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          prov_activityObject
        })
      }
      if (!is.null(ProvenanceUpdateDTOObject$`prov_agent`)) {
        self$`prov_agent` <- lapply(ProvenanceUpdateDTOObject$`prov_agent`, function(x) {
          prov_agentObject <- AgentModel$new()
          prov_agentObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          prov_agentObject
        })
      }
    },
    toJSONString = function() {
      prov_activityList = paste(lapply(self$`prov_activity`, function(x) x$toJSONString()),collapse = ",")
      prov_agentList = paste(lapply(self$`prov_agent`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "description": %s,
           "prov_activity": [%s],
           "prov_agent": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        prov_activityList,
        prov_agentList
      )
    },
    fromJSONString = function(ProvenanceUpdateDTOJson) {
      ProvenanceUpdateDTOObject <- jsonlite::fromJSON(ProvenanceUpdateDTOJson)
      self$`uri` <- ProvenanceUpdateDTOObject$`uri`
      self$`name` <- ProvenanceUpdateDTOObject$`name`
      self$`description` <- ProvenanceUpdateDTOObject$`description`
      self$`prov_activity` <- lapply(ProvenanceUpdateDTOObject$`prov_activity`, function(x) ActivityCreationDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`prov_agent` <- lapply(ProvenanceUpdateDTOObject$`prov_agent`, function(x) AgentModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
