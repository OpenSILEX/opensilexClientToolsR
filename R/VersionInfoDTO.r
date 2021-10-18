# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VersionInfoDTO Class
#'
#' @field title 
#' @field version 
#' @field description 
#' @field contact 
#' @field license 
#' @field modules_version 
#' @field external_docs 
#' @field api_docs 
#' @field git_commit 
#' @field github_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VersionInfoDTO <- R6::R6Class(
  'VersionInfoDTO',
  public = list(
    `title` = NULL,
    `version` = NULL,
    `description` = NULL,
    `contact` = NULL,
    `license` = NULL,
    `modules_version` = NULL,
    `external_docs` = NULL,
    `api_docs` = NULL,
    `git_commit` = NULL,
    `github_page` = NULL,
    initialize = function(`title`, `version`, `description`, `contact`, `license`, `modules_version`, `external_docs`, `api_docs`, `git_commit`, `github_page`){
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
      }
      if (!missing(`license`)) {
        stopifnot(R6::is.R6(`license`))
        self$`license` <- `license`
      }
      if (!missing(`modules_version`)) {
        stopifnot(is.list(`modules_version`), length(`modules_version`) != 0)
        lapply(`modules_version`, function(x) stopifnot(R6::is.R6(x)))
        self$`modules_version` <- `modules_version`
      }
      if (!missing(`external_docs`)) {
        stopifnot(R6::is.R6(`external_docs`))
        self$`external_docs` <- `external_docs`
      }
      if (!missing(`api_docs`)) {
        stopifnot(R6::is.R6(`api_docs`))
        self$`api_docs` <- `api_docs`
      }
      if (!missing(`git_commit`)) {
        stopifnot(R6::is.R6(`git_commit`))
        self$`git_commit` <- `git_commit`
      }
      if (!missing(`github_page`)) {
        stopifnot(is.character(`github_page`), length(`github_page`) == 1)
        self$`github_page` <- `github_page`
      }
    },
    toJSON = function() {
      VersionInfoDTOObject <- list()
      if (!is.null(self$`title`)) {
        VersionInfoDTOObject[['title']] <- self$`title`
      }
      if (!is.null(self$`version`)) {
        VersionInfoDTOObject[['version']] <- self$`version`
      }
      if (!is.null(self$`description`)) {
        VersionInfoDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`contact`)) {
        VersionInfoDTOObject[['contact']] <- self$`contact`$toJSON()
      }
      if (!is.null(self$`license`)) {
        VersionInfoDTOObject[['license']] <- self$`license`$toJSON()
      }
      if (!is.null(self$`modules_version`)) {
        VersionInfoDTOObject[['modules_version']] <- lapply(self$`modules_version`, function(x) x$toJSON())
      }
      if (!is.null(self$`external_docs`)) {
        VersionInfoDTOObject[['external_docs']] <- self$`external_docs`$toJSON()
      }
      if (!is.null(self$`api_docs`)) {
        VersionInfoDTOObject[['api_docs']] <- self$`api_docs`$toJSON()
      }
      if (!is.null(self$`git_commit`)) {
        VersionInfoDTOObject[['git_commit']] <- self$`git_commit`$toJSON()
      }
      if (!is.null(self$`github_page`)) {
        VersionInfoDTOObject[['github_page']] <- self$`github_page`
      }

      VersionInfoDTOObject
    },
    fromJSON = function(VersionInfoDTOJson) {
      VersionInfoDTOObject <- jsonlite::fromJSON(VersionInfoDTOJson)
      if (!is.null(VersionInfoDTOObject$`title`)) {
        self$`title` <- VersionInfoDTOObject$`title`
      }
      if (!is.null(VersionInfoDTOObject$`version`)) {
        self$`version` <- VersionInfoDTOObject$`version`
      }
      if (!is.null(VersionInfoDTOObject$`description`)) {
        self$`description` <- VersionInfoDTOObject$`description`
      }
      if (!is.null(VersionInfoDTOObject$`contact`)) {
        contactObject <- ApiContactInfoDTO$new()
        contactObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$contact, auto_unbox = TRUE, null = "null"))
        self$`contact` <- contactObject
      }
      if (!is.null(VersionInfoDTOObject$`license`)) {
        licenseObject <- ApiLicenseInfoDTO$new()
        licenseObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$license, auto_unbox = TRUE, null = "null"))
        self$`license` <- licenseObject
      }
      if (!is.null(VersionInfoDTOObject$`modules_version`)) {
        self$`modules_version` <- lapply(VersionInfoDTOObject$`modules_version`, function(x) {
          modules_versionObject <- ApiModulesInfo$new()
          modules_versionObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          modules_versionObject
        })
      }
      if (!is.null(VersionInfoDTOObject$`external_docs`)) {
        external_docsObject <- ApiExternalDocsDTO$new()
        external_docsObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$external_docs, auto_unbox = TRUE, null = "null"))
        self$`external_docs` <- external_docsObject
      }
      if (!is.null(VersionInfoDTOObject$`api_docs`)) {
        api_docsObject <- ApiExternalDocsDTO$new()
        api_docsObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$api_docs, auto_unbox = TRUE, null = "null"))
        self$`api_docs` <- api_docsObject
      }
      if (!is.null(VersionInfoDTOObject$`git_commit`)) {
        git_commitObject <- ApiGitCommitDTO$new()
        git_commitObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$git_commit, auto_unbox = TRUE, null = "null"))
        self$`git_commit` <- git_commitObject
      }
      if (!is.null(VersionInfoDTOObject$`github_page`)) {
        self$`github_page` <- VersionInfoDTOObject$`github_page`
      }
    },
    fromJSONObject = function(VersionInfoDTOObject) {
      if (!is.null(VersionInfoDTOObject$`title`)) {
        self$`title` <- VersionInfoDTOObject$`title`
      }
      if (!is.null(VersionInfoDTOObject$`version`)) {
        self$`version` <- VersionInfoDTOObject$`version`
      }
      if (!is.null(VersionInfoDTOObject$`description`)) {
        self$`description` <- VersionInfoDTOObject$`description`
      }
      if (!is.null(VersionInfoDTOObject$`contact`)) {
        contactObject <- ApiContactInfoDTO$new()
        contactObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$contact, auto_unbox = TRUE, null = "null"))
        self$`contact` <- contactObject
      }
      if (!is.null(VersionInfoDTOObject$`license`)) {
        licenseObject <- ApiLicenseInfoDTO$new()
        licenseObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$license, auto_unbox = TRUE, null = "null"))
        self$`license` <- licenseObject
      }
      if (!is.null(VersionInfoDTOObject$`modules_version`)) {
        self$`modules_version` <- lapply(VersionInfoDTOObject$`modules_version`, function(x) {
          modules_versionObject <- ApiModulesInfo$new()
          modules_versionObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE, null = "null"))
          modules_versionObject
        })
      }
      if (!is.null(VersionInfoDTOObject$`external_docs`)) {
        external_docsObject <- ApiExternalDocsDTO$new()
        external_docsObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$external_docs, auto_unbox = TRUE, null = "null"))
        self$`external_docs` <- external_docsObject
      }
      if (!is.null(VersionInfoDTOObject$`api_docs`)) {
        api_docsObject <- ApiExternalDocsDTO$new()
        api_docsObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$api_docs, auto_unbox = TRUE, null = "null"))
        self$`api_docs` <- api_docsObject
      }
      if (!is.null(VersionInfoDTOObject$`git_commit`)) {
        git_commitObject <- ApiGitCommitDTO$new()
        git_commitObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$git_commit, auto_unbox = TRUE, null = "null"))
        self$`git_commit` <- git_commitObject
      }
      if (!is.null(VersionInfoDTOObject$`github_page`)) {
        self$`github_page` <- VersionInfoDTOObject$`github_page`
      }
    },
    toJSONString = function() {
      modules_versionList = paste(lapply(self$`modules_version`, function(x) x$toJSONString()),collapse = ",")
       sprintf(
        '{
           "title": %s,
           "version": %s,
           "description": %s,
           "contact": %s,
           "license": %s,
           "modules_version": [%s],
           "external_docs": %s,
           "api_docs": %s,
           "git_commit": %s,
           "github_page": %s
        }',
        ifelse(is.null(self$`title`), "null",jsonlite::toJSON(self$`title`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`version`), "null",jsonlite::toJSON(self$`version`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        jsonlite::toJSON(self$`contact`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`license`$toJSON(),auto_unbox=TRUE, null = "null"),
        modules_versionList,
        jsonlite::toJSON(self$`external_docs`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`api_docs`$toJSON(),auto_unbox=TRUE, null = "null"),
        jsonlite::toJSON(self$`git_commit`$toJSON(),auto_unbox=TRUE, null = "null"),
        ifelse(is.null(self$`github_page`), "null",jsonlite::toJSON(self$`github_page`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(VersionInfoDTOJson) {
      VersionInfoDTOObject <- jsonlite::fromJSON(VersionInfoDTOJson)
      self$`title` <- VersionInfoDTOObject$`title`
      self$`version` <- VersionInfoDTOObject$`version`
      self$`description` <- VersionInfoDTOObject$`description`
      ApiContactInfoDTOObject <- ApiContactInfoDTO$new()
      self$`contact` <- ApiContactInfoDTOObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$contact, auto_unbox = TRUE))
      ApiLicenseInfoDTOObject <- ApiLicenseInfoDTO$new()
      self$`license` <- ApiLicenseInfoDTOObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$license, auto_unbox = TRUE))
      self$`modules_version` <- lapply(VersionInfoDTOObject$`modules_version`, function(x) ApiModulesInfo$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      ApiExternalDocsDTOObject <- ApiExternalDocsDTO$new()
      self$`external_docs` <- ApiExternalDocsDTOObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$external_docs, auto_unbox = TRUE))
      ApiExternalDocsDTOObject <- ApiExternalDocsDTO$new()
      self$`api_docs` <- ApiExternalDocsDTOObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$api_docs, auto_unbox = TRUE))
      ApiGitCommitDTOObject <- ApiGitCommitDTO$new()
      self$`git_commit` <- ApiGitCommitDTOObject$fromJSON(jsonlite::toJSON(VersionInfoDTOObject$git_commit, auto_unbox = TRUE))
      self$`github_page` <- VersionInfoDTOObject$`github_page`
    }
  )
)
