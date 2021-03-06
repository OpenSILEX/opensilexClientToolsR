# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 1.0.0-rc+2
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiGitCommitDTO Class
#'
#' @field commit_id 
#' @field commit_message 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiGitCommitDTO <- R6::R6Class(
  'ApiGitCommitDTO',
  public = list(
    `commit_id` = NULL,
    `commit_message` = NULL,
    initialize = function(`commit_id`, `commit_message`){
      if (!missing(`commit_id`)) {
        stopifnot(is.character(`commit_id`), length(`commit_id`) == 1)
        self$`commit_id` <- `commit_id`
      }
      if (!missing(`commit_message`)) {
        stopifnot(is.character(`commit_message`), length(`commit_message`) == 1)
        self$`commit_message` <- `commit_message`
      }
    },
    toJSON = function() {
      ApiGitCommitDTOObject <- list()
      if (!is.null(self$`commit_id`)) {
        ApiGitCommitDTOObject[['commit_id']] <- self$`commit_id`
      }
      if (!is.null(self$`commit_message`)) {
        ApiGitCommitDTOObject[['commit_message']] <- self$`commit_message`
      }

      ApiGitCommitDTOObject
    },
    fromJSON = function(ApiGitCommitDTOJson) {
      ApiGitCommitDTOObject <- jsonlite::fromJSON(ApiGitCommitDTOJson)
      if (!is.null(ApiGitCommitDTOObject$`commit_id`)) {
        self$`commit_id` <- ApiGitCommitDTOObject$`commit_id`
      }
      if (!is.null(ApiGitCommitDTOObject$`commit_message`)) {
        self$`commit_message` <- ApiGitCommitDTOObject$`commit_message`
      }
    },
    fromJSONObject = function(ApiGitCommitDTOObject) {
      if (!is.null(ApiGitCommitDTOObject$`commit_id`)) {
        self$`commit_id` <- ApiGitCommitDTOObject$`commit_id`
      }
      if (!is.null(ApiGitCommitDTOObject$`commit_message`)) {
        self$`commit_message` <- ApiGitCommitDTOObject$`commit_message`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "commit_id": %s,
           "commit_message": %s
        }',
        ifelse(is.null(self$`commit_id`), "null",jsonlite::toJSON(self$`commit_id`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`commit_message`), "null",jsonlite::toJSON(self$`commit_message`,auto_unbox=TRUE, null = "null"))
      )
    },
    fromJSONString = function(ApiGitCommitDTOJson) {
      ApiGitCommitDTOObject <- jsonlite::fromJSON(ApiGitCommitDTOJson)
      self$`commit_id` <- ApiGitCommitDTOObject$`commit_id`
      self$`commit_message` <- ApiGitCommitDTOObject$`commit_message`
    }
  )
)
