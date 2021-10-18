# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ThemeConfigDTO Class
#'
#' @field hasStyle 
#' @field fonts 
#' @field iconClassesRDF 
#' @field componentOverrides 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ThemeConfigDTO <- R6::R6Class(
  'ThemeConfigDTO',
  public = list(
    `hasStyle` = NULL,
    `fonts` = NULL,
    `iconClassesRDF` = NULL,
    `componentOverrides` = NULL,
    initialize = function(`hasStyle`, `fonts`, `iconClassesRDF`, `componentOverrides`){
      if (!missing(`hasStyle`)) {
        self$`hasStyle` <- `hasStyle`
      }
      if (!missing(`fonts`)) {
        stopifnot(is.list(`fonts`), length(`fonts`) != 0)
        lapply(`fonts`, function(x) stopifnot(R6::is.R6(x)))
        self$`fonts` <- `fonts`
      }
      if (!missing(`iconClassesRDF`)) {
        self$`iconClassesRDF` <- `iconClassesRDF`
      }
      if (!missing(`componentOverrides`)) {
        self$`componentOverrides` <- `componentOverrides`
      }
    },
    toJSON = function() {
      ThemeConfigDTOObject <- list()
      if (!is.null(self$`hasStyle`)) {
        ThemeConfigDTOObject[['hasStyle']] <- self$`hasStyle`
      }
      if (!is.null(self$`fonts`)) {
        ThemeConfigDTOObject[['fonts']] <- lapply(self$`fonts`, function(x) x$toJSON())
      }
      if (!is.null(self$`iconClassesRDF`)) {
        ThemeConfigDTOObject[['iconClassesRDF']] <- self$`iconClassesRDF`
      }
      if (!is.null(self$`componentOverrides`)) {
        ThemeConfigDTOObject[['componentOverrides']] <- self$`componentOverrides`
      }

      ThemeConfigDTOObject
    },
    fromJSON = function(ThemeConfigDTOJson) {
      ThemeConfigDTOObject <- jsonlite::fromJSON(ThemeConfigDTOJson)
      if (!is.null(ThemeConfigDTOObject$`hasStyle`)) {
        self$`hasStyle` <- ThemeConfigDTOObject$`hasStyle`
      }
      if (!is.null(ThemeConfigDTOObject$`fonts`)) {
        self$`fonts` <- lapply(ThemeConfigDTOObject$`fonts`, function(x) {
          fontsObject <- FontConfigDTO$new()
          fontsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          fontsObject
        })
      }
      if (!is.null(ThemeConfigDTOObject$`iconClassesRDF`)) {
        self$`iconClassesRDF` <- ThemeConfigDTOObject$`iconClassesRDF`
      }
      if (!is.null(ThemeConfigDTOObject$`componentOverrides`)) {
        self$`componentOverrides` <- ThemeConfigDTOObject$`componentOverrides`
      }
    },
    fromJSONObject = function(ThemeConfigDTOObject) {
      if (!is.null(ThemeConfigDTOObject$`hasStyle`)) {
        self$`hasStyle` <- ThemeConfigDTOObject$`hasStyle`
      }
      if (!is.null(ThemeConfigDTOObject$`fonts`)) {
        self$`fonts` <- lapply(ThemeConfigDTOObject$`fonts`, function(x) {
          fontsObject <- FontConfigDTO$new()
          fontsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          fontsObject
        })
      }
      if (!is.null(ThemeConfigDTOObject$`iconClassesRDF`)) {
        self$`iconClassesRDF` <- ThemeConfigDTOObject$`iconClassesRDF`
      }
      if (!is.null(ThemeConfigDTOObject$`componentOverrides`)) {
        self$`componentOverrides` <- ThemeConfigDTOObject$`componentOverrides`
      }
    },
    toJSONString = function() {
      fontsList = paste(lapply(self$`fonts`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "hasStyle": %s,
           "fonts": [%s],
           "iconClassesRDF": %s,
           "componentOverrides": %s
        }',
        ifelse(is.null(self$`hasStyle`), "null",jsonlite::toJSON(self$`hasStyle`,auto_unbox=TRUE, null = "null")),
        fontsList,
        ifelse(is.null(self$`iconClassesRDF`), "null",jsonlite::toJSON(self$`iconClassesRDF`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`componentOverrides`), "null",jsonlite::toJSON(self$`componentOverrides`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(ThemeConfigDTOJson) {
      ThemeConfigDTOObject <- jsonlite::fromJSON(ThemeConfigDTOJson)
      self$`hasStyle` <- ThemeConfigDTOObject$`hasStyle`
      self$`fonts` <- lapply(ThemeConfigDTOObject$`fonts`, function(x) FontConfigDTO$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`iconClassesRDF` <- ThemeConfigDTOObject$`iconClassesRDF`
      self$`componentOverrides` <- ThemeConfigDTOObject$`componentOverrides`
    }
  )
)
