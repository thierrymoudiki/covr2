% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trace_tests.R
\name{update_current_test}
\alias{update_current_test}
\title{Update current test if unit test expression has progressed}
\usage{
update_current_test()
}
\description{
Updating a test logs some metadata regarding the current call stack, noteably
trying to capture information about the call stack prior to the covr::count
call being traced.
}
\details{
There are a couple patterns of behavior, which try to accommodate a variety
of testing suites:

\itemize{
\item \code{testthat}: During execution of \code{testthat}'s \verb{test_*} functions,
files are sourced and the working directory is temporarily changed to the
package \verb{/tests} directory. Knowing this, calls in the call stack which
are relative to this directory are extracted and recorded.
\item \code{RUnit}:
\item \code{custom}: Any other custom test suites may not have source kept with
their execution, in which case the entire test call stack is kept.
}

checks to see if the current call stack has the same
\code{srcref} (or expression, if no source is available) at the same frame prior
to entering into a package where \code{covr:::count} is called.
}
\keyword{internal}
