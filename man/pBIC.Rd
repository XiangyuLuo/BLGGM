% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pBIC.R
\name{pBIC}
\alias{pBIC}
\title{Modified Baysian information criterion}
\usage{
pBIC(BLGGM_result, scRNA_data_matr)
}
\arguments{
\item{BLGGM_result}{The result of function "BLGGM".}

\item{scRNA_data_matr}{The scRNA-seq data matrix, where rows represent genes and columns represent cells. Matrix values need to be normlaized single-cell expression data.}
}
\value{
pBIC returns the value of a modified Baysian information criterion.
}
\description{
The function pBIC calculates the value of a modified Baysian information criterion considering model sparsity, which can be used to find the optimal cell type number.
}
\examples{
library(BLGGM)

#import example data
data(example_data)

#gene number
nrow(scRNA_data_matr)

#cell number
ncol(scRNA_data_matr)

#cell type number
n_celltype <- dim(precision_matr)[3]

#run BLGGM
set.seed(20200201)
Result <- BLGGM(scRNA_data_matr, n_celltype, num_iterations = 10000, num_threads = 10)

#pBIC
pBIC(Result, scRNA_data_matr)

}
\references{

}
