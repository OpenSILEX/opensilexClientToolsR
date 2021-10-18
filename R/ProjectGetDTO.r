# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProjectGetDTO Class
#'
#' @field uri 
#' @field name 
#' @field shortname 
#' @field start_date 
#' @field end_date 
#' @field description 
#' @field objective 
#' @field financial_funding 
#' @field website 
#' @field related_projects 
#' @field coordinators 
#' @field scientific_contacts 
#' @field administrative_contacts 
#' @field experiments 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectGetDTO <- R6::R6Class(
  'ProjectGetDTO',
  public = list(
    `uri` = NULL,
    `name` = NULL,
    `shortname` = NULL,
    `start_date` = NULL,
    `end_date` = NULL,
    `description` = NULL,
    `objective` = NULL,
    `financial_funding` = NULL,
    `website` = NULL,
    `related_projects` = NULL,
    `coordinators` = NULL,
    `scientific_contacts` = NULL,
    `administrative_contacts` = NULL,
    `experiments` = NULL,
    initialize = function(`uri`, `name`, `shortname`, `start_date`, `end_date`, `description`, `objective`, `financial_funding`, `website`, `related_projects`, `coordinators`, `scientific_contacts`, `administrative_contacts`, `experiments`){
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`shortname`)) {
        stopifnot(is.character(`shortname`), length(`shortname`) == 1)
        self$`shortname` <- `shortname`
      }
      if (!missing(`start_date`)) {
        stopifnot(is.character(`start_date`), length(`start_date`) == 1)
        self$`start_date` <- `start_date`
      }
      if (!missing(`end_date`)) {
        stopifnot(is.character(`end_date`), length(`end_date`) == 1)
        self$`end_date` <- `end_date`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`objective`)) {
        stopifnot(is.character(`objective`), length(`objective`) == 1)
        self$`objective` <- `objective`
      }
      if (!missing(`financial_funding`)) {
        stopifnot(is.character(`financial_funding`), length(`financial_funding`) == 1)
        self$`financial_funding` <- `financial_funding`
      }
      if (!missing(`website`)) {
        stopifnot(is.character(`website`), length(`website`) == 1)
        self$`website` <- `website`
      }
      if (!missing(`related_projects`)) {
        stopifnot(is.list(`related_projects`), length(`related_projects`) != 0)
        lapply(`related_projects`, function(x) stopifnot(is.character(x)))
        self$`related_projects` <- `related_projects`
      }
      if (!missing(`coordinators`)) {
        stopifnot(is.list(`coordinators`), length(`coordinators`) != 0)
        lapply(`coordinators`, function(x) stopifnot(is.character(x)))
        self$`coordinators` <- `coordinators`
      }
      if (!missing(`scientific_contacts`)) {
        stopifnot(is.list(`scientific_contacts`), length(`scientific_contacts`) != 0)
        lapply(`scientific_contacts`, function(x) stopifnot(is.character(x)))
        self$`scientific_contacts` <- `scientific_contacts`
      }
      if (!missing(`administrative_contacts`)) {
        stopifnot(is.list(`administrative_contacts`), length(`administrative_contacts`) != 0)
        lapply(`administrative_contacts`, function(x) stopifnot(is.character(x)))
        self$`administrative_contacts` <- `administrative_contacts`
      }
      if (!missing(`experiments`)) {
        stopifnot(is.list(`experiments`), length(`experiments`) != 0)
        lapply(`experiments`, function(x) stopifnot(is.character(x)))
        self$`experiments` <- `experiments`
      }
    },
    toJSON = function() {
      ProjectGetDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ProjectGetDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ProjectGetDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`shortname`)) {
        ProjectGetDTOObject[['shortname']] <- self$`shortname`
      }
      if (!is.null(self$`start_date`)) {
        ProjectGetDTOObject[['start_date']] <- self$`start_date`
      }
      if (!is.null(self$`end_date`)) {
        ProjectGetDTOObject[['end_date']] <- self$`end_date`
      }
      if (!is.null(self$`description`)) {
        ProjectGetDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`objective`)) {
        ProjectGetDTOObject[['objective']] <- self$`objective`
      }
      if (!is.null(self$`financial_funding`)) {
        ProjectGetDTOObject[['financial_funding']] <- self$`financial_funding`
      }
      if (!is.null(self$`website`)) {
        ProjectGetDTOObject[['website']] <- self$`website`
      }
      if (!is.null(self$`related_projects`)) {
        ProjectGetDTOObject[['related_projects']] <- self$`related_projects`
      }
      if (!is.null(self$`coordinators`)) {
        ProjectGetDTOObject[['coordinators']] <- self$`coordinators`
      }
      if (!is.null(self$`scientific_contacts`)) {
        ProjectGetDTOObject[['scientific_contacts']] <- self$`scientific_contacts`
      }
      if (!is.null(self$`administrative_contacts`)) {
        ProjectGetDTOObject[['administrative_contacts']] <- self$`administrative_contacts`
      }
      if (!is.null(self$`experiments`)) {
        ProjectGetDTOObject[['experiments']] <- self$`experiments`
      }

      ProjectGetDTOObject
    },
    fromJSON = function(ProjectGetDTOJson) {
      ProjectGetDTOObject <- jsonlite::fromJSON(ProjectGetDTOJson)
      if (!is.null(ProjectGetDTOObject$`uri`)) {
        self$`uri` <- ProjectGetDTOObject$`uri`
      }
      if (!is.null(ProjectGetDTOObject$`name`)) {
        self$`name` <- ProjectGetDTOObject$`name`
      }
      if (!is.null(ProjectGetDTOObject$`shortname`)) {
        self$`shortname` <- ProjectGetDTOObject$`shortname`
      }
      if (!is.null(ProjectGetDTOObject$`start_date`)) {
        self$`start_date` <- ProjectGetDTOObject$`start_date`
      }
      if (!is.null(ProjectGetDTOObject$`end_date`)) {
        self$`end_date` <- ProjectGetDTOObject$`end_date`
      }
      if (!is.null(ProjectGetDTOObject$`description`)) {
        self$`description` <- ProjectGetDTOObject$`description`
      }
      if (!is.null(ProjectGetDTOObject$`objective`)) {
        self$`objective` <- ProjectGetDTOObject$`objective`
      }
      if (!is.null(ProjectGetDTOObject$`financial_funding`)) {
        self$`financial_funding` <- ProjectGetDTOObject$`financial_funding`
      }
      if (!is.null(ProjectGetDTOObject$`website`)) {
        self$`website` <- ProjectGetDTOObject$`website`
      }
      if (!is.null(ProjectGetDTOObject$`related_projects`)) {
        self$`related_projects` <- ProjectGetDTOObject$`related_projects`
      }
      if (!is.null(ProjectGetDTOObject$`coordinators`)) {
        self$`coordinators` <- ProjectGetDTOObject$`coordinators`
      }
      if (!is.null(ProjectGetDTOObject$`scientific_contacts`)) {
        self$`scientific_contacts` <- ProjectGetDTOObject$`scientific_contacts`
      }
      if (!is.null(ProjectGetDTOObject$`administrative_contacts`)) {
        self$`administrative_contacts` <- ProjectGetDTOObject$`administrative_contacts`
      }
      if (!is.null(ProjectGetDTOObject$`experiments`)) {
        self$`experiments` <- ProjectGetDTOObject$`experiments`
      }
    },
    fromJSONObject = function(ProjectGetDTOObject) {
      if (!is.null(ProjectGetDTOObject$`uri`)) {
        self$`uri` <- ProjectGetDTOObject$`uri`
      }
      if (!is.null(ProjectGetDTOObject$`name`)) {
        self$`name` <- ProjectGetDTOObject$`name`
      }
      if (!is.null(ProjectGetDTOObject$`shortname`)) {
        self$`shortname` <- ProjectGetDTOObject$`shortname`
      }
      if (!is.null(ProjectGetDTOObject$`start_date`)) {
        self$`start_date` <- ProjectGetDTOObject$`start_date`
      }
      if (!is.null(ProjectGetDTOObject$`end_date`)) {
        self$`end_date` <- ProjectGetDTOObject$`end_date`
      }
      if (!is.null(ProjectGetDTOObject$`description`)) {
        self$`description` <- ProjectGetDTOObject$`description`
      }
      if (!is.null(ProjectGetDTOObject$`objective`)) {
        self$`objective` <- ProjectGetDTOObject$`objective`
      }
      if (!is.null(ProjectGetDTOObject$`financial_funding`)) {
        self$`financial_funding` <- ProjectGetDTOObject$`financial_funding`
      }
      if (!is.null(ProjectGetDTOObject$`website`)) {
        self$`website` <- ProjectGetDTOObject$`website`
      }
      if (!is.null(ProjectGetDTOObject$`related_projects`)) {
        self$`related_projects` <- ProjectGetDTOObject$`related_projects`
      }
      if (!is.null(ProjectGetDTOObject$`coordinators`)) {
        self$`coordinators` <- ProjectGetDTOObject$`coordinators`
      }
      if (!is.null(ProjectGetDTOObject$`scientific_contacts`)) {
        self$`scientific_contacts` <- ProjectGetDTOObject$`scientific_contacts`
      }
      if (!is.null(ProjectGetDTOObject$`administrative_contacts`)) {
        self$`administrative_contacts` <- ProjectGetDTOObject$`administrative_contacts`
      }
      if (!is.null(ProjectGetDTOObject$`experiments`)) {
        self$`experiments` <- ProjectGetDTOObject$`experiments`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uri": %s,
           "name": %s,
           "shortname": %s,
           "start_date": %s,
           "end_date": %s,
           "description": %s,
           "objective": %s,
           "financial_funding": %s,
           "website": %s,
           "related_projects": [%s],
           "coordinators": [%s],
           "scientific_contacts": [%s],
           "administrative_contacts": [%s],
           "experiments": [%s]
        }',
        ifelse(is.null(self$`uri`), "null",jsonlite::toJSON(self$`uri`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`name`), "null",jsonlite::toJSON(self$`name`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`shortname`), "null",jsonlite::toJSON(self$`shortname`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`start_date`), "null",jsonlite::toJSON(self$`start_date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`end_date`), "null",jsonlite::toJSON(self$`end_date`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`description`), "null",jsonlite::toJSON(self$`description`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`objective`), "null",jsonlite::toJSON(self$`objective`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`financial_funding`), "null",jsonlite::toJSON(self$`financial_funding`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`website`), "null",jsonlite::toJSON(self$`website`,auto_unbox=TRUE, null = "null")),
        ifelse(is.null(self$`related_projects`) || length(self$`related_projects`) == 0, "" ,lapply(self$`related_projects`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`coordinators`) || length(self$`coordinators`) == 0, "" ,lapply(self$`coordinators`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`scientific_contacts`) || length(self$`scientific_contacts`) == 0, "" ,lapply(self$`scientific_contacts`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`administrative_contacts`) || length(self$`administrative_contacts`) == 0, "" ,lapply(self$`administrative_contacts`, function(x) paste(paste0('"', x, '"'), sep=","))),
        ifelse(is.null(self$`experiments`) || length(self$`experiments`) == 0, "" ,lapply(self$`experiments`, function(x) paste(paste0('"', x, '"'), sep=",")))
      )
    },
    fromJSONString = function(ProjectGetDTOJson) {
      ProjectGetDTOObject <- jsonlite::fromJSON(ProjectGetDTOJson)
      self$`uri` <- ProjectGetDTOObject$`uri`
      self$`name` <- ProjectGetDTOObject$`name`
      self$`shortname` <- ProjectGetDTOObject$`shortname`
      self$`start_date` <- ProjectGetDTOObject$`start_date`
      self$`end_date` <- ProjectGetDTOObject$`end_date`
      self$`description` <- ProjectGetDTOObject$`description`
      self$`objective` <- ProjectGetDTOObject$`objective`
      self$`financial_funding` <- ProjectGetDTOObject$`financial_funding`
      self$`website` <- ProjectGetDTOObject$`website`
      self$`related_projects` <- ProjectGetDTOObject$`related_projects`
      self$`coordinators` <- ProjectGetDTOObject$`coordinators`
      self$`scientific_contacts` <- ProjectGetDTOObject$`scientific_contacts`
      self$`administrative_contacts` <- ProjectGetDTOObject$`administrative_contacts`
      self$`experiments` <- ProjectGetDTOObject$`experiments`
    }
  )
)
