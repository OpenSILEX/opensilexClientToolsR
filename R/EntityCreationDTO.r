# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' EntityCreationDTO Class
#'
#' @field uri 
#' @field name 
#' @field description 
#' @field exact_match 
#' @field close_match 
#' @field broad_match 
#' @field narrow_match 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EntityCreationDTO <- R6::R6Class(
  'EntityCreationDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `description` = NULL,
    `exact_match` = NULL,
    `close_match` = NULL,
    `broad_match` = NULL,
    `narrow_match` = NULL,
    initialize = function(`uri`, `name`, `description`, `exact_match`, `close_match`, `broad_match`, `narrow_match`){
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
      EntityCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        EntityCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        EntityCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        EntityCreationDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`exact_match`)) {
        EntityCreationDTOObject[['exact_match']] <- self$`exact_match`
      }
      if (!is.null(self$`close_match`)) {
        EntityCreationDTOObject[['close_match']] <- self$`close_match`
      }
      if (!is.null(self$`broad_match`)) {
        EntityCreationDTOObject[['broad_match']] <- self$`broad_match`
      }
      if (!is.null(self$`narrow_match`)) {
        EntityCreationDTOObject[['narrow_match']] <- self$`narrow_match`
      }

      EntityCreationDTOObject
    },
    fromJSON = function(EntityCreationDTOJson) {
      EntityCreationDTOObject <- jsonlite::fromJSON(EntityCreationDTOJson)
      if (!is.null(EntityCreationDTOObject$`uri`)) {
        self$`uri` <- EntityCreationDTOObject$`uri`
      }
      if (!is.null(EntityCreationDTOObject$`name`)) {
        self$`name` <- EntityCreationDTOObject$`name`
      }
      if (!is.null(EntityCreationDTOObject$`description`)) {
        self$`description` <- EntityCreationDTOObject$`description`
      }
      if (!is.null(EntityCreationDTOObject$`exact_match`)) {
        self$`exact_match` <- EntityCreationDTOObject$`exact_match`
      }
      if (!is.null(EntityCreationDTOObject$`close_match`)) {
        self$`close_match` <- EntityCreationDTOObject$`close_match`
      }
      if (!is.null(EntityCreationDTOObject$`broad_match`)) {
        self$`broad_match` <- EntityCreationDTOObject$`broad_match`
      }
      if (!is.null(EntityCreationDTOObject$`narrow_match`)) {
        self$`narrow_match` <- EntityCreationDTOObject$`narrow_match`
      }
    },
    fromJSONObject = function(EntityCreationDTOObject) {
      if (!is.null(EntityCreationDTOObject$`uri`)) {
        self$`uri` <- EntityCreationDTOObject$`uri`
      }
      if (!is.null(EntityCreationDTOObject$`name`)) {
        self$`name` <- EntityCreationDTOObject$`name`
      }
      if (!is.null(EntityCreationDTOObject$`description`)) {
        self$`description` <- EntityCreationDTOObject$`description`
      }
      if (!is.null(EntityCreationDTOObject$`exact_match`)) {
        self$`exact_match` <- EntityCreationDTOObject$`exact_match`
      }
      if (!is.null(EntityCreationDTOObject$`close_match`)) {
        self$`close_match` <- EntityCreationDTOObject$`close_match`
      }
      if (!is.null(EntityCreationDTOObject$`broad_match`)) {
        self$`broad_match` <- EntityCreationDTOObject$`broad_match`
      }
      if (!is.null(EntityCreationDTOObject$`narrow_match`)) {
        self$`narrow_match` <- EntityCreationDTOObject$`narrow_match`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "description": %s,
           "exact_match": [%s],
           "close_match": [%s],
           "broad_match": [%s],
           "narrow_match": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`exact_match`) || length(self$`exact_match`) == 0, "" ,lapply(self$`exact_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`close_match`) || length(self$`close_match`) == 0, "" ,lapply(self$`close_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`broad_match`) || length(self$`broad_match`) == 0, "" ,lapply(self$`broad_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`narrow_match`) || length(self$`narrow_match`) == 0, "" ,lapply(self$`narrow_match`, function(x) paste(paste0('"', x, '"'), sep=",")))
      )
    },
    fromJSONString = function(EntityCreationDTOJson) {
      EntityCreationDTOObject <- jsonlite::fromJSON(EntityCreationDTOJson)
      self$`uri` <- EntityCreationDTOObject$`uri`
      self$`name` <- EntityCreationDTOObject$`name`
      self$`description` <- EntityCreationDTOObject$`description`
      self$`exact_match` <- EntityCreationDTOObject$`exact_match`
      self$`close_match` <- EntityCreationDTOObject$`close_match`
      self$`broad_match` <- EntityCreationDTOObject$`broad_match`
      self$`narrow_match` <- EntityCreationDTOObject$`narrow_match`
    }
  )
)
