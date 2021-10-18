# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InfrastructureGetDTO Class
#'
#' @field uri 
#' @field rdf_type 
#' @field rdf_type_name 
#' @field name 
#' @field parent 
#' @field children 
#' @field groups 
#' @field facilities 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InfrastructureGetDTO <- R6::R6Class(
  'InfrastructureGetDTO',
  public = list(
    `uri` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    `name` = NULL,
    `parent` = NULL,
    `children` = NULL,
    `groups` = NULL,
    `facilities` = NULL,
    initialize = function(`uri`, `rdf_type`, `rdf_type_name`, `name`, `parent`, `children`, `groups`, `facilities`){
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
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`parent`)) {
        stopifnot(is.character(`parent`), length(`parent`) == 1)
        self$`parent` <- `parent`
      }
      if (!missing(`children`)) {
        stopifnot(is.list(`children`), length(`children`) != 0)
        lapply(`children`, function(x) stopifnot(is.character(x)))
        self$`children` <- `children`
      }
      if (!missing(`groups`)) {
        stopifnot(is.list(`groups`), length(`groups`) != 0)
        lapply(`groups`, function(x) stopifnot(R6::is.R6(x)))
        self$`groups` <- `groups`
      }
      if (!missing(`facilities`)) {
        stopifnot(is.list(`facilities`), length(`facilities`) != 0)
        lapply(`facilities`, function(x) stopifnot(R6::is.R6(x)))
        self$`facilities` <- `facilities`
      }
    },
    toJSON = function() {
      InfrastructureGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        InfrastructureGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        InfrastructureGetDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        InfrastructureGetDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`name`)) {
        InfrastructureGetDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`parent`)) {
        InfrastructureGetDTOObject[['parent']] <- self$`parent`
      }
      if (!is.null(self$`children`)) {
        InfrastructureGetDTOObject[['children']] <- self$`children`
      }
      if (!is.null(self$`groups`)) {
        InfrastructureGetDTOObject[['groups']] <- lapply(self$`groups`, function(x) x$toJSON())
      }
      if (!is.null(self$`facilities`)) {
        InfrastructureGetDTOObject[['facilities']] <- lapply(self$`facilities`, function(x) x$toJSON())
      }

      InfrastructureGetDTOObject
    },
    fromJSON = function(InfrastructureGetDTOJson) {
      InfrastructureGetDTOObject <- jsonlite::fromJSON(InfrastructureGetDTOJson)
      if (!is.null(InfrastructureGetDTOObject$`uri`)) {
        self$`uri` <- InfrastructureGetDTOObject$`uri`
      }
      if (!is.null(InfrastructureGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- InfrastructureGetDTOObject$`rdf_type`
      }
      if (!is.null(InfrastructureGetDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- InfrastructureGetDTOObject$`rdf_type_name`
      }
      if (!is.null(InfrastructureGetDTOObject$`name`)) {
        self$`name` <- InfrastructureGetDTOObject$`name`
      }
      if (!is.null(InfrastructureGetDTOObject$`parent`)) {
        self$`parent` <- InfrastructureGetDTOObject$`parent`
      }
      if (!is.null(InfrastructureGetDTOObject$`children`)) {
        self$`children` <- InfrastructureGetDTOObject$`children`
      }
      if (!is.null(InfrastructureGetDTOObject$`groups`)) {
        self$`groups` <- lapply(InfrastructureGetDTOObject$`groups`, function(x) {
          groupsObject <- InfrastructureTeamDTO$new()
          groupsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          groupsObject
        })
      }
      if (!is.null(InfrastructureGetDTOObject$`facilities`)) {
        self$`facilities` <- lapply(InfrastructureGetDTOObject$`facilities`, function(x) {
          facilitiesObject <- InfrastructureFacilityGetDTO$new()
          facilitiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          facilitiesObject
        })
      }
    },
    fromJSONObject = function(InfrastructureGetDTOObject) {
      if (!is.null(InfrastructureGetDTOObject$`uri`)) {
        self$`uri` <- InfrastructureGetDTOObject$`uri`
      }
      if (!is.null(InfrastructureGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- InfrastructureGetDTOObject$`rdf_type`
      }
      if (!is.null(InfrastructureGetDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- InfrastructureGetDTOObject$`rdf_type_name`
      }
      if (!is.null(InfrastructureGetDTOObject$`name`)) {
        self$`name` <- InfrastructureGetDTOObject$`name`
      }
      if (!is.null(InfrastructureGetDTOObject$`parent`)) {
        self$`parent` <- InfrastructureGetDTOObject$`parent`
      }
      if (!is.null(InfrastructureGetDTOObject$`children`)) {
        self$`children` <- InfrastructureGetDTOObject$`children`
      }
      if (!is.null(InfrastructureGetDTOObject$`groups`)) {
        self$`groups` <- lapply(InfrastructureGetDTOObject$`groups`, function(x) {
          groupsObject <- InfrastructureTeamDTO$new()
          groupsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          groupsObject
        })
      }
      if (!is.null(InfrastructureGetDTOObject$`facilities`)) {
        self$`facilities` <- lapply(InfrastructureGetDTOObject$`facilities`, function(x) {
          facilitiesObject <- InfrastructureFacilityGetDTO$new()
          facilitiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          facilitiesObject
        })
      }
    },
    toJSONString = function() {
      groupsList = paste(lapply(self$`groups`, function(x) x$toJSONString()),collapse = ",")
      facilitiesList = paste(lapply(self$`facilities`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "rdf_type": %s,
           "rdf_type_name": %s,
           "name": %s,
           "parent": %s,
           "children": [%s],
           "groups": [%s],
           "facilities": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`parent`), "null",jsonlite::toJSON(self$`parent`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`children`) || length(self$`children`) == 0, "" ,lapply(self$`children`, function(x) paste(paste0('"', x, '"'), sep=","))),
        groupsList,
        facilitiesList
      )
    },
    fromJSONString = function(InfrastructureGetDTOJson) {
      InfrastructureGetDTOObject <- jsonlite::fromJSON(InfrastructureGetDTOJson)
      self$`uri` <- InfrastructureGetDTOObject$`uri`
      self$`rdf_type` <- InfrastructureGetDTOObject$`rdf_type`
      self$`rdf_type_name` <- InfrastructureGetDTOObject$`rdf_type_name`
      self$`name` <- InfrastructureGetDTOObject$`name`
      self$`parent` <- InfrastructureGetDTOObject$`parent`
      self$`children` <- InfrastructureGetDTOObject$`children`
      self$`groups` <- lapply(InfrastructureGetDTOObject$`groups`, function(x) InfrastructureTeamDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`facilities` <- lapply(InfrastructureGetDTOObject$`facilities`, function(x) InfrastructureFacilityGetDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
