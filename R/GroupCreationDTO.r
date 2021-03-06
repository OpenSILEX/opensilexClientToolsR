# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GroupCreationDTO Class
#'
#' @field uri 
#' @field rdf_type 
#' @field rdf_type_name 
#' @field name 
#' @field description 
#' @field user_profiles 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupCreationDTO <- R6::R6Class(
  'GroupCreationDTO',
  public = list(
    `uri` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    `name` = NULL,
    `description` = NULL,
    `user_profiles` = NULL,
    initialize = function(`uri`, `rdf_type`, `rdf_type_name`, `name`, `description`, `user_profiles`){
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
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`user_profiles`)) {
        stopifnot(is.list(`user_profiles`), length(`user_profiles`) != 0)
        lapply(`user_profiles`, function(x) stopifnot(R6::is.R6(x)))
        self$`user_profiles` <- `user_profiles`
      }
    },
    toJSON = function() {
      GroupCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        GroupCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        GroupCreationDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        GroupCreationDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`name`)) {
        GroupCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        GroupCreationDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`user_profiles`)) {
        GroupCreationDTOObject[['user_profiles']] <- lapply(self$`user_profiles`, function(x) x$toJSON())
      }

      GroupCreationDTOObject
    },
    fromJSON = function(GroupCreationDTOJson) {
      GroupCreationDTOObject <- jsonlite::fromJSON(GroupCreationDTOJson)
      if (!is.null(GroupCreationDTOObject$`uri`)) {
        self$`uri` <- GroupCreationDTOObject$`uri`
      }
      if (!is.null(GroupCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- GroupCreationDTOObject$`rdf_type`
      }
      if (!is.null(GroupCreationDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- GroupCreationDTOObject$`rdf_type_name`
      }
      if (!is.null(GroupCreationDTOObject$`name`)) {
        self$`name` <- GroupCreationDTOObject$`name`
      }
      if (!is.null(GroupCreationDTOObject$`description`)) {
        self$`description` <- GroupCreationDTOObject$`description`
      }
      if (!is.null(GroupCreationDTOObject$`user_profiles`)) {
        self$`user_profiles` <- lapply(GroupCreationDTOObject$`user_profiles`, function(x) {
          user_profilesObject <- GroupUserProfileDTO$new()
          user_profilesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          user_profilesObject
        })
      }
    },
    fromJSONObject = function(GroupCreationDTOObject) {
      if (!is.null(GroupCreationDTOObject$`uri`)) {
        self$`uri` <- GroupCreationDTOObject$`uri`
      }
      if (!is.null(GroupCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- GroupCreationDTOObject$`rdf_type`
      }
      if (!is.null(GroupCreationDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- GroupCreationDTOObject$`rdf_type_name`
      }
      if (!is.null(GroupCreationDTOObject$`name`)) {
        self$`name` <- GroupCreationDTOObject$`name`
      }
      if (!is.null(GroupCreationDTOObject$`description`)) {
        self$`description` <- GroupCreationDTOObject$`description`
      }
      if (!is.null(GroupCreationDTOObject$`user_profiles`)) {
        self$`user_profiles` <- lapply(GroupCreationDTOObject$`user_profiles`, function(x) {
          user_profilesObject <- GroupUserProfileDTO$new()
          user_profilesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          user_profilesObject
        })
      }
    },
    toJSONString = function() {
      user_profilesList = paste(lapply(self$`user_profiles`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "rdf_type": %s,
           "rdf_type_name": %s,
           "name": %s,
           "description": %s,
           "user_profiles": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        user_profilesList
      )
    },
    fromJSONString = function(GroupCreationDTOJson) {
      GroupCreationDTOObject <- jsonlite::fromJSON(GroupCreationDTOJson)
      self$`uri` <- GroupCreationDTOObject$`uri`
      self$`rdf_type` <- GroupCreationDTOObject$`rdf_type`
      self$`rdf_type_name` <- GroupCreationDTOObject$`rdf_type_name`
      self$`name` <- GroupCreationDTOObject$`name`
      self$`description` <- GroupCreationDTOObject$`description`
      self$`user_profiles` <- lapply(GroupCreationDTOObject$`user_profiles`, function(x) GroupUserProfileDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
