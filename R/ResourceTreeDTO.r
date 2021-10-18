# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ResourceTreeDTO Class
#'
#' @field uri 
#' @field name 
#' @field parent 
#' @field selected 
#' @field disabled 
#' @field children 
#' @field rdf_type 
#' @field rdf_type_name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResourceTreeDTO <- R6::R6Class(
  'ResourceTreeDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `parent` = NULL,
    `selected` = NULL,
    `disabled` = NULL,
    `children` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    initialize = function(`uri`, `name`, `parent`, `selected`, `disabled`, `children`, `rdf_type`, `rdf_type_name`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`parent`)) {
        stopifnot(is.character(`parent`), length(`parent`) == 1)
        self$`parent` <- `parent`
      }
      if (!missing(`selected`)) {
        self$`selected` <- `selected`
      }
      if (!missing(`disabled`)) {
        self$`disabled` <- `disabled`
      }
      if (!missing(`children`)) {
        stopifnot(is.list(`children`), length(`children`) != 0)
        lapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`rdf_type_name`)) {
        stopifnot(is.character(`rdf_type_name`), length(`rdf_type_name`) == 1)
        self$`rdf_type_name` <- `rdf_type_name`
      }
    },
    toJSON = function() {
      ResourceTreeDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ResourceTreeDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ResourceTreeDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`parent`)) {
        ResourceTreeDTOObject[['parent']] <- self$`parent`
      }
      if (!is.null(self$`selected`)) {
        ResourceTreeDTOObject[['selected']] <- self$`selected`
      }
      if (!is.null(self$`disabled`)) {
        ResourceTreeDTOObject[['disabled']] <- self$`disabled`
      }
      if (!is.null(self$`children`)) {
        ResourceTreeDTOObject[['children']] <- lapply(self$`children`, function(x) x$toJSON())
      }
      if (!is.null(self$`rdf_type`)) {
        ResourceTreeDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        ResourceTreeDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }

      ResourceTreeDTOObject
    },
    fromJSON = function(ResourceTreeDTOJson) {
      ResourceTreeDTOObject <- jsonlite::fromJSON(ResourceTreeDTOJson)
      if (!is.null(ResourceTreeDTOObject$`uri`)) {
        self$`uri` <- ResourceTreeDTOObject$`uri`
      }
      if (!is.null(ResourceTreeDTOObject$`name`)) {
        self$`name` <- ResourceTreeDTOObject$`name`
      }
      if (!is.null(ResourceTreeDTOObject$`parent`)) {
        self$`parent` <- ResourceTreeDTOObject$`parent`
      }
      if (!is.null(ResourceTreeDTOObject$`selected`)) {
        self$`selected` <- ResourceTreeDTOObject$`selected`
      }
      if (!is.null(ResourceTreeDTOObject$`disabled`)) {
        self$`disabled` <- ResourceTreeDTOObject$`disabled`
      }
      if (!is.null(ResourceTreeDTOObject$`children`)) {
        self$`children` <- lapply(ResourceTreeDTOObject$`children`, function(x) {
          childrenObject <- ResourceTreeDTO$new()
          childrenObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          childrenObject
        })
      }
      if (!is.null(ResourceTreeDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ResourceTreeDTOObject$`rdf_type`
      }
      if (!is.null(ResourceTreeDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- ResourceTreeDTOObject$`rdf_type_name`
      }
    },
    fromJSONObject = function(ResourceTreeDTOObject) {
      if (!is.null(ResourceTreeDTOObject$`uri`)) {
        self$`uri` <- ResourceTreeDTOObject$`uri`
      }
      if (!is.null(ResourceTreeDTOObject$`name`)) {
        self$`name` <- ResourceTreeDTOObject$`name`
      }
      if (!is.null(ResourceTreeDTOObject$`parent`)) {
        self$`parent` <- ResourceTreeDTOObject$`parent`
      }
      if (!is.null(ResourceTreeDTOObject$`selected`)) {
        self$`selected` <- ResourceTreeDTOObject$`selected`
      }
      if (!is.null(ResourceTreeDTOObject$`disabled`)) {
        self$`disabled` <- ResourceTreeDTOObject$`disabled`
      }
      if (!is.null(ResourceTreeDTOObject$`children`)) {
        self$`children` <- lapply(ResourceTreeDTOObject$`children`, function(x) {
          childrenObject <- ResourceTreeDTO$new()
          childrenObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          childrenObject
        })
      }
      if (!is.null(ResourceTreeDTOObject$`rdf_type`)) {
        self$`rdf_type` <- ResourceTreeDTOObject$`rdf_type`
      }
      if (!is.null(ResourceTreeDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- ResourceTreeDTOObject$`rdf_type_name`
      }
    },
    toJSONString = function() {
      childrenList = paste(lapply(self$`children`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "parent": %s,
           "selected": %s,
           "disabled": %s,
           "children": [%s],
           "rdf_type": %s,
           "rdf_type_name": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`parent`), "null",jsonlite::toJSON(self$`parent`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`selected`), "null",jsonlite::toJSON(self$`selected`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`disabled`), "null",jsonlite::toJSON(self$`disabled`,auto_unbox=TRUE, null = "null")),
        childrenList,
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(ResourceTreeDTOJson) {
      ResourceTreeDTOObject <- jsonlite::fromJSON(ResourceTreeDTOJson)
      self$`uri` <- ResourceTreeDTOObject$`uri`
      self$`name` <- ResourceTreeDTOObject$`name`
      self$`parent` <- ResourceTreeDTOObject$`parent`
      self$`selected` <- ResourceTreeDTOObject$`selected`
      self$`disabled` <- ResourceTreeDTOObject$`disabled`
      self$`children` <- lapply(ResourceTreeDTOObject$`children`, function(x) ResourceTreeDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`rdf_type` <- ResourceTreeDTOObject$`rdf_type`
      self$`rdf_type_name` <- ResourceTreeDTOObject$`rdf_type_name`
    }
  )
)
