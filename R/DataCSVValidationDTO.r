# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DataCSVValidationDTO Class
#'
#' @field errors 
#' @field dataErrors 
#' @field sizeMax 
#' @field validation_token 
#' @field nb_lines_imported 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataCSVValidationDTO <- R6::R6Class(
  'DataCSVValidationDTO',
  public = list(
    `errors` = NULL,
    `dataErrors` = NULL,
    `sizeMax` = NULL,
    `validation_token` = NULL,
    `nb_lines_imported` = NULL,
    initialize = function(`errors`, `dataErrors`, `sizeMax`, `validation_token`, `nb_lines_imported`){
      if (!missing(`errors`)) {
        stopifnot(R6::is.R6(`errors`))
        self$`errors` <- `errors`
      }
      if (!missing(`dataErrors`)) {
        stopifnot(R6::is.R6(`dataErrors`))
        self$`dataErrors` <- `dataErrors`
      }
      if (!missing(`sizeMax`)) {
        stopifnot(is.numeric(`sizeMax`), length(`sizeMax`) == 1)
        self$`sizeMax` <- `sizeMax`
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
      DataCSVValidationDTOObject <- list()
      if (!is.null(self$`errors`)) {
        DataCSVValidationDTOObject[['errors']] <- self$`errors`$toJSON()
      }
      if (!is.null(self$`dataErrors`)) {
        DataCSVValidationDTOObject[['dataErrors']] <- self$`dataErrors`$toJSON()
      }
      if (!is.null(self$`sizeMax`)) {
        DataCSVValidationDTOObject[['sizeMax']] <- self$`sizeMax`
      }
      if (!is.null(self$`validation_token`)) {
        DataCSVValidationDTOObject[['validation_token']] <- self$`validation_token`
      }
      if (!is.null(self$`nb_lines_imported`)) {
        DataCSVValidationDTOObject[['nb_lines_imported']] <- self$`nb_lines_imported`
      }

      DataCSVValidationDTOObject
    },
    fromJSON = function(DataCSVValidationDTOJson) {
      DataCSVValidationDTOObject <- jsonlite::fromJSON(DataCSVValidationDTOJson)
      if (!is.null(DataCSVValidationDTOObject$`errors`)) {
        errorsObject <- CSVValidationModel$new()
        errorsObject$fromJSON(jsonlite::toJSON(DataCSVValidationDTOObject$errors, auto_unbox = TRUE, null = "null"))
        self$`errors` <- errorsObject
      }
      if (!is.null(DataCSVValidationDTOObject$`dataErrors`)) {
        dataErrorsObject <- DataCSVValidationModel$new()
        dataErrorsObject$fromJSON(jsonlite::toJSON(DataCSVValidationDTOObject$dataErrors, auto_unbox = TRUE, null = "null"))
        self$`dataErrors` <- dataErrorsObject
      }
      if (!is.null(DataCSVValidationDTOObject$`sizeMax`)) {
        self$`sizeMax` <- DataCSVValidationDTOObject$`sizeMax`
      }
      if (!is.null(DataCSVValidationDTOObject$`validation_token`)) {
        self$`validation_token` <- DataCSVValidationDTOObject$`validation_token`
      }
      if (!is.null(DataCSVValidationDTOObject$`nb_lines_imported`)) {
        self$`nb_lines_imported` <- DataCSVValidationDTOObject$`nb_lines_imported`
      }
    },
    fromJSONObject = function(DataCSVValidationDTOObject) {
      if (!is.null(DataCSVValidationDTOObject$`errors`)) {
        errorsObject <- CSVValidationModel$new()
        errorsObject$fromJSON(jsonlite::toJSON(DataCSVValidationDTOObject$errors, auto_unbox = TRUE, null = "null"))
        self$`errors` <- errorsObject
      }
      if (!is.null(DataCSVValidationDTOObject$`dataErrors`)) {
        dataErrorsObject <- DataCSVValidationModel$new()
        dataErrorsObject$fromJSON(jsonlite::toJSON(DataCSVValidationDTOObject$dataErrors, auto_unbox = TRUE, null = "null"))
        self$`dataErrors` <- dataErrorsObject
      }
      if (!is.null(DataCSVValidationDTOObject$`sizeMax`)) {
        self$`sizeMax` <- DataCSVValidationDTOObject$`sizeMax`
      }
      if (!is.null(DataCSVValidationDTOObject$`validation_token`)) {
        self$`validation_token` <- DataCSVValidationDTOObject$`validation_token`
      }
      if (!is.null(DataCSVValidationDTOObject$`nb_lines_imported`)) {
        self$`nb_lines_imported` <- DataCSVValidationDTOObject$`nb_lines_imported`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "errors": %s,
           "dataErrors": %s,
           "sizeMax": %s,
           "validation_token": %s,
           "nb_lines_imported": %s
        }',
        jsonlite::toJSON(self$`errors`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`dataErrors`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`sizeMax`), "null",as.numeric(jsonlite::toJSON(self$`sizeMax`,auto_unbox=TRUE, null = "null"))),
        ifelse(is.null(self$`validation_token`), "null",jsonlite::toJSON(self$`validation_token`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`nb_lines_imported`), "null",as.numeric(jsonlite::toJSON(self$`nb_lines_imported`,auto_unbox=TRUE, null = "null")))
      )
    },
    fromJSONString = function(DataCSVValidationDTOJson) {
      DataCSVValidationDTOObject <- jsonlite::fromJSON(DataCSVValidationDTOJson)
      CSVValidationModelObject <- CSVValidationModel$new()
      self$`errors` <- CSVValidationModelObject$fromJSON(jsonlite::toJSON(DataCSVValidationDTOObject$errors, auto_unbox = TRUE))
      DataCSVValidationModelObject <- DataCSVValidationModel$new()
      self$`dataErrors` <- DataCSVValidationModelObject$fromJSON(jsonlite::toJSON(DataCSVValidationDTOObject$dataErrors, auto_unbox = TRUE))
      self$`sizeMax` <- DataCSVValidationDTOObject$`sizeMax`
      self$`validation_token` <- DataCSVValidationDTOObject$`validation_token`
      self$`nb_lines_imported` <- DataCSVValidationDTOObject$`nb_lines_imported`
    }
  )
)
