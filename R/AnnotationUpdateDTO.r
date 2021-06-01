# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AnnotationUpdateDTO Class
#'
#' @field uri 
#' @field description 
#' @field targets 
#' @field motivation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationUpdateDTO <- R6::R6Class(
  'AnnotationUpdateDTO',
  public = list(
    `uri` = NULL,
    `description` = NULL,
    `targets` = NULL,
    `motivation` = NULL,
    initialize = function(`uri`, `description`, `targets`, `motivation`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
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
      if (!missing(`motivation`)) {
        stopifnot(is.character(`motivation`), length(`motivation`) == 1)
        self$`motivation` <- `motivation`
      }
    },
    toJSON = function() {
      AnnotationUpdateDTOObject <- list()
      if (!is.null(self$`uri`)) {
        AnnotationUpdateDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`description`)) {
        AnnotationUpdateDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`targets`)) {
        AnnotationUpdateDTOObject[['targets']] <- self$`targets`
      }
      if (!is.null(self$`motivation`)) {
        AnnotationUpdateDTOObject[['motivation']] <- self$`motivation`
      }

      AnnotationUpdateDTOObject
    },
    fromJSON = function(AnnotationUpdateDTOJson) {
      AnnotationUpdateDTOObject <- jsonlite::fromJSON(AnnotationUpdateDTOJson)
      if (!is.null(AnnotationUpdateDTOObject$`uri`)) {
        self$`uri` <- AnnotationUpdateDTOObject$`uri`
      }
      if (!is.null(AnnotationUpdateDTOObject$`description`)) {
        self$`description` <- AnnotationUpdateDTOObject$`description`
      }
      if (!is.null(AnnotationUpdateDTOObject$`targets`)) {
        self$`targets` <- AnnotationUpdateDTOObject$`targets`
      }
      if (!is.null(AnnotationUpdateDTOObject$`motivation`)) {
        self$`motivation` <- AnnotationUpdateDTOObject$`motivation`
      }
    },
    fromJSONObject = function(AnnotationUpdateDTOObject) {
      if (!is.null(AnnotationUpdateDTOObject$`uri`)) {
        self$`uri` <- AnnotationUpdateDTOObject$`uri`
      }
      if (!is.null(AnnotationUpdateDTOObject$`description`)) {
        self$`description` <- AnnotationUpdateDTOObject$`description`
      }
      if (!is.null(AnnotationUpdateDTOObject$`targets`)) {
        self$`targets` <- AnnotationUpdateDTOObject$`targets`
      }
      if (!is.null(AnnotationUpdateDTOObject$`motivation`)) {
        self$`motivation` <- AnnotationUpdateDTOObject$`motivation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "description": %s,
           "targets": [%s],
           "motivation": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`targets`) || length(self$`targets`) == 0, "" ,lapply(self$`targets`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`motivation`), "null",jsonlite::toJSON(self$`motivation`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(AnnotationUpdateDTOJson) {
      AnnotationUpdateDTOObject <- jsonlite::fromJSON(AnnotationUpdateDTOJson)
      self$`uri` <- AnnotationUpdateDTOObject$`uri`
      self$`description` <- AnnotationUpdateDTOObject$`description`
      self$`targets` <- AnnotationUpdateDTOObject$`targets`
      self$`motivation` <- AnnotationUpdateDTOObject$`motivation`
    }
  )
)
