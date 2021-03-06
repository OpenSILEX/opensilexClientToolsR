# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DocumentGetDTO Class
#'
#' @field uri 
#' @field identifier 
#' @field rdf_type 
#' @field rdf_type_name 
#' @field title 
#' @field date 
#' @field description 
#' @field targets 
#' @field authors 
#' @field language 
#' @field format 
#' @field keywords 
#' @field deprecated 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DocumentGetDTO <- R6::R6Class(
  'DocumentGetDTO',
  public = list(
    `uri` = NULL,
    `identifier` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    `title` = NULL,
    `date` = NULL,
    `description` = NULL,
    `targets` = NULL,
    `authors` = NULL,
    `language` = NULL,
    `format` = NULL,
    `keywords` = NULL,
    `deprecated` = NULL,
    initialize = function(`uri`, `identifier`, `rdf_type`, `rdf_type_name`, `title`, `date`, `description`, `targets`, `authors`, `language`, `format`, `keywords`, `deprecated`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`identifier`)) {
        stopifnot(is.character(`identifier`), length(`identifier`) == 1)
        self$`identifier` <- `identifier`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`rdf_type_name`)) {
        stopifnot(is.character(`rdf_type_name`), length(`rdf_type_name`) == 1)
        self$`rdf_type_name` <- `rdf_type_name`
      }
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        self$`date` <- `date`
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
      if (!missing(`authors`)) {
        stopifnot(is.list(`authors`), length(`authors`) != 0)
        lapply(`authors`, function(x) stopifnot(is.character(x)))
        self$`authors` <- `authors`
      }
      if (!missing(`language`)) {
        stopifnot(is.character(`language`), length(`language`) == 1)
        self$`language` <- `language`
      }
      if (!missing(`format`)) {
        stopifnot(is.character(`format`), length(`format`) == 1)
        self$`format` <- `format`
      }
      if (!missing(`keywords`)) {
        stopifnot(is.list(`keywords`), length(`keywords`) != 0)
        lapply(`keywords`, function(x) stopifnot(is.character(x)))
        self$`keywords` <- `keywords`
      }
      if (!missing(`deprecated`)) {
        self$`deprecated` <- `deprecated`
      }
    },
    toJSON = function() {
      DocumentGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        DocumentGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`identifier`)) {
        DocumentGetDTOObject[['identifier']] <- self$`identifier`
      }
      if (!is.null(self$`rdf_type`)) {
        DocumentGetDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        DocumentGetDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`title`)) {
        DocumentGetDTOObject[['title']] <- self$`title`
      }
      if (!is.null(self$`date`)) {
        DocumentGetDTOObject[['date']] <- self$`date`
      }
      if (!is.null(self$`description`)) {
        DocumentGetDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`targets`)) {
        DocumentGetDTOObject[['targets']] <- self$`targets`
      }
      if (!is.null(self$`authors`)) {
        DocumentGetDTOObject[['authors']] <- self$`authors`
      }
      if (!is.null(self$`language`)) {
        DocumentGetDTOObject[['language']] <- self$`language`
      }
      if (!is.null(self$`format`)) {
        DocumentGetDTOObject[['format']] <- self$`format`
      }
      if (!is.null(self$`keywords`)) {
        DocumentGetDTOObject[['keywords']] <- self$`keywords`
      }
      if (!is.null(self$`deprecated`)) {
        DocumentGetDTOObject[['deprecated']] <- self$`deprecated`
      }

      DocumentGetDTOObject
    },
    fromJSON = function(DocumentGetDTOJson) {
      DocumentGetDTOObject <- jsonlite::fromJSON(DocumentGetDTOJson)
      if (!is.null(DocumentGetDTOObject$`uri`)) {
        self$`uri` <- DocumentGetDTOObject$`uri`
      }
      if (!is.null(DocumentGetDTOObject$`identifier`)) {
        self$`identifier` <- DocumentGetDTOObject$`identifier`
      }
      if (!is.null(DocumentGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- DocumentGetDTOObject$`rdf_type`
      }
      if (!is.null(DocumentGetDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- DocumentGetDTOObject$`rdf_type_name`
      }
      if (!is.null(DocumentGetDTOObject$`title`)) {
        self$`title` <- DocumentGetDTOObject$`title`
      }
      if (!is.null(DocumentGetDTOObject$`date`)) {
        self$`date` <- DocumentGetDTOObject$`date`
      }
      if (!is.null(DocumentGetDTOObject$`description`)) {
        self$`description` <- DocumentGetDTOObject$`description`
      }
      if (!is.null(DocumentGetDTOObject$`targets`)) {
        self$`targets` <- DocumentGetDTOObject$`targets`
      }
      if (!is.null(DocumentGetDTOObject$`authors`)) {
        self$`authors` <- DocumentGetDTOObject$`authors`
      }
      if (!is.null(DocumentGetDTOObject$`language`)) {
        self$`language` <- DocumentGetDTOObject$`language`
      }
      if (!is.null(DocumentGetDTOObject$`format`)) {
        self$`format` <- DocumentGetDTOObject$`format`
      }
      if (!is.null(DocumentGetDTOObject$`keywords`)) {
        self$`keywords` <- DocumentGetDTOObject$`keywords`
      }
      if (!is.null(DocumentGetDTOObject$`deprecated`)) {
        self$`deprecated` <- DocumentGetDTOObject$`deprecated`
      }
    },
    fromJSONObject = function(DocumentGetDTOObject) {
      if (!is.null(DocumentGetDTOObject$`uri`)) {
        self$`uri` <- DocumentGetDTOObject$`uri`
      }
      if (!is.null(DocumentGetDTOObject$`identifier`)) {
        self$`identifier` <- DocumentGetDTOObject$`identifier`
      }
      if (!is.null(DocumentGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- DocumentGetDTOObject$`rdf_type`
      }
      if (!is.null(DocumentGetDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- DocumentGetDTOObject$`rdf_type_name`
      }
      if (!is.null(DocumentGetDTOObject$`title`)) {
        self$`title` <- DocumentGetDTOObject$`title`
      }
      if (!is.null(DocumentGetDTOObject$`date`)) {
        self$`date` <- DocumentGetDTOObject$`date`
      }
      if (!is.null(DocumentGetDTOObject$`description`)) {
        self$`description` <- DocumentGetDTOObject$`description`
      }
      if (!is.null(DocumentGetDTOObject$`targets`)) {
        self$`targets` <- DocumentGetDTOObject$`targets`
      }
      if (!is.null(DocumentGetDTOObject$`authors`)) {
        self$`authors` <- DocumentGetDTOObject$`authors`
      }
      if (!is.null(DocumentGetDTOObject$`language`)) {
        self$`language` <- DocumentGetDTOObject$`language`
      }
      if (!is.null(DocumentGetDTOObject$`format`)) {
        self$`format` <- DocumentGetDTOObject$`format`
      }
      if (!is.null(DocumentGetDTOObject$`keywords`)) {
        self$`keywords` <- DocumentGetDTOObject$`keywords`
      }
      if (!is.null(DocumentGetDTOObject$`deprecated`)) {
        self$`deprecated` <- DocumentGetDTOObject$`deprecated`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "identifier": %s,
           "rdf_type": %s,
           "rdf_type_name": %s,
           "title": %s,
           "date": %s,
           "description": %s,
           "targets": [%s],
           "authors": [%s],
           "language": %s,
           "format": %s,
           "keywords": [%s],
           "deprecated": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`identifier`), "null",jsonlite::toJSON(self$`identifier`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`title`), "null",jsonlite::toJSON(self$`title`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`date`), "null",jsonlite::toJSON(self$`date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`targets`) || length(self$`targets`) == 0, "" ,lapply(self$`targets`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`authors`) || length(self$`authors`) == 0, "" ,lapply(self$`authors`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`language`), "null",jsonlite::toJSON(self$`language`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`format`), "null",jsonlite::toJSON(self$`format`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`keywords`) || length(self$`keywords`) == 0, "" ,lapply(self$`keywords`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`deprecated`), "null",jsonlite::toJSON(self$`deprecated`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(DocumentGetDTOJson) {
      DocumentGetDTOObject <- jsonlite::fromJSON(DocumentGetDTOJson)
      self$`uri` <- DocumentGetDTOObject$`uri`
      self$`identifier` <- DocumentGetDTOObject$`identifier`
      self$`rdf_type` <- DocumentGetDTOObject$`rdf_type`
      self$`rdf_type_name` <- DocumentGetDTOObject$`rdf_type_name`
      self$`title` <- DocumentGetDTOObject$`title`
      self$`date` <- DocumentGetDTOObject$`date`
      self$`description` <- DocumentGetDTOObject$`description`
      self$`targets` <- DocumentGetDTOObject$`targets`
      self$`authors` <- DocumentGetDTOObject$`authors`
      self$`language` <- DocumentGetDTOObject$`language`
      self$`format` <- DocumentGetDTOObject$`format`
      self$`keywords` <- DocumentGetDTOObject$`keywords`
      self$`deprecated` <- DocumentGetDTOObject$`deprecated`
    }
  )
)
