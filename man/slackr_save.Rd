% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slackr_save.R
\name{slackr_save}
\alias{slackr_save}
\title{Save R objects to an RData file on Slack}
\usage{
slackr_save(
  ...,
  channels = Sys.getenv("SLACK_CHANNEL"),
  file = "slackr",
  bot_user_oauth_token = Sys.getenv("SLACK_BOT_USER_OAUTH_TOKEN"),
  plot_text = ""
)
}
\arguments{
\item{...}{objects to store in the R data file}

\item{channels}{Slack channels to save to (optional)}

\item{file}{filename (without extension) to use}

\item{bot_user_oauth_token}{Slack bot user OAuth token}

\item{plot_text}{the plot text to send with the plot (defaults to "")}
}
\value{
\code{httr} response object from \code{POST} call
}
\description{
\code{slackr_save} enables you upload R objects (as an R data file)
to Slack and (optionally) post them to one or more channels
(if \code{channels} is not empty).
}
\examples{
\dontrun{
slackr_setup()
slackr_save(mtcars, channels = "#slackr", file = "mtcars")
}
}
\seealso{
\code{\link[=slackr_setup]{slackr_setup()}}, \code{\link[=slackr_dev]{slackr_dev()}}, \code{\link[=slackr_upload]{slackr_upload()}}
}