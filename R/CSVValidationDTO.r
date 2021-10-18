# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CSVValidationDTO Class
#'
#' @field errors 
#' @field validation_token 
#' @field nb_lines_imported 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CSVValidationDTO <- R6::R6Class(
  'CSVValidationDTO',
  public = list(
    `errors` = NULL,
    `validation_token` = NULL,
    `nb_lines_imported` = NULL,
    initialize = function(`errors`, `validation_token`, `nb_lines_imported`){
      if (!missing(`errors`)) {
        stopifnot(R6::is.R6(`errors`))
        self$`errors` <- `errors`
      }
      if (!missing(`validation_token`)) {
        stopifnot(is.character(`validation_token`), length(`validation_token`) == 1)
        self$`validation_token` <- `validation_token`
      }
      if (!missing(`nb_lines_imported`)) {
        stopifnot(is.numeric(`nb_lines_imported`), length(`nb_lines_imported`) == 1)
        self$`nb_lines_imported` <- `nb_lines_imported`
      }
    },
    toJSON = function() {
      CSVValidationDTOObject <- list()
      if (!is.null(self$`errors`)) {
        CSVValidationDTOObject[['errors']] <- self$`errors`$toJSON()
      }
      if (!is.null(self$`validation_token`)) {
        CSVValidationDTOObject[['validation_token']] <- self$`validation_token`
      }
      if (!is.null(self$`nb_lines_imported`)) {
        CSVValidationDTOObject[['nb_lines_imported']] <- self$`nb_lines_imported`
      }

      CSVValidationDTOObject
    },
    fromJSON = function(CSVValidationDTOJson) {
      CSVValidationDTOObject <- jsonlite::fromJSON(CSVValidationDTOJson)
      if (!is.null(CSVValidationDTOObject$`errors`)) {
        errorsObject <- CSVValidationModel$new()
        errorsObject$fromJSON(jsonlite::toJSON(CSVValidationDTOObject$errors, auto_unbox = TRUE, null = "null"))
        self$`errors` <- errorsObject
      }
      if (!is.null(CSVValidationDTOObject$`validation_token`)) {
        self$`validation_token` <- CSVValidationDTOObject$`validation_token`
      }
      if (!is.null(CSVValidationDTOObject$`nb_lines_imported`)) {
        self$`nb_lines_imported` <- CSVValidationDTOObject$`nb_lines_imported`
      }
    },
    fromJSONObject = function(CSVValidationDTOObject) {
      if (!is.null(CSVValidationDTOObject$`errors`)) {
        errorsObject <- CSVValidationModel$new()
        errorsObject$fromJSON(jsonlite::toJSON(CSVValidationDTOObject$errors, auto_unbox = TRUE, null = "null"))
        self$`errors` <- errorsObject
      }
      if (!is.null(CSVValidationDTOObject$`validation_token`)) {
        self$`validation_token` <- CSVValidationDTOObject$`validation_token`
      }
      if (!is.null(CSVValidationDTOObject$`nb_lines_imported`)) {
        self$`nb_lines_imported` <- CSVValidationDTOObject$`nb_lines_imported`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "errors": %s,
           "validation_token": %s,
           "nb_lines_imported": %s
        }',
        jsonlite::toJSON(self$`errors`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`validation_token`), "null",jsonlite::toJSON(self$`validation_token`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`nb_lines_imported`), "null",as.numeric(jsonlite::toJSON(self$`nb_lines_imported`,auto_unbox=TRUE, null = "null")))
      )
    },
    fromJSONString = function(CSVValidationDTOJson) {
      CSVValidationDTOObject <- jsonlite::fromJSON(CSVValidationDTOJson)
      CSVValidationModelObject <- CSVValidationModel$new()
      self$`errors` <- CSVValidationModelObject$fromJSON(jsonlite::toJSON(CSVValidationDTOObject$errors, auto_unbox = TRUE))
      self$`validation_token` <- CSVValidationDTOObject$`validation_token`
      self$`nb_lines_imported` <- CSVValidationDTOObject$`nb_lines_imported`
    }
  )
)
