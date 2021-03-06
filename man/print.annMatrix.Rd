% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.R
\name{print.annmatrix}
\alias{print.annmatrix}
\title{Print annmatrix object.}
\usage{
\method{print}{annmatrix}(x, nrow = 5, ncol = 5, ...)
}
\arguments{
\item{x}{a matrix}

\item{nrow}{number of rows to display (default is 5)}

\item{ncol}{number of columns to display (default is 5)}

\item{...}{further arguments passed to or from methods}
}
\value{
invisibly returns annmatrix object.
}
\description{
Functions to print an annmatrix object
}
\details{
annmatrix objects are printed in a shortened form (5 rows and 5 columns by default).
In addition the function displays information about available meta-data for rows and columns.
}
\examples{
# construct the annmatrix object
coldata <- data.frame(group=c(rep("case", 20), rep("control", 20)),
                      gender=sample(c("M", "F"), 40, replace=TRUE)
                      )
rowdata <- data.frame(chr=sample(c("chr1", "chr2"), 100, replace=TRUE),
                         pos=runif(100, 0, 1000000)
                         )
annMat <- annmatrix(matrix(rnorm(100*40), 100, 40), rowdata, coldata)

print(annMat)
print(annMat, nrow=2, ncol=2)

}
\author{
Karolis Koncevičius
}
