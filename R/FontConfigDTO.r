# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FontConfigDTO Class
#'
#' @field family 
#' @field style 
#' @field weight 
#' @field url 
#' @field src 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FontConfigDTO <- R6::R6Class(
  'FontConfigDTO',
  public = list(
    `family` = NULL,
    `style` = NULL,
    `weight` = NULL,
    `url` = NULL,
    `src` = NULL,
    initialize = function(`family`, `style`, `weight`, `url`, `src`){
      if (!missing(`family`)) {
        stopifnot(is.character(`family`), length(`family`) == 1)
        self$`family` <- `family`
      }
      if (!missing(`style`)) {
        stopifnot(is.character(`style`), length(`style`) == 1)
        self$`style` <- `style`
      }
      if (!missing(`weight`)) {
        stopifnot(is.character(`weight`), length(`weight`) == 1)
        self$`weight` <- `weight`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`src`)) {
        self$`src` <- `src`
      }
    },
    toJSON = function() {
      FontConfigDTOObject <- list()
      if (!is.null(self$`family`)) {
        FontConfigDTOObject[['family']] <- self$`family`
      }
      if (!is.null(self$`style`)) {
        FontConfigDTOObject[['style']] <- self$`style`
      }
      if (!is.null(self$`weight`)) {
        FontConfigDTOObject[['weight']] <- self$`weight`
      }
      if (!is.null(self$`url`)) {
        FontConfigDTOObject[['url']] <- self$`url`
      }
      if (!is.null(self$`src`)) {
        FontConfigDTOObject[['src']] <- self$`src`
      }

      FontConfigDTOObject
    },
    fromJSON = function(FontConfigDTOJson) {
      FontConfigDTOObject <- jsonlite::fromJSON(FontConfigDTOJson)
      if (!is.null(FontConfigDTOObject$`family`)) {
        self$`family` <- FontConfigDTOObject$`family`
      }
      if (!is.null(FontConfigDTOObject$`style`)) {
        self$`style` <- FontConfigDTOObject$`style`
      }
      if (!is.null(FontConfigDTOObject$`weight`)) {
        self$`weight` <- FontConfigDTOObject$`weight`
      }
      if (!is.null(FontConfigDTOObject$`url`)) {
        self$`url` <- FontConfigDTOObject$`url`
      }
      if (!is.null(FontConfigDTOObject$`src`)) {
        self$`src` <- FontConfigDTOObject$`src`
      }
    },
    fromJSONObject = function(FontConfigDTOObject) {
      if (!is.null(FontConfigDTOObject$`family`)) {
        self$`family` <- FontConfigDTOObject$`family`
      }
      if (!is.null(FontConfigDTOObject$`style`)) {
        self$`style` <- FontConfigDTOObject$`style`
      }
      if (!is.null(FontConfigDTOObject$`weight`)) {
        self$`weight` <- FontConfigDTOObject$`weight`
      }
      if (!is.null(FontConfigDTOObject$`url`)) {
        self$`url` <- FontConfigDTOObject$`url`
      }
      if (!is.null(FontConfigDTOObject$`src`)) {
        self$`src` <- FontConfigDTOObject$`src`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "family": %s,
           "style": %s,
           "weight": %s,
           "url": %s,
           "src": %s
        }',
        ifelse(is.null(self$`family`), "null",jsonlite::toJSON(self$`family`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`style`), "null",jsonlite::toJSON(self$`style`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`weight`), "null",jsonlite::toJSON(self$`weight`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`url`), "null",jsonlite::toJSON(self$`url`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`src`), "null",jsonlite::toJSON(self$`src`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(FontConfigDTOJson) {
      FontConfigDTOObject <- jsonlite::fromJSON(FontConfigDTOJson)
      self$`family` <- FontConfigDTOObject$`family`
      self$`style` <- FontConfigDTOObject$`style`
      self$`weight` <- FontConfigDTOObject$`weight`
      self$`url` <- FontConfigDTOObject$`url`
      self$`src` <- FontConfigDTOObject$`src`
    }
  )
)
