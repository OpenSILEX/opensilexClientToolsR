# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Contact Class
#'
#' @field contactDbId 
#' @field email 
#' @field institutionName 
#' @field name 
#' @field orcid 
#' @field type 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Contact <- R6::R6Class(
  'Contact',
  public = list(
    `contactDbId` = NULL,
    `email` = NULL,
    `institutionName` = NULL,
    `name` = NULL,
    `orcid` = NULL,
    `type` = NULL,
    initialize = function(`contactDbId`, `email`, `institutionName`, `name`, `orcid`, `type`){
      if (!missing(`contactDbId`)) {
        stopifnot(is.character(`contactDbId`), length(`contactDbId`) == 1)
        self$`contactDbId` <- `contactDbId`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`institutionName`)) {
        stopifnot(is.character(`institutionName`), length(`institutionName`) == 1)
        self$`institutionName` <- `institutionName`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`orcid`)) {
        stopifnot(is.character(`orcid`), length(`orcid`) == 1)
        self$`orcid` <- `orcid`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
    },
    toJSON = function() {
      ContactObject <- list()
      if (!is.null(self$`contactDbId`)) {
        ContactObject[['contactDbId']] <- self$`contactDbId`
      }
      if (!is.null(self$`email`)) {
        ContactObject[['email']] <- self$`email`
      }
      if (!is.null(self$`institutionName`)) {
        ContactObject[['institutionName']] <- self$`institutionName`
      }
      if (!is.null(self$`name`)) {
        ContactObject[['name']] <- self$`name`
      }
      if (!is.null(self$`orcid`)) {
        ContactObject[['orcid']] <- self$`orcid`
      }
      if (!is.null(self$`type`)) {
        ContactObject[['type']] <- self$`type`
      }

      ContactObject
    },
    fromJSON = function(ContactJson) {
      ContactObject <- jsonlite::fromJSON(ContactJson)
      if (!is.null(ContactObject$`contactDbId`)) {
        self$`contactDbId` <- ContactObject$`contactDbId`
      }
      if (!is.null(ContactObject$`email`)) {
        self$`email` <- ContactObject$`email`
      }
      if (!is.null(ContactObject$`institutionName`)) {
        self$`institutionName` <- ContactObject$`institutionName`
      }
      if (!is.null(ContactObject$`name`)) {
        self$`name` <- ContactObject$`name`
      }
      if (!is.null(ContactObject$`orcid`)) {
        self$`orcid` <- ContactObject$`orcid`
      }
      if (!is.null(ContactObject$`type`)) {
        self$`type` <- ContactObject$`type`
      }
    },
    fromJSONObject = function(ContactObject) {
      if (!is.null(ContactObject$`contactDbId`)) {
        self$`contactDbId` <- ContactObject$`contactDbId`
      }
      if (!is.null(ContactObject$`email`)) {
        self$`email` <- ContactObject$`email`
      }
      if (!is.null(ContactObject$`institutionName`)) {
        self$`institutionName` <- ContactObject$`institutionName`
      }
      if (!is.null(ContactObject$`name`)) {
        self$`name` <- ContactObject$`name`
      }
      if (!is.null(ContactObject$`orcid`)) {
        self$`orcid` <- ContactObject$`orcid`
      }
      if (!is.null(ContactObject$`type`)) {
        self$`type` <- ContactObject$`type`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "contactDbId": %s,
           "email": %s,
           "institutionName": %s,
           "name": %s,
           "orcid": %s,
           "type": %s
        }',
        ifelse(is.null(self$`contactDbId`), "null",jsonlite::toJSON(self$`contactDbId`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`email`), "null",jsonlite::toJSON(self$`email`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`institutionName`), "null",jsonlite::toJSON(self$`institutionName`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`orcid`), "null",jsonlite::toJSON(self$`orcid`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`type`), "null",jsonlite::toJSON(self$`type`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(ContactJson) {
      ContactObject <- jsonlite::fromJSON(ContactJson)
      self$`contactDbId` <- ContactObject$`contactDbId`
      self$`email` <- ContactObject$`email`
      self$`institutionName` <- ContactObject$`institutionName`
      self$`name` <- ContactObject$`name`
      self$`orcid` <- ContactObject$`orcid`
      self$`type` <- ContactObject$`type`
    }
  )
)
