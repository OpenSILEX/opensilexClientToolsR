# OpenSilex API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: INSTANCE-SNAPSHOT
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProjectCreationDTO Class
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
ProjectCreationDTO <- R6::R6Class(
  'ProjectCreationDTO',
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
      ProjectCreationDTOObject <- list()
      if (!is.null(self$`uri`)) {
        ProjectCreationDTOObject[['uri']] <- self$`uri`
      }
      if (!is.null(self$`name`)) {
        ProjectCreationDTOObject[['name']] <- self$`name`
      }
      if (!is.null(self$`shortname`)) {
        ProjectCreationDTOObject[['shortname']] <- self$`shortname`
      }
      if (!is.null(self$`start_date`)) {
        ProjectCreationDTOObject[['start_date']] <- self$`start_date`
      }
      if (!is.null(self$`end_date`)) {
        ProjectCreationDTOObject[['end_date']] <- self$`end_date`
      }
      if (!is.null(self$`description`)) {
        ProjectCreationDTOObject[['description']] <- self$`description`
      }
      if (!is.null(self$`objective`)) {
        ProjectCreationDTOObject[['objective']] <- self$`objective`
      }
      if (!is.null(self$`financial_funding`)) {
        ProjectCreationDTOObject[['financial_funding']] <- self$`financial_funding`
      }
      if (!is.null(self$`website`)) {
        ProjectCreationDTOObject[['website']] <- self$`website`
      }
      if (!is.null(self$`related_projects`)) {
        ProjectCreationDTOObject[['related_projects']] <- self$`related_projects`
      }
      if (!is.null(self$`coordinators`)) {
        ProjectCreationDTOObject[['coordinators']] <- self$`coordinators`
      }
      if (!is.null(self$`scientific_contacts`)) {
        ProjectCreationDTOObject[['scientific_contacts']] <- self$`scientific_contacts`
      }
      if (!is.null(self$`administrative_contacts`)) {
        ProjectCreationDTOObject[['administrative_contacts']] <- self$`administrative_contacts`
      }
      if (!is.null(self$`experiments`)) {
        ProjectCreationDTOObject[['experiments']] <- self$`experiments`
      }

      ProjectCreationDTOObject
    },
    fromJSON = function(ProjectCreationDTOJson) {
      ProjectCreationDTOObject <- jsonlite::fromJSON(ProjectCreationDTOJson)
      if (!is.null(ProjectCreationDTOObject$`uri`)) {
        self$`uri` <- ProjectCreationDTOObject$`uri`
      }
      if (!is.null(ProjectCreationDTOObject$`name`)) {
        self$`name` <- ProjectCreationDTOObject$`name`
      }
      if (!is.null(ProjectCreationDTOObject$`shortname`)) {
        self$`shortname` <- ProjectCreationDTOObject$`shortname`
      }
      if (!is.null(ProjectCreationDTOObject$`start_date`)) {
        self$`start_date` <- ProjectCreationDTOObject$`start_date`
      }
      if (!is.null(ProjectCreationDTOObject$`end_date`)) {
        self$`end_date` <- ProjectCreationDTOObject$`end_date`
      }
      if (!is.null(ProjectCreationDTOObject$`description`)) {
        self$`description` <- ProjectCreationDTOObject$`description`
      }
      if (!is.null(ProjectCreationDTOObject$`objective`)) {
        self$`objective` <- ProjectCreationDTOObject$`objective`
      }
      if (!is.null(ProjectCreationDTOObject$`financial_funding`)) {
        self$`financial_funding` <- ProjectCreationDTOObject$`financial_funding`
      }
      if (!is.null(ProjectCreationDTOObject$`website`)) {
        self$`website` <- ProjectCreationDTOObject$`website`
      }
      if (!is.null(ProjectCreationDTOObject$`related_projects`)) {
        self$`related_projects` <- ProjectCreationDTOObject$`related_projects`
      }
      if (!is.null(ProjectCreationDTOObject$`coordinators`)) {
        self$`coordinators` <- ProjectCreationDTOObject$`coordinators`
      }
      if (!is.null(ProjectCreationDTOObject$`scientific_contacts`)) {
        self$`scientific_contacts` <- ProjectCreationDTOObject$`scientific_contacts`
      }
      if (!is.null(ProjectCreationDTOObject$`administrative_contacts`)) {
        self$`administrative_contacts` <- ProjectCreationDTOObject$`administrative_contacts`
      }
      if (!is.null(ProjectCreationDTOObject$`experiments`)) {
        self$`experiments` <- ProjectCreationDTOObject$`experiments`
      }
    },
    fromJSONObject = function(ProjectCreationDTOObject) {
      if (!is.null(ProjectCreationDTOObject$`uri`)) {
        self$`uri` <- ProjectCreationDTOObject$`uri`
      }
      if (!is.null(ProjectCreationDTOObject$`name`)) {
        self$`name` <- ProjectCreationDTOObject$`name`
      }
      if (!is.null(ProjectCreationDTOObject$`shortname`)) {
        self$`shortname` <- ProjectCreationDTOObject$`shortname`
      }
      if (!is.null(ProjectCreationDTOObject$`start_date`)) {
        self$`start_date` <- ProjectCreationDTOObject$`start_date`
      }
      if (!is.null(ProjectCreationDTOObject$`end_date`)) {
        self$`end_date` <- ProjectCreationDTOObject$`end_date`
      }
      if (!is.null(ProjectCreationDTOObject$`description`)) {
        self$`description` <- ProjectCreationDTOObject$`description`
      }
      if (!is.null(ProjectCreationDTOObject$`objective`)) {
        self$`objective` <- ProjectCreationDTOObject$`objective`
      }
      if (!is.null(ProjectCreationDTOObject$`financial_funding`)) {
        self$`financial_funding` <- ProjectCreationDTOObject$`financial_funding`
      }
      if (!is.null(ProjectCreationDTOObject$`website`)) {
        self$`website` <- ProjectCreationDTOObject$`website`
      }
      if (!is.null(ProjectCreationDTOObject$`related_projects`)) {
        self$`related_projects` <- ProjectCreationDTOObject$`related_projects`
      }
      if (!is.null(ProjectCreationDTOObject$`coordinators`)) {
        self$`coordinators` <- ProjectCreationDTOObject$`coordinators`
      }
      if (!is.null(ProjectCreationDTOObject$`scientific_contacts`)) {
        self$`scientific_contacts` <- ProjectCreationDTOObject$`scientific_contacts`
      }
      if (!is.null(ProjectCreationDTOObject$`administrative_contacts`)) {
        self$`administrative_contacts` <- ProjectCreationDTOObject$`administrative_contacts`
      }
      if (!is.null(ProjectCreationDTOObject$`experiments`)) {
        self$`experiments` <- ProjectCreationDTOObject$`experiments`
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
    fromJSONString = function(ProjectCreationDTOJson) {
      ProjectCreationDTOObject <- jsonlite::fromJSON(ProjectCreationDTOJson)
      self$`uri` <- ProjectCreationDTOObject$`uri`
      self$`name` <- ProjectCreationDTOObject$`name`
      self$`shortname` <- ProjectCreationDTOObject$`shortname`
      self$`start_date` <- ProjectCreationDTOObject$`start_date`
      self$`end_date` <- ProjectCreationDTOObject$`end_date`
      self$`description` <- ProjectCreationDTOObject$`description`
      self$`objective` <- ProjectCreationDTOObject$`objective`
      self$`financial_funding` <- ProjectCreationDTOObject$`financial_funding`
      self$`website` <- ProjectCreationDTOObject$`website`
      self$`related_projects` <- ProjectCreationDTOObject$`related_projects`
      self$`coordinators` <- ProjectCreationDTOObject$`coordinators`
      self$`scientific_contacts` <- ProjectCreationDTOObject$`scientific_contacts`
      self$`administrative_contacts` <- ProjectCreationDTOObject$`administrative_contacts`
      self$`experiments` <- ProjectCreationDTOObject$`experiments`
    }
  )
)
