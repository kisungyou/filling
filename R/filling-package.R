#' Matrix Completion, Imputation, and Inpainting Methods
#'
#' Filling in the missing entries of a partially observed data is one of fundamental problems
#' in various disciplines of mathematical science. For many cases, data at our interests
#' have canonical form of matrix in that the problem is posed upon a matrix with missing values
#' to fill in the entries under preset assumptions and models.
#' We provide a collection of methods from multiple disciplines under Matrix Completion, Imputation, and Inpainting.
#'
#'
#' @docType package
#' @name filling-package
#' @import CVXR
#' @import Rdpack
#' @import nabor
#' @import RSpectra
#' @importFrom ROptSpace OptSpace
#' @importFrom Rcpp evalCpp
#' @importFrom stats median rbinom rnorm lm
#' @useDynLib filling
NULL
