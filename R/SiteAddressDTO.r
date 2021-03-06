# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SiteAddressDTO Class
#'
#' @field countryName 
#' @field locality 
#' @field postalCode 
#' @field region 
#' @field streetAddress 
#' @field readableAddress 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SiteAddressDTO <- R6::R6Class(
  'SiteAddressDTO',
  public = list(
    `countryName` = NULL,
    `locality` = NULL,
    `postalCode` = NULL,
    `region` = NULL,
    `streetAddress` = NULL,
    `readableAddress` = NULL,
    initialize = function(`countryName`, `locality`, `postalCode`, `region`, `streetAddress`, `readableAddress`){
      if (!missing(`countryName`)) {
        stopifnot(is.character(`countryName`), length(`countryName`) == 1)
        self$`countryName` <- `countryName`
      }
      if (!missing(`locality`)) {
        stopifnot(is.character(`locality`), length(`locality`) == 1)
        self$`locality` <- `locality`
      }
      if (!missing(`postalCode`)) {
        stopifnot(is.character(`postalCode`), length(`postalCode`) == 1)
        self$`postalCode` <- `postalCode`
      }
      if (!missing(`region`)) {
        stopifnot(is.character(`region`), length(`region`) == 1)
        self$`region` <- `region`
      }
      if (!missing(`streetAddress`)) {
        stopifnot(is.character(`streetAddress`), length(`streetAddress`) == 1)
        self$`streetAddress` <- `streetAddress`
      }
      if (!missing(`readableAddress`)) {
        stopifnot(is.character(`readableAddress`), length(`readableAddress`) == 1)
        self$`readableAddress` <- `readableAddress`
      }
    },
    toJSON = function() {
      SiteAddressDTOObject <- list()
      if (!is.null(self$`countryName`)) {
        SiteAddressDTOObject[['countryName']] <- self$`countryName`
      }
      if (!is.null(self$`locality`)) {
        SiteAddressDTOObject[['locality']] <- self$`locality`
      }
      if (!is.null(self$`postalCode`)) {
        SiteAddressDTOObject[['postalCode']] <- self$`postalCode`
      }
      if (!is.null(self$`region`)) {
        SiteAddressDTOObject[['region']] <- self$`region`
      }
      if (!is.null(self$`streetAddress`)) {
        SiteAddressDTOObject[['streetAddress']] <- self$`streetAddress`
      }
      if (!is.null(self$`readableAddress`)) {
        SiteAddressDTOObject[['readableAddress']] <- self$`readableAddress`
      }

      SiteAddressDTOObject
    },
    fromJSON = function(SiteAddressDTOJson) {
      SiteAddressDTOObject <- jsonlite::fromJSON(SiteAddressDTOJson)
      if (!is.null(SiteAddressDTOObject$`countryName`)) {
        self$`countryName` <- SiteAddressDTOObject$`countryName`
      }
      if (!is.null(SiteAddressDTOObject$`locality`)) {
        self$`locality` <- SiteAddressDTOObject$`locality`
      }
      if (!is.null(SiteAddressDTOObject$`postalCode`)) {
        self$`postalCode` <- SiteAddressDTOObject$`postalCode`
      }
      if (!is.null(SiteAddressDTOObject$`region`)) {
        self$`region` <- SiteAddressDTOObject$`region`
      }
      if (!is.null(SiteAddressDTOObject$`streetAddress`)) {
        self$`streetAddress` <- SiteAddressDTOObject$`streetAddress`
      }
      if (!is.null(SiteAddressDTOObject$`readableAddress`)) {
        self$`readableAddress` <- SiteAddressDTOObject$`readableAddress`
      }
    },
    fromJSONObject = function(SiteAddressDTOObject) {
      if (!is.null(SiteAddressDTOObject$`countryName`)) {
        self$`countryName` <- SiteAddressDTOObject$`countryName`
      }
      if (!is.null(SiteAddressDTOObject$`locality`)) {
        self$`locality` <- SiteAddressDTOObject$`locality`
      }
      if (!is.null(SiteAddressDTOObject$`postalCode`)) {
        self$`postalCode` <- SiteAddressDTOObject$`postalCode`
      }
      if (!is.null(SiteAddressDTOObject$`region`)) {
        self$`region` <- SiteAddressDTOObject$`region`
      }
      if (!is.null(SiteAddressDTOObject$`streetAddress`)) {
        self$`streetAddress` <- SiteAddressDTOObject$`streetAddress`
      }
      if (!is.null(SiteAddressDTOObject$`readableAddress`)) {
        self$`readableAddress` <- SiteAddressDTOObject$`readableAddress`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "countryName": %s,
           "locality": %s,
           "postalCode": %s,
           "region": %s,
           "streetAddress": %s,
           "readableAddress": %s
        }',
        ifelse(is.null(self$`countryName`), "null",jsonlite::toJSON(self$`countryName`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`locality`), "null",jsonlite::toJSON(self$`locality`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`postalCode`), "null",jsonlite::toJSON(self$`postalCode`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`region`), "null",jsonlite::toJSON(self$`region`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`streetAddress`), "null",jsonlite::toJSON(self$`streetAddress`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`readableAddress`), "null",jsonlite::toJSON(self$`readableAddress`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(SiteAddressDTOJson) {
      SiteAddressDTOObject <- jsonlite::fromJSON(SiteAddressDTOJson)
      self$`countryName` <- SiteAddressDTOObject$`countryName`
      self$`locality` <- SiteAddressDTOObject$`locality`
      self$`postalCode` <- SiteAddressDTOObject$`postalCode`
      self$`region` <- SiteAddressDTOObject$`region`
      self$`streetAddress` <- SiteAddressDTOObject$`streetAddress`
      self$`readableAddress` <- SiteAddressDTOObject$`readableAddress`
    }
  )
)
