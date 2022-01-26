# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SiteGetDTO Class
#'
#' @field uri 
#' @field rdf_type 
#' @field rdf_type_name 
#' @field name 
#' @field address 
#' @field organizations 
#' @field facilities 
#' @field groups 
#' @field geometry 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SiteGetDTO <- R6::R6Class(
  'SiteGetDTO',
  public = list(
    `uri` = NULL,
    `rdf_type` = NULL,
    `rdf_type_name` = NULL,
    `name` = NULL,
    `address` = NULL,
    `organizations` = NULL,
    `facilities` = NULL,
    `groups` = NULL,
    `geometry` = NULL,
    initialize = function(`uri`, `rdf_type`, `rdf_type_name`, `name`, `address`, `organizations`, `facilities`, `groups`, `geometry`){
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
      if (!missing(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!missing(`organizations`)) {
        stopifnot(is.list(`organizations`), length(`organizations`) != 0)
        lapply(`organizations`, function(x) stopifnot(R6::is.R6(x)))
        self$`organizations` <- `organizations`
      }
      if (!missing(`facilities`)) {
        stopifnot(is.list(`facilities`), length(`facilities`) != 0)
        lapply(`facilities`, function(x) stopifnot(R6::is.R6(x)))
        self$`facilities` <- `facilities`
      }
      if (!missing(`groups`)) {
        stopifnot(is.list(`groups`), length(`groups`) != 0)
        lapply(`groups`, function(x) stopifnot(R6::is.R6(x)))
        self$`groups` <- `groups`
      }
      if (!missing(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
      }
    },
    toJSON = function() {
      SiteGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        SiteGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`rdf_type`)) {
        SiteGetDTOObject[['rdf_type']] <- self$`rdf_type`
      }
      if (!is.null(self$`rdf_type_name`)) {
        SiteGetDTOObject[['rdf_type_name']] <- self$`rdf_type_name`
      }
      if (!is.null(self$`name`)) {
        SiteGetDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`address`)) {
        SiteGetDTOObject[['address']] <- self$`address`$toJSON()
      }
      if (!is.null(self$`organizations`)) {
        SiteGetDTOObject[['organizations']] <- lapply(self$`organizations`, function(x) x$toJSON())
      }
      if (!is.null(self$`facilities`)) {
        SiteGetDTOObject[['facilities']] <- lapply(self$`facilities`, function(x) x$toJSON())
      }
      if (!is.null(self$`groups`)) {
        SiteGetDTOObject[['groups']] <- lapply(self$`groups`, function(x) x$toJSON())
      }
      if (!is.null(self$`geometry`)) {
        SiteGetDTOObject[['geometry']] <- self$`geometry`$toJSON()
      }

      SiteGetDTOObject
    },
    fromJSON = function(SiteGetDTOJson) {
      SiteGetDTOObject <- jsonlite::fromJSON(SiteGetDTOJson)
      if (!is.null(SiteGetDTOObject$`uri`)) {
        self$`uri` <- SiteGetDTOObject$`uri`
      }
      if (!is.null(SiteGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- SiteGetDTOObject$`rdf_type`
      }
      if (!is.null(SiteGetDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- SiteGetDTOObject$`rdf_type_name`
      }
      if (!is.null(SiteGetDTOObject$`name`)) {
        self$`name` <- SiteGetDTOObject$`name`
      }
      if (!is.null(SiteGetDTOObject$`address`)) {
        addressObject <- SiteAddressDTO$new()
        addressObject$fromJSON(jsonlite::toJSON(SiteGetDTOObject$address, auto_unbox = TRUE, null = "null"))
        self$`address` <- addressObject
      }
      if (!is.null(SiteGetDTOObject$`organizations`)) {
        self$`organizations` <- lapply(SiteGetDTOObject$`organizations`, function(x) {
          organizationsObject <- NamedResourceDTOInfrastructureModel$new()
          organizationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          organizationsObject
        })
      }
      if (!is.null(SiteGetDTOObject$`facilities`)) {
        self$`facilities` <- lapply(SiteGetDTOObject$`facilities`, function(x) {
          facilitiesObject <- NamedResourceDTOInfrastructureFacilityModel$new()
          facilitiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          facilitiesObject
        })
      }
      if (!is.null(SiteGetDTOObject$`groups`)) {
        self$`groups` <- lapply(SiteGetDTOObject$`groups`, function(x) {
          groupsObject <- NamedResourceDTOGroupModel$new()
          groupsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          groupsObject
        })
      }
      if (!is.null(SiteGetDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(SiteGetDTOObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
    },
    fromJSONObject = function(SiteGetDTOObject) {
      if (!is.null(SiteGetDTOObject$`uri`)) {
        self$`uri` <- SiteGetDTOObject$`uri`
      }
      if (!is.null(SiteGetDTOObject$`rdf_type`)) {
        self$`rdf_type` <- SiteGetDTOObject$`rdf_type`
      }
      if (!is.null(SiteGetDTOObject$`rdf_type_name`)) {
        self$`rdf_type_name` <- SiteGetDTOObject$`rdf_type_name`
      }
      if (!is.null(SiteGetDTOObject$`name`)) {
        self$`name` <- SiteGetDTOObject$`name`
      }
      if (!is.null(SiteGetDTOObject$`address`)) {
        addressObject <- SiteAddressDTO$new()
        addressObject$fromJSON(jsonlite::toJSON(SiteGetDTOObject$address, auto_unbox = TRUE, null = "null"))
        self$`address` <- addressObject
      }
      if (!is.null(SiteGetDTOObject$`organizations`)) {
        self$`organizations` <- lapply(SiteGetDTOObject$`organizations`, function(x) {
          organizationsObject <- NamedResourceDTOInfrastructureModel$new()
          organizationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          organizationsObject
        })
      }
      if (!is.null(SiteGetDTOObject$`facilities`)) {
        self$`facilities` <- lapply(SiteGetDTOObject$`facilities`, function(x) {
          facilitiesObject <- NamedResourceDTOInfrastructureFacilityModel$new()
          facilitiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          facilitiesObject
        })
      }
      if (!is.null(SiteGetDTOObject$`groups`)) {
        self$`groups` <- lapply(SiteGetDTOObject$`groups`, function(x) {
          groupsObject <- NamedResourceDTOGroupModel$new()
          groupsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          groupsObject
        })
      }
      if (!is.null(SiteGetDTOObject$`geometry`)) {
        geometryObject <- GeoJsonObject$new()
        geometryObject$fromJSON(jsonlite::toJSON(SiteGetDTOObject$geometry, auto_unbox = TRUE, null = "null"))
        self$`geometry` <- geometryObject
      }
    },
    toJSONString = function() {
      organizationsList = paste(lapply(self$`organizations`, function(x) x$toJSONString()),collapse = ",")
      facilitiesList = paste(lapply(self$`facilities`, function(x) x$toJSONString()),collapse = ",")
      groupsList = paste(lapply(self$`groups`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "uri": %s,
           "rdf_type": %s,
           "rdf_type_name": %s,
           "name": %s,
           "address": %s,
           "organizations": [%s],
           "facilities": [%s],
           "groups": [%s],
           "geometry": %s
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type`), "null",jsonlite::toJSON(self$`rdf_type`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`rdf_type_name`), "null",jsonlite::toJSON(self$`rdf_type_name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`address`$toJSON(),auto_unbox=TRUE, null = "null"),
        organizationsList,
        facilitiesList,
        groupsList,
        jsonlite::toJSON(self$`geometry`$toJSON(),auto_unbox=TRUE, null = "null")
      )
    },
    fromJSONString = function(SiteGetDTOJson) {
      SiteGetDTOObject <- jsonlite::fromJSON(SiteGetDTOJson)
      self$`uri` <- SiteGetDTOObject$`uri`
      self$`rdf_type` <- SiteGetDTOObject$`rdf_type`
      self$`rdf_type_name` <- SiteGetDTOObject$`rdf_type_name`
      self$`name` <- SiteGetDTOObject$`name`
      SiteAddressDTOObject <- SiteAddressDTO$new()
      self$`address` <- SiteAddressDTOObject$fromJSON(jsonlite::toJSON(SiteGetDTOObject$address, auto_unbox = TRUE))
      self$`organizations` <- lapply(SiteGetDTOObject$`organizations`, function(x) NamedResourceDTOInfrastructureModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`facilities` <- lapply(SiteGetDTOObject$`facilities`, function(x) NamedResourceDTOInfrastructureFacilityModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`groups` <- lapply(SiteGetDTOObject$`groups`, function(x) NamedResourceDTOGroupModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      GeoJsonObjectObject <- GeoJsonObject$new()
      self$`geometry` <- GeoJsonObjectObject$fromJSON(jsonlite::toJSON(SiteGetDTOObject$geometry, auto_unbox = TRUE))
    }
  )
)