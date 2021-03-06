% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/movement.R
\name{as.location_dataframe}
\alias{as.location_dataframe}
\alias{as.location_dataframe.SpatialPolygonsDataFrame}
\alias{as.location_dataframe.data.frame}
\title{Conversion to location_dataframe}
\usage{
as.location_dataframe(input, ...)

\method{as.location_dataframe}{data.frame}(input, ...)

\method{as.location_dataframe}{SpatialPolygonsDataFrame}(input,
  populationraster, ...)
}
\arguments{
\item{input}{object to convert to a \code{location_dataframe} object.
Either a data.frame with columns \code{location} (character), \code{populations} (numeric) and coordinate
columns \code{x} (numeric) and \code{y} (numeric) or a \code{SpatialPolygonsDataFrame} object}

\item{populationraster}{a \code{RasterLayer} object with each the value of
each cell giving the associated population density.}

\item{\dots}{further arguments passed to or from other methods.}
}
\value{
A \code{location_dataframe} objects which is a \code{data.frame} containing location data with
columns \code{location} (character), \code{population} (numeric), \code{x} (numeric) and \code{y} (numeric).
}
\description{
Convert objects to \code{location_dataframe} objects
}

