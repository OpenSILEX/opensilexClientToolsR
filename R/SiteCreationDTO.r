# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SiteCreationDTO Class
#'
#' @field uri 
#' @field rdf_type 
#' @field name 
#' @field address 
#' @field organizations 
#' @field facilities 
#' @field groups 
#' @field rdf_type_name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SiteCreationDTO <- R6::R6Class(
  'SiteCreationDTO',
  public = list(
    `uri` = NULL,
    `rdf_type` = NULL,
    `name` = NULL,
    `address` = NULL,
    `organizations` = NULL,
    `facilities` = NULL,
    `groups` = NULL,
    `rdf_type_name` = NULL,
    initialize = function(`uri`, `rdf_type`, `name`, `address`, `organizations`, `facilities`, `groups`, `rdf_type_name`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`rdf_type`)) {
        stopifnot(is.character(`rdf_type`), length(`rdf_type`) == 1)
        self$`rdf_type` <- `rdf_type`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!missing(`organizations`)) {
        stopifnot(is.list(`organizations`), length(`organizations`) != 0)
        lapply(`organizations`, function(x) stopifnot(is.character(x)))
        self$`organizations` <- `organizations`
      }
      if (!missing(`facilities`)) {
        stopifnot(is.list(`facilities`), length(`facilities`) != 0)
        lapply(`facilities`, function(x) stopifnot(is.character(x)))
        self$`facilities` <- `facilities`
      }
      if (!missing(`groups`)) {
        stopifnot(is.list(`groups`), length(`groups`) != 0)
        lapply(`groups`, function(x) stopifnot(is.character(x)))
        self$`groups` <- `groups`
      }
      if (!missing(`rdf_type_name`)) {
        stopifnot(is.character(`rdf_type_name`), length(`rdf_type_name`) == 1)
        self$`rdf_type_name` <- `rdf_type_name`
      }
    },
    toJSON = function() {
      SiteCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        SiteCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        SiteCreationDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`name`)) {
        SiteCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`address`)) {
        SiteCreationDTOObject[['address']] <- self$`address`$toJSON()
      }
      if (!is.null(self$`organizations`)) {
        SiteCreationDTOObject[['organizations']] <- self$`organizations`
      }
      if (!is.null(self$`facilities`)) {
        SiteCreationDTOObject[['facilities']] <- self$`facilities`
      }
      if (!is.null(self$`groups`)) {
        SiteCreationDTOObject[['groups']] <- self$`groups`
      }
      if (!is.null(self$`rdf_type_name`)) {
        SiteCreationDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }

      SiteCreationDTOObject
    },
    fromJSON = function(SiteCreationDTOJson) {
      SiteCreationDTOObject <- jsonlite::fromJSON(SiteCreationDTOJson)
      if (!is.null(SiteCreationDTOObject$`uri`)) {
        self$`uri` <- SiteCreationDTOObject$`uri`
      }
      if (!is.null(SiteCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- SiteCreationDTOObject$`rdf_type`
      }
      if (!is.null(SiteCreationDTOObject$`name`)) {
        self$`name` <- SiteCreationDTOObject$`name`
      }
      if (!is.null(SiteCreationDTOObject$`address`)) {
        addressObject <- SiteAddressDTO$new()
        addressObject$fromJSON(jsonlite::toJSON(SiteCreationDTOObject$address, auto_unbox = TRUE, null = "null"))
        self$`address` <- addressObject
      }
      if (!is.null(SiteCreationDTOObject$`organizations`)) {
        self$`organizations` <- SiteCreationDTOObject$`organizations`
      }
      if (!is.null(SiteCreationDTOObject$`facilities`)) {
        self$`facilities` <- SiteCreationDTOObject$`facilities`
      }
      if (!is.null(SiteCreationDTOObject$`groups`)) {
        self$`groups` <- SiteCreationDTOObject$`groups`
      }
      if (!is.null(SiteCreationDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- SiteCreationDTOObject$`rdf_type_name`
      }
    },
    fromJSONObject = function(SiteCreationDTOObject) {
      if (!is.null(SiteCreationDTOObject$`uri`)) {
        self$`uri` <- SiteCreationDTOObject$`uri`
      }
      if (!is.null(SiteCreationDTOObject$`rdf_type`)) {
        self$`rdf_type` <- SiteCreationDTOObject$`rdf_type`
      }
      if (!is.null(SiteCreationDTOObject$`name`)) {
        self$`name` <- SiteCreationDTOObject$`name`
      }
      if (!is.null(SiteCreationDTOObject$`address`)) {
        addressObject <- SiteAddressDTO$new()
        addressObject$fromJSON(jsonlite::toJSON(SiteCreationDTOObject$address, auto_unbox = TRUE, null = "null"))
        self$`address` <- addressObject
      }
      if (!is.null(SiteCreationDTOObject$`organizations`)) {
        self$`organizations` <- SiteCreationDTOObject$`organizations`
      }
      if (!is.null(SiteCreationDTOObject$`facilities`)) {
        self$`facilities` <- SiteCreationDTOObject$`facilities`
      }
      if (!is.null(SiteCreationDTOObject$`groups`)) {
        self$`groups` <- SiteCreationDTOObject$`groups`
      }
      if (!is.null(SiteCreationDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- SiteCreationDTOObject$`rdf_type_name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "rdf_type": %s,
           "name": %s,
           "address": %s,
           "organizations": [%s],
           "facilities": [%s],
           "groups": [%s],
           "rdf_type_name": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`address`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`organizations`) || length(self$`organizations`) == 0, "" ,lapply(self$`organizations`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`facilities`) || length(self$`facilities`) == 0, "" ,lapply(self$`facilities`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`groups`) || length(self$`groups`) == 0, "" ,lapply(self$`groups`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(SiteCreationDTOJson) {
      SiteCreationDTOObject <- jsonlite::fromJSON(SiteCreationDTOJson)
      self$`uri` <- SiteCreationDTOObject$`uri`
      self$`rdf_type` <- SiteCreationDTOObject$`rdf_type`
      self$`name` <- SiteCreationDTOObject$`name`
      SiteAddressDTOObject <- SiteAddressDTO$new()
      self$`address` <- SiteAddressDTOObject$fromJSON(jsonlite::toJSON(SiteCreationDTOObject$address, auto_unbox = TRUE))
      self$`organizations` <- SiteCreationDTOObject$`organizations`
      self$`facilities` <- SiteCreationDTOObject$`facilities`
      self$`groups` <- SiteCreationDTOObject$`groups`
      self$`rdf_type_name` <- SiteCreationDTOObject$`rdf_type_name`
    }
  )
)
