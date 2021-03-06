# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UnitUpdateDTO Class
#'
#' @field uri 
#' @field name 
#' @field description 
#' @field symbol 
#' @field alternative_symbol 
#' @field exact_match 
#' @field close_match 
#' @field broad_match 
#' @field narrow_match 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UnitUpdateDTO <- R6::R6Class(
  'UnitUpdateDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `description` = NULL,
    `symbol` = NULL,
    `alternative_symbol` = NULL,
    `exact_match` = NULL,
    `close_match` = NULL,
    `broad_match` = NULL,
    `narrow_match` = NULL,
    initialize = function(`uri`, `name`, `description`, `symbol`, `alternative_symbol`, `exact_match`, `close_match`, `broad_match`, `narrow_match`){
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
      if (!missing(`symbol`)) {
        stopifnot(is.character(`symbol`), length(`symbol`) == 1)
        self$`symbol` <- `symbol`
      }
      if (!missing(`alternative_symbol`)) {
        stopifnot(is.character(`alternative_symbol`), length(`alternative_symbol`) == 1)
        self$`alternative_symbol` <- `alternative_symbol`
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
      UnitUpdateDTOObject <- list()
      if (!is.null(self$`uri`)) {
        UnitUpdateDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        UnitUpdateDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        UnitUpdateDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`symbol`)) {
        UnitUpdateDTOObject[['symbol']] <- self$`symbol`
      }
      if (!is.null(self$`alternative_symbol`)) {
        UnitUpdateDTOObject[['alternative_symbol']] <- self$`alternative_symbol`
      }
      if (!is.null(self$`exact_match`)) {
        UnitUpdateDTOObject[['exact_match']] <- self$`exact_match`
      }
      if (!is.null(self$`close_match`)) {
        UnitUpdateDTOObject[['close_match']] <- self$`close_match`
      }
      if (!is.null(self$`broad_match`)) {
        UnitUpdateDTOObject[['broad_match']] <- self$`broad_match`
      }
      if (!is.null(self$`narrow_match`)) {
        UnitUpdateDTOObject[['narrow_match']] <- self$`narrow_match`
      }

      UnitUpdateDTOObject
    },
    fromJSON = function(UnitUpdateDTOJson) {
      UnitUpdateDTOObject <- jsonlite::fromJSON(UnitUpdateDTOJson)
      if (!is.null(UnitUpdateDTOObject$`uri`)) {
        self$`uri` <- UnitUpdateDTOObject$`uri`
      }
      if (!is.null(UnitUpdateDTOObject$`name`)) {
        self$`name` <- UnitUpdateDTOObject$`name`
      }
      if (!is.null(UnitUpdateDTOObject$`description`)) {
        self$`description` <- UnitUpdateDTOObject$`description`
      }
      if (!is.null(UnitUpdateDTOObject$`symbol`)) {
        self$`symbol` <- UnitUpdateDTOObject$`symbol`
      }
      if (!is.null(UnitUpdateDTOObject$`alternative_symbol`)) {
        self$`alternative_symbol` <- UnitUpdateDTOObject$`alternative_symbol`
      }
      if (!is.null(UnitUpdateDTOObject$`exact_match`)) {
        self$`exact_match` <- UnitUpdateDTOObject$`exact_match`
      }
      if (!is.null(UnitUpdateDTOObject$`close_match`)) {
        self$`close_match` <- UnitUpdateDTOObject$`close_match`
      }
      if (!is.null(UnitUpdateDTOObject$`broad_match`)) {
        self$`broad_match` <- UnitUpdateDTOObject$`broad_match`
      }
      if (!is.null(UnitUpdateDTOObject$`narrow_match`)) {
        self$`narrow_match` <- UnitUpdateDTOObject$`narrow_match`
      }
    },
    fromJSONObject = function(UnitUpdateDTOObject) {
      if (!is.null(UnitUpdateDTOObject$`uri`)) {
        self$`uri` <- UnitUpdateDTOObject$`uri`
      }
      if (!is.null(UnitUpdateDTOObject$`name`)) {
        self$`name` <- UnitUpdateDTOObject$`name`
      }
      if (!is.null(UnitUpdateDTOObject$`description`)) {
        self$`description` <- UnitUpdateDTOObject$`description`
      }
      if (!is.null(UnitUpdateDTOObject$`symbol`)) {
        self$`symbol` <- UnitUpdateDTOObject$`symbol`
      }
      if (!is.null(UnitUpdateDTOObject$`alternative_symbol`)) {
        self$`alternative_symbol` <- UnitUpdateDTOObject$`alternative_symbol`
      }
      if (!is.null(UnitUpdateDTOObject$`exact_match`)) {
        self$`exact_match` <- UnitUpdateDTOObject$`exact_match`
      }
      if (!is.null(UnitUpdateDTOObject$`close_match`)) {
        self$`close_match` <- UnitUpdateDTOObject$`close_match`
      }
      if (!is.null(UnitUpdateDTOObject$`broad_match`)) {
        self$`broad_match` <- UnitUpdateDTOObject$`broad_match`
      }
      if (!is.null(UnitUpdateDTOObject$`narrow_match`)) {
        self$`narrow_match` <- UnitUpdateDTOObject$`narrow_match`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "description": %s,
           "symbol": %s,
           "alternative_symbol": %s,
           "exact_match": [%s],
           "close_match": [%s],
           "broad_match": [%s],
           "narrow_match": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`symbol`), "null",jsonlite::toJSON(self$`symbol`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`alternative_symbol`), "null",jsonlite::toJSON(self$`alternative_symbol`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`exact_match`) || length(self$`exact_match`) == 0, "" ,lapply(self$`exact_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`close_match`) || length(self$`close_match`) == 0, "" ,lapply(self$`close_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`broad_match`) || length(self$`broad_match`) == 0, "" ,lapply(self$`broad_match`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`narrow_match`) || length(self$`narrow_match`) == 0, "" ,lapply(self$`narrow_match`, function(x) paste(paste0('"', x, '"'), sep=",")))
      )
    },
    fromJSONString = function(UnitUpdateDTOJson) {
      UnitUpdateDTOObject <- jsonlite::fromJSON(UnitUpdateDTOJson)
      self$`uri` <- UnitUpdateDTOObject$`uri`
      self$`name` <- UnitUpdateDTOObject$`name`
      self$`description` <- UnitUpdateDTOObject$`description`
      self$`symbol` <- UnitUpdateDTOObject$`symbol`
      self$`alternative_symbol` <- UnitUpdateDTOObject$`alternative_symbol`
      self$`exact_match` <- UnitUpdateDTOObject$`exact_match`
      self$`close_match` <- UnitUpdateDTOObject$`close_match`
      self$`broad_match` <- UnitUpdateDTOObject$`broad_match`
      self$`narrow_match` <- UnitUpdateDTOObject$`narrow_match`
    }
  )
)
