# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GroupDTO Class
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
GroupDTO <- R6::R6Class(
  'GroupDTO',
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
      GroupDTOObject <- list()
      if (!is.null(self$`uri`)) {
        GroupDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        GroupDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        GroupDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`name`)) {
        GroupDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        GroupDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`user_profiles`)) {
        GroupDTOObject[['user_profiles']] <- lapply(self$`user_profiles`, function(x) x$toJSON())
      }

      GroupDTOObject
    },
    fromJSON = function(GroupDTOJson) {
      GroupDTOObject <- jsonlite::fromJSON(GroupDTOJson)
      if (!is.null(GroupDTOObject$`uri`)) {
        self$`uri` <- GroupDTOObject$`uri`
      }
      if (!is.null(GroupDTOObject$`rdf_type`)) {
        self$`rdf_type` <- GroupDTOObject$`rdf_type`
      }
      if (!is.null(GroupDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- GroupDTOObject$`rdf_type_name`
      }
      if (!is.null(GroupDTOObject$`name`)) {
        self$`name` <- GroupDTOObject$`name`
      }
      if (!is.null(GroupDTOObject$`description`)) {
        self$`description` <- GroupDTOObject$`description`
      }
      if (!is.null(GroupDTOObject$`user_profiles`)) {
        self$`user_profiles` <- lapply(GroupDTOObject$`user_profiles`, function(x) {
          user_profilesObject <- GroupUserProfileDTO$new()
          user_profilesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          user_profilesObject
        })
      }
    },
    fromJSONObject = function(GroupDTOObject) {
      if (!is.null(GroupDTOObject$`uri`)) {
        self$`uri` <- GroupDTOObject$`uri`
      }
      if (!is.null(GroupDTOObject$`rdf_type`)) {
        self$`rdf_type` <- GroupDTOObject$`rdf_type`
      }
      if (!is.null(GroupDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- GroupDTOObject$`rdf_type_name`
      }
      if (!is.null(GroupDTOObject$`name`)) {
        self$`name` <- GroupDTOObject$`name`
      }
      if (!is.null(GroupDTOObject$`description`)) {
        self$`description` <- GroupDTOObject$`description`
      }
      if (!is.null(GroupDTOObject$`user_profiles`)) {
        self$`user_profiles` <- lapply(GroupDTOObject$`user_profiles`, function(x) {
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
    fromJSONString = function(GroupDTOJson) {
      GroupDTOObject <- jsonlite::fromJSON(GroupDTOJson)
      self$`uri` <- GroupDTOObject$`uri`
      self$`rdf_type` <- GroupDTOObject$`rdf_type`
      self$`rdf_type_name` <- GroupDTOObject$`rdf_type_name`
      self$`name` <- GroupDTOObject$`name`
      self$`description` <- GroupDTOObject$`description`
      self$`user_profiles` <- lapply(GroupDTOObject$`user_profiles`, function(x) GroupUserProfileDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
