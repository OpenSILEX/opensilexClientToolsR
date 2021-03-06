# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProvenanceCreationDTO Class
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
ProvenanceCreationDTO <- R6::R6Class(
  'ProvenanceCreationDTO',
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
      ProvenanceCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ProvenanceCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ProvenanceCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        ProvenanceCreationDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`prov_activity`)) {
        ProvenanceCreationDTOObject[['prov_activity']] <- lapply(self$`prov_activity`, function(x) x$toJSON())
      }
      if (!is.null(self$`prov_agent`)) {
        ProvenanceCreationDTOObject[['prov_agent']] <- lapply(self$`prov_agent`, function(x) x$toJSON())
      }

      ProvenanceCreationDTOObject
    },
    fromJSON = function(ProvenanceCreationDTOJson) {
      ProvenanceCreationDTOObject <- jsonlite::fromJSON(ProvenanceCreationDTOJson)
      if (!is.null(ProvenanceCreationDTOObject$`uri`)) {
        self$`uri` <- ProvenanceCreationDTOObject$`uri`
      }
      if (!is.null(ProvenanceCreationDTOObject$`name`)) {
        self$`name` <- ProvenanceCreationDTOObject$`name`
      }
      if (!is.null(ProvenanceCreationDTOObject$`description`)) {
        self$`description` <- ProvenanceCreationDTOObject$`description`
      }
      if (!is.null(ProvenanceCreationDTOObject$`prov_activity`)) {
        self$`prov_activity` <- lapply(ProvenanceCreationDTOObject$`prov_activity`, function(x) {
          prov_activityObject <- ActivityCreationDTO$new()
          prov_activityObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          prov_activityObject
        })
      }
      if (!is.null(ProvenanceCreationDTOObject$`prov_agent`)) {
        self$`prov_agent` <- lapply(ProvenanceCreationDTOObject$`prov_agent`, function(x) {
          prov_agentObject <- AgentModel$new()
          prov_agentObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          prov_agentObject
        })
      }
    },
    fromJSONObject = function(ProvenanceCreationDTOObject) {
      if (!is.null(ProvenanceCreationDTOObject$`uri`)) {
        self$`uri` <- ProvenanceCreationDTOObject$`uri`
      }
      if (!is.null(ProvenanceCreationDTOObject$`name`)) {
        self$`name` <- ProvenanceCreationDTOObject$`name`
      }
      if (!is.null(ProvenanceCreationDTOObject$`description`)) {
        self$`description` <- ProvenanceCreationDTOObject$`description`
      }
      if (!is.null(ProvenanceCreationDTOObject$`prov_activity`)) {
        self$`prov_activity` <- lapply(ProvenanceCreationDTOObject$`prov_activity`, function(x) {
          prov_activityObject <- ActivityCreationDTO$new()
          prov_activityObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          prov_activityObject
        })
      }
      if (!is.null(ProvenanceCreationDTOObject$`prov_agent`)) {
        self$`prov_agent` <- lapply(ProvenanceCreationDTOObject$`prov_agent`, function(x) {
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
    fromJSONString = function(ProvenanceCreationDTOJson) {
      ProvenanceCreationDTOObject <- jsonlite::fromJSON(ProvenanceCreationDTOJson)
      self$`uri` <- ProvenanceCreationDTOObject$`uri`
      self$`name` <- ProvenanceCreationDTOObject$`name`
      self$`description` <- ProvenanceCreationDTOObject$`description`
      self$`prov_activity` <- lapply(ProvenanceCreationDTOObject$`prov_activity`, function(x) ActivityCreationDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`prov_agent` <- lapply(ProvenanceCreationDTOObject$`prov_agent`, function(x) AgentModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
