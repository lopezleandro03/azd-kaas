# Input variables for the module

variable "location" {
  description = "The supported Azure location where the resource deployed"
  type        = string
}

variable "environment_name" {
  description = "The name of the azd environment to be deployed"
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster to be deployed"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group to be deployed"
  type        = string
}