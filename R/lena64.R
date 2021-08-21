#' lena image at size of \eqn{(64 \times 64)}
#'
#' \emph{Lena} is probably one of the most well-known example in image processing and computer vision.
#'
#' @docType data
#' @usage data(lena64)
#' @format matrix of size \eqn{(64\times 64)}
#' @keywords datasets
#' @references Gonzalez, Rafael C. and Woods, Richard E. (2017) \emph{Digital Image Processing} (4th ed.). ISBN 0133356728.
#'
#' @source USC SIPI Image Database.
#'
#' @examples
#' data(lena64)
#' image(lena64, col=gray((0:100)/100), axes=FALSE, main="lena64")
"lena64"
