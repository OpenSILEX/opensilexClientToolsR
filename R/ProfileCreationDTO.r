# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProfileCreationDTO Class
#'
#' @field uri 
#' @field name 
#' @field credentials 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProfileCreationDTO <- R6::R6Class(
  'ProfileCreationDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `credentials` = NULL,
    initialize = function(`uri`, `name`, `credentials`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`credentials`)) {
        stopifnot(is.list(`credentials`), length(`credentials`) != 0)
        lapply(`credentials`, function(x) stopifnot(is.character(x)))
        self$`credentials` <- `credentials`
      }
    },
    toJSON = function() {
      ProfileCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ProfileCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ProfileCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`credentials`)) {
        ProfileCreationDTOObject[['credentials']] <- self$`credentials`
      }

      ProfileCreationDTOObject
    },
    fromJSON = function(ProfileCreationDTOJson) {
      ProfileCreationDTOObject <- jsonlite::fromJSON(ProfileCreationDTOJson)
      if (!is.null(ProfileCreationDTOObject$`uri`)) {
        self$`uri` <- ProfileCreationDTOObject$`uri`
      }
      if (!is.null(ProfileCreationDTOObject$`name`)) {
        self$`name` <- ProfileCreationDTOObject$`name`
      }
      if (!is.null(ProfileCreationDTOObject$`credentials`)) {
        self$`credentials` <- ProfileCreationDTOObject$`credentials`
      }
    },
    fromJSONObject = function(ProfileCreationDTOObject) {
      if (!is.null(ProfileCreationDTOObject$`uri`)) {
        self$`uri` <- ProfileCreationDTOObject$`uri`
      }
      if (!is.null(ProfileCreationDTOObject$`name`)) {
        self$`name` <- ProfileCreationDTOObject$`name`
      }
      if (!is.null(ProfileCreationDTOObject$`credentials`)) {
        self$`credentials` <- ProfileCreationDTOObject$`credentials`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "credentials": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`credentials`) || length(self$`credentials`) == 0, "" ,lapply(self$`credentials`, function(x) paste(paste0('"', x, '"'), sep=",")))
      )
    },
    fromJSONString = function(ProfileCreationDTOJson) {
      ProfileCreationDTOObject <- jsonlite::fromJSON(ProfileCreationDTOJson)
      self$`uri` <- ProfileCreationDTOObject$`uri`
      self$`name` <- ProfileCreationDTOObject$`name`
      self$`credentials` <- ProfileCreationDTOObject$`credentials`
    }
  )
)
