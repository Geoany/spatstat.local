\name{plot.locmincon}
\alias{plot.locmincon}
\alias{plot.loccit}
\title{
  Plot a Locally Fitted Cluster or Cox Point Process Model
}
\description{
  Plot an object of class \code{"locmincon"}
  representing a locally-fitted cluster or Cox point process model.
}
\usage{
\method{plot}{locmincon}(x, \dots,
               how = c("exact", "smoothed"),
               which = NULL, sigma = NULL, do.points = TRUE)

\method{plot}{loccit}(x, \dots,
               what = c("modelpar", "coefs", "lambda"),
               how = c("smoothed", "exact"), which = NULL,
               pre=NULL, post=NULL)
}
\arguments{
  \item{x}{
    The model to be plotted.
    A locally-fitted cluster or Cox point process model (object of class
    \code{"locmincon"} or \code{"loccit"}).
  }
  \item{\dots}{
    Arguments passed to \code{\link[spatstat]{plot.ppp}}
    or \code{\link[spatstat]{plot.im}} to control the plot.
  }
  \item{what}{
    Character string determining which quantities to display:
    \code{"modelpar"} for the cluster model parameters,
    \code{"coefs"} for the trend coefficients,
    or \code{"lambda"} for the fitted intensity.
  }
  \item{how}{
    Character string determining whether to display the
    fitted parameter values at the data points (\code{how="exact"})
    or the smoothed fitted parameters as pixel images (\code{how="smoothed"}).
  }
  \item{which}{
    Optional. Which component(s) of the vector-valued quantity to display.
    An index or index vector. Default is to plot all components.
  }
  \item{sigma}{
    Numeric. Smoothing bandwidth to be used if \code{how="smoothed"}.
  }
  \item{do.points}{
    Logical. Whether to display the original point data
    as well.
  }
  \item{pre,post}{
    Transformations to apply before and after smoothing.
  }
} 
\details{
  These are methods for the generic command \code{\link[graphics]{plot}}
  for the classes \code{"locmincon"} and \code{"loccit"}.

  The argument \code{which}, if present, specifies
  which fitted parameters are displayed. It may be any kind of
  index for a numeric vector.

  The quantities are computed at irregularly-placed points.
  If \code{how="exact"} the exact computed values
  will be displayed as circles centred at the locations where they
  were computed. If \code{how="smoothed"} these
  values will be kernel-smoothed using \code{\link{smooth.ppp}}
  and displayed as a pixel image.  
}
\value{
  \code{NULL}.
}
\references{
  Baddeley, A. (2016)
  Local composite likelihood for spatial point processes.
  Submitted for publication.

  Baddeley, A., Rubak, E. and Turner, R. (2015)
  \emph{Spatial Point Patterns: Methodology and Applications with R}.
  Chapman and Hall/CRC Press.
}
\author{
  \adrian.
}
\seealso{
  \code{\link{locmincon}}, 
  \code{\link{methods.locmincon}}
}
\examples{
   example(locmincon)
   plot(fit, how="exact")  
   plot(fit, how="smoothed")  
   example(loccit)
   plot(fit, how="exact")  
   plot(fit, how="smoothed")  
}
\keyword{spatial}
\keyword{models}
