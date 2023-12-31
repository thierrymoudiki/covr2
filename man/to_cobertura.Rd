% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cobertura.R
\name{to_cobertura}
\alias{to_cobertura}
\title{Create a Cobertura XML file}
\usage{
to_cobertura(cov, filename = "cobertura.xml")
}
\arguments{
\item{cov}{the coverage object returned from \code{\link[=package_coverage]{package_coverage()}}}

\item{filename}{the name of the Cobertura XML file}
}
\description{
Create a
cobertura-compliant XML report following \href{https://github.com/cobertura/cobertura/blob/master/cobertura/src/site/htdocs/xml/coverage-04.dtd}{this DTD}.
Because there are \emph{two} DTDs called \verb{coverage-04.dtd} and some tools do not seem to
adhere to either of them, the parser you're using may balk at the file. Please see
\href{https://github.com/cobertura/cobertura/issues/425}{this github discussion} for
context. Where \code{covr} doesn't provide a coverage metric (branch coverage,
complexity), a zero is reported.
}
\details{
\emph{Note}: This functionality requires the xml2 package be installed.
}
