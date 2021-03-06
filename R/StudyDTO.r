# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' StudyDTO Class
#'
#' @field active 
#' @field additionalInfo 
#' @field commonCropName 
#' @field documentationURL 
#' @field endDate 
#' @field locationDbId 
#' @field locationName 
#' @field name 
#' @field programDbId 
#' @field programName 
#' @field seasons 
#' @field startDate 
#' @field studyDbId 
#' @field studyName 
#' @field studyType 
#' @field studyTypeDbId 
#' @field studyTypeName 
#' @field trialDbId 
#' @field trialName 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StudyDTO <- R6::R6Class(
  'StudyDTO',
  public = list(
    `active` = NULL,
    `additionalInfo` = NULL,
    `commonCropName` = NULL,
    `documentationURL` = NULL,
    `endDate` = NULL,
    `locationDbId` = NULL,
    `locationName` = NULL,
    `name` = NULL,
    `programDbId` = NULL,
    `programName` = NULL,
    `seasons` = NULL,
    `startDate` = NULL,
    `studyDbId` = NULL,
    `studyName` = NULL,
    `studyType` = NULL,
    `studyTypeDbId` = NULL,
    `studyTypeName` = NULL,
    `trialDbId` = NULL,
    `trialName` = NULL,
    initialize = function(`active`, `additionalInfo`, `commonCropName`, `documentationURL`, `endDate`, `locationDbId`, `locationName`, `name`, `programDbId`, `programName`, `seasons`, `startDate`, `studyDbId`, `studyName`, `studyType`, `studyTypeDbId`, `studyTypeName`, `trialDbId`, `trialName`){
      if (!missing(`active`)) {
        stopifnot(is.character(`active`), length(`active`) == 1)
        self$`active` <- `active`
      }
      if (!missing(`additionalInfo`)) {
        stopifnot(R6::is.R6(`additionalInfo`))
        self$`additionalInfo` <- `additionalInfo`
      }
      if (!missing(`commonCropName`)) {
        stopifnot(is.character(`commonCropName`), length(`commonCropName`) == 1)
        self$`commonCropName` <- `commonCropName`
      }
      if (!missing(`documentationURL`)) {
        stopifnot(is.character(`documentationURL`), length(`documentationURL`) == 1)
        self$`documentationURL` <- `documentationURL`
      }
      if (!missing(`endDate`)) {
        stopifnot(is.character(`endDate`), length(`endDate`) == 1)
        self$`endDate` <- `endDate`
      }
      if (!missing(`locationDbId`)) {
        stopifnot(is.character(`locationDbId`), length(`locationDbId`) == 1)
        self$`locationDbId` <- `locationDbId`
      }
      if (!missing(`locationName`)) {
        stopifnot(is.character(`locationName`), length(`locationName`) == 1)
        self$`locationName` <- `locationName`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`programDbId`)) {
        stopifnot(is.character(`programDbId`), length(`programDbId`) == 1)
        self$`programDbId` <- `programDbId`
      }
      if (!missing(`programName`)) {
        stopifnot(is.character(`programName`), length(`programName`) == 1)
        self$`programName` <- `programName`
      }
      if (!missing(`seasons`)) {
        stopifnot(is.list(`seasons`), length(`seasons`) != 0)
        lapply(`seasons`, function(x) stopifnot(R6::is.R6(x)))
        self$`seasons` <- `seasons`
      }
      if (!missing(`startDate`)) {
        stopifnot(is.character(`startDate`), length(`startDate`) == 1)
        self$`startDate` <- `startDate`
      }
      if (!missing(`studyDbId`)) {
        stopifnot(is.character(`studyDbId`), length(`studyDbId`) == 1)
        self$`studyDbId` <- `studyDbId`
      }
      if (!missing(`studyName`)) {
        stopifnot(is.character(`studyName`), length(`studyName`) == 1)
        self$`studyName` <- `studyName`
      }
      if (!missing(`studyType`)) {
        stopifnot(is.character(`studyType`), length(`studyType`) == 1)
        self$`studyType` <- `studyType`
      }
      if (!missing(`studyTypeDbId`)) {
        stopifnot(is.character(`studyTypeDbId`), length(`studyTypeDbId`) == 1)
        self$`studyTypeDbId` <- `studyTypeDbId`
      }
      if (!missing(`studyTypeName`)) {
        stopifnot(is.character(`studyTypeName`), length(`studyTypeName`) == 1)
        self$`studyTypeName` <- `studyTypeName`
      }
      if (!missing(`trialDbId`)) {
        stopifnot(is.character(`trialDbId`), length(`trialDbId`) == 1)
        self$`trialDbId` <- `trialDbId`
      }
      if (!missing(`trialName`)) {
        stopifnot(is.character(`trialName`), length(`trialName`) == 1)
        self$`trialName` <- `trialName`
      }
    },
    toJSON = function() {
      StudyDTOObject <- list()
      if (!is.null(self$`active`)) {
        StudyDTOObject[['active']] <- self$`active`
      }
      if (!is.null(self$`additionalInfo`)) {
        StudyDTOObject[['additionalInfo']] <- self$`additionalInfo`$toJSON()
      }
      if (!is.null(self$`commonCropName`)) {
        StudyDTOObject[['commonCropName']] <- self$`commonCropName`
      }
      if (!is.null(self$`documentationURL`)) {
        StudyDTOObject[['documentationURL']] <- self$`documentationURL`
      }
      if (!is.null(self$`endDate`)) {
        StudyDTOObject[['endDate']] <- self$`endDate`
      }
      if (!is.null(self$`locationDbId`)) {
        StudyDTOObject[['locationDbId']] <- self$`locationDbId`
      }
      if (!is.null(self$`locationName`)) {
        StudyDTOObject[['locationName']] <- self$`locationName`
      }
      if (!is.null(self$`name`)) {
        StudyDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`programDbId`)) {
        StudyDTOObject[['programDbId']] <- self$`programDbId`
      }
      if (!is.null(self$`programName`)) {
        StudyDTOObject[['programName']] <- self$`programName`
      }
      if (!is.null(self$`seasons`)) {
        StudyDTOObject[['seasons']] <- lapply(self$`seasons`, function(x) x$toJSON())
      }
      if (!is.null(self$`startDate`)) {
        StudyDTOObject[['startDate']] <- self$`startDate`
      }
      if (!is.null(self$`studyDbId`)) {
        StudyDTOObject[['studyDbId']] <- self$`studyDbId`
      }
      if (!is.null(self$`studyName`)) {
        StudyDTOObject[['studyName']] <- self$`studyName`
      }
      if (!is.null(self$`studyType`)) {
        StudyDTOObject[['studyType']] <- self$`studyType`
      }
      if (!is.null(self$`studyTypeDbId`)) {
        StudyDTOObject[['studyTypeDbId']] <- self$`studyTypeDbId`
      }
      if (!is.null(self$`studyTypeName`)) {
        StudyDTOObject[['studyTypeName']] <- self$`studyTypeName`
      }
      if (!is.null(self$`trialDbId`)) {
        StudyDTOObject[['trialDbId']] <- self$`trialDbId`
      }
      if (!is.null(self$`trialName`)) {
        StudyDTOObject[['trialName']] <- self$`trialName`
      }

      StudyDTOObject
    },
    fromJSON = function(StudyDTOJson) {
      StudyDTOObject <- jsonlite::fromJSON(StudyDTOJson)
      if (!is.null(StudyDTOObject$`active`)) {
        self$`active` <- StudyDTOObject$`active`
      }
      if (!is.null(StudyDTOObject$`additionalInfo`)) {
        additionalInfoObject <- ObjectDTO$new()
        additionalInfoObject$fromJSON(jsonlite::toJSON(StudyDTOObject$additionalInfo, auto_unbox = TRUE, null = "null"))
        self$`additionalInfo` <- additionalInfoObject
      }
      if (!is.null(StudyDTOObject$`commonCropName`)) {
        self$`commonCropName` <- StudyDTOObject$`commonCropName`
      }
      if (!is.null(StudyDTOObject$`documentationURL`)) {
        self$`documentationURL` <- StudyDTOObject$`documentationURL`
      }
      if (!is.null(StudyDTOObject$`endDate`)) {
        self$`endDate` <- StudyDTOObject$`endDate`
      }
      if (!is.null(StudyDTOObject$`locationDbId`)) {
        self$`locationDbId` <- StudyDTOObject$`locationDbId`
      }
      if (!is.null(StudyDTOObject$`locationName`)) {
        self$`locationName` <- StudyDTOObject$`locationName`
      }
      if (!is.null(StudyDTOObject$`name`)) {
        self$`name` <- StudyDTOObject$`name`
      }
      if (!is.null(StudyDTOObject$`programDbId`)) {
        self$`programDbId` <- StudyDTOObject$`programDbId`
      }
      if (!is.null(StudyDTOObject$`programName`)) {
        self$`programName` <- StudyDTOObject$`programName`
      }
      if (!is.null(StudyDTOObject$`seasons`)) {
        self$`seasons` <- lapply(StudyDTOObject$`seasons`, function(x) {
          seasonsObject <- Season$new()
          seasonsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          seasonsObject
        })
      }
      if (!is.null(StudyDTOObject$`startDate`)) {
        self$`startDate` <- StudyDTOObject$`startDate`
      }
      if (!is.null(StudyDTOObject$`studyDbId`)) {
        self$`studyDbId` <- StudyDTOObject$`studyDbId`
      }
      if (!is.null(StudyDTOObject$`studyName`)) {
        self$`studyName` <- StudyDTOObject$`studyName`
      }
      if (!is.null(StudyDTOObject$`studyType`)) {
        self$`studyType` <- StudyDTOObject$`studyType`
      }
      if (!is.null(StudyDTOObject$`studyTypeDbId`)) {
        self$`studyTypeDbId` <- StudyDTOObject$`studyTypeDbId`
      }
      if (!is.null(StudyDTOObject$`studyTypeName`)) {
        self$`studyTypeName` <- StudyDTOObject$`studyTypeName`
      }
      if (!is.null(StudyDTOObject$`trialDbId`)) {
        self$`trialDbId` <- StudyDTOObject$`trialDbId`
      }
      if (!is.null(StudyDTOObject$`trialName`)) {
        self$`trialName` <- StudyDTOObject$`trialName`
      }
    },
    fromJSONObject = function(StudyDTOObject) {
      if (!is.null(StudyDTOObject$`active`)) {
        self$`active` <- StudyDTOObject$`active`
      }
      if (!is.null(StudyDTOObject$`additionalInfo`)) {
        additionalInfoObject <- ObjectDTO$new()
        additionalInfoObject$fromJSON(jsonlite::toJSON(StudyDTOObject$additionalInfo, auto_unbox = TRUE, null = "null"))
        self$`additionalInfo` <- additionalInfoObject
      }
      if (!is.null(StudyDTOObject$`commonCropName`)) {
        self$`commonCropName` <- StudyDTOObject$`commonCropName`
      }
      if (!is.null(StudyDTOObject$`documentationURL`)) {
        self$`documentationURL` <- StudyDTOObject$`documentationURL`
      }
      if (!is.null(StudyDTOObject$`endDate`)) {
        self$`endDate` <- StudyDTOObject$`endDate`
      }
      if (!is.null(StudyDTOObject$`locationDbId`)) {
        self$`locationDbId` <- StudyDTOObject$`locationDbId`
      }
      if (!is.null(StudyDTOObject$`locationName`)) {
        self$`locationName` <- StudyDTOObject$`locationName`
      }
      if (!is.null(StudyDTOObject$`name`)) {
        self$`name` <- StudyDTOObject$`name`
      }
      if (!is.null(StudyDTOObject$`programDbId`)) {
        self$`programDbId` <- StudyDTOObject$`programDbId`
      }
      if (!is.null(StudyDTOObject$`programName`)) {
        self$`programName` <- StudyDTOObject$`programName`
      }
      if (!is.null(StudyDTOObject$`seasons`)) {
        self$`seasons` <- lapply(StudyDTOObject$`seasons`, function(x) {
          seasonsObject <- Season$new()
          seasonsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          seasonsObject
        })
      }
      if (!is.null(StudyDTOObject$`startDate`)) {
        self$`startDate` <- StudyDTOObject$`startDate`
      }
      if (!is.null(StudyDTOObject$`studyDbId`)) {
        self$`studyDbId` <- StudyDTOObject$`studyDbId`
      }
      if (!is.null(StudyDTOObject$`studyName`)) {
        self$`studyName` <- StudyDTOObject$`studyName`
      }
      if (!is.null(StudyDTOObject$`studyType`)) {
        self$`studyType` <- StudyDTOObject$`studyType`
      }
      if (!is.null(StudyDTOObject$`studyTypeDbId`)) {
        self$`studyTypeDbId` <- StudyDTOObject$`studyTypeDbId`
      }
      if (!is.null(StudyDTOObject$`studyTypeName`)) {
        self$`studyTypeName` <- StudyDTOObject$`studyTypeName`
      }
      if (!is.null(StudyDTOObject$`trialDbId`)) {
        self$`trialDbId` <- StudyDTOObject$`trialDbId`
      }
      if (!is.null(StudyDTOObject$`trialName`)) {
        self$`trialName` <- StudyDTOObject$`trialName`
      }
    },
    toJSONString = function() {
      seasonsList = paste(lapply(self$`seasons`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "active": %s,
           "additionalInfo": %s,
           "commonCropName": %s,
           "documentationURL": %s,
           "endDate": %s,
           "locationDbId": %s,
           "locationName": %s,
           "name": %s,
           "programDbId": %s,
           "programName": %s,
           "seasons": [%s],
           "startDate": %s,
           "studyDbId": %s,
           "studyName": %s,
           "studyType": %s,
           "studyTypeDbId": %s,
           "studyTypeName": %s,
           "trialDbId": %s,
           "trialName": %s
        }',
        ifelse(is.null(self$`active`), "null",jsonlite::toJSON(self$`active`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`additionalInfo`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`commonCropName`), "null",jsonlite::toJSON(self$`commonCropName`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`documentationURL`), "null",jsonlite::toJSON(self$`documentationURL`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`endDate`), "null",jsonlite::toJSON(self$`endDate`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`locationDbId`), "null",jsonlite::toJSON(self$`locationDbId`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`locationName`), "null",jsonlite::toJSON(self$`locationName`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`programDbId`), "null",jsonlite::toJSON(self$`programDbId`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`programName`), "null",jsonlite::toJSON(self$`programName`,auto_unbox=TRUE, null = "null")),
        seasonsList,
        ifelse(is.null(self$`startDate`), "null",jsonlite::toJSON(self$`startDate`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`studyDbId`), "null",jsonlite::toJSON(self$`studyDbId`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`studyName`), "null",jsonlite::toJSON(self$`studyName`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`studyType`), "null",jsonlite::toJSON(self$`studyType`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`studyTypeDbId`), "null",jsonlite::toJSON(self$`studyTypeDbId`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`studyTypeName`), "null",jsonlite::toJSON(self$`studyTypeName`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`trialDbId`), "null",jsonlite::toJSON(self$`trialDbId`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`trialName`), "null",jsonlite::toJSON(self$`trialName`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(StudyDTOJson) {
      StudyDTOObject <- jsonlite::fromJSON(StudyDTOJson)
      self$`active` <- StudyDTOObject$`active`
      ObjectDTOObject <- ObjectDTO$new()
      self$`additionalInfo` <- ObjectDTOObject$fromJSON(jsonlite::toJSON(StudyDTOObject$additionalInfo, auto_unbox = TRUE))
      self$`commonCropName` <- StudyDTOObject$`commonCropName`
      self$`documentationURL` <- StudyDTOObject$`documentationURL`
      self$`endDate` <- StudyDTOObject$`endDate`
      self$`locationDbId` <- StudyDTOObject$`locationDbId`
      self$`locationName` <- StudyDTOObject$`locationName`
      self$`name` <- StudyDTOObject$`name`
      self$`programDbId` <- StudyDTOObject$`programDbId`
      self$`programName` <- StudyDTOObject$`programName`
      self$`seasons` <- lapply(StudyDTOObject$`seasons`, function(x) Season$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`startDate` <- StudyDTOObject$`startDate`
      self$`studyDbId` <- StudyDTOObject$`studyDbId`
      self$`studyName` <- StudyDTOObject$`studyName`
      self$`studyType` <- StudyDTOObject$`studyType`
      self$`studyTypeDbId` <- StudyDTOObject$`studyTypeDbId`
      self$`studyTypeName` <- StudyDTOObject$`studyTypeName`
      self$`trialDbId` <- StudyDTOObject$`trialDbId`
      self$`trialName` <- StudyDTOObject$`trialName`
    }
  )
)
