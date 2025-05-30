% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batchread.R
\name{batch.read}
\alias{batch.read}
\title{import and rowbinds multiple scm output files to one data frame with information on informant's & group's nomination, centrality, school/stream}
\usage{
batch.read(path, save, file, ...)
}
\arguments{
\item{path}{path to folder that holds all to be imported scm output data frames. Data frames are .txt and named in the general pattern "scm_str#_sch#.txt" or "scm_sch#.txt" , where # is to be replaced by number of specific school & stream. The single to be imported .txt files hold the results from the peer nomination analysis conducted in external software. In case of sch#.txt (without stream), NA will be added to \code{str}.}

\item{save}{logical. If \code{TRUE}, returned data frame will be saved as .txt with ; separation}

\item{file}{required if \code{save == TRUE}. \code{file} has to be absolute path in "" where returned data set should be stored.}
}
\value{
data frame of all imported files containing variables:
\item{file}{name of input .txt-file}
\item{group}{ \emph{GROUP} or \code{isolates} in case of isolates}
\item{participant}{ \emph{name} }
\item{nominations}{participant's \emph{nominations} }
\item{centrality}{participant's \emph{centrality} }
\item{group_nominations}{group's \emph{NOMINATION} }
\item{group_centrality}{group's \emph{CENTRALITY} }
\item{n_memebers}{group's \emph{MEMBERS} or \emph{Number of isolates} in case of isolates}
\item{str}{stream from .txt-file name or \code{NA} in case of non stream}
\item{sch}{school from .txt-file name}
}
\description{
this function imports multiple scm output files, with information on informant's & group's nomination & centrality plus adds columns for school/stream information, then rowbinds data sets into one data frame
}
