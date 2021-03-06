\name{plotVariationFrequency}

\alias{plotVariationFrequency}
\alias{plotVariationFrequency,character,numeric-method}

\title{Create an AVA style variation frequency plot}

\description{
This method creates a plot similar to the variation frequency plot in
Roche's GS Amplicon Variant Analyzer. The plot shows the reference
sequence along the x-axis and indicates variants as bars at the
appropriate positions. The height of the bars corresponds to the
percentage of reads carrying the variant. A second y-axis indicates the
absolute number of reads covering the variant.}

\usage{plotVariationFrequency(object, plotRange, ...)}

\arguments{
  \item{object}{A character pointing to an Amplicon Variant Analyser Global Alignmnet export file.}
  \item{plotRange}{A two dimensional numeric vector giving the start and end base of the reference sequence that should be plotted.}
  \item{\dots}{Arguments passed to other plotting methods. Especially, argument \code{col}: Optional character vector of length 7 specifying the bars' colors indicating 
  different base substitutions or deletions. See details. And argument \code{sequenceCex}: Optional numeric value specifying the size of the reference sequence's bases.}
}

\details{
The text file used as imput must have the format generated by the AVA
export function. Such a file can be generated using the export button in
the Global Alignment view of the AVA software.
The \code{col} argument specifies the colours used for different bases
and deletions. The following listing gives the meaning of the i-th position
of the col vector (default values in braces): 
\enumerate{
  \item A (green)
  \item C (blue)
  \item G (black)
  \item T (red)
  \item N (purple)
  \item deletion (gray)
}
}

\examples{
\dontrun{
file = system.file("extdata", "AVAVarFreqExport", "AVAVarFreqExport.xls", package="R453Plus1Toolbox")
plotVariationFrequency(file, plotRange=c(50, 150))}
}

\author{Hans-Ulrich Klein}

\keyword{Variation Frequency Coverage}
