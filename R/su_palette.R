#' SU palette
#'
#' Color palettes recreating the visual identity of SU
#' (https://www.su.se/medarbetare/kommunikation/grafisk-manual)
#'
#' (code based on https://github.com/jrcalabrese/joycon)
#'
#' Options: \code{su_basic}, \code{su_expanded},
#' \code{su_dark}, \code{su_olive}, \code{su_sky},
#' \code{su_fire}, \code{su_water}
#'
#' @export
su_palettes <- list(
  su_basic = c("#002F5F", "#A3A86B", "#ACDEE6", "#EB7125", "#9BB2CE"),
  su_expanded = c("#002F5F", "#94A5CF", "#A3A86B", "#D9DEA3", "#ACDEE6", "#C5F7FF", "#EB7125", "#FFC6B6", "#9BB2CE","#CAE1FD"),
  su_dark = c("#002F5F", "#697BA5", "#C0D1FC"),
  su_olive = c("#A3A86B", "#C7CC90", "#ECF1B6"),
  su_sky = c("#ACDEE6", "#BDEFF7", "#E4FBFF"),
  su_fire = c("#EB7125", "#FF9B4F", "#FFE3DC"),
  su_water = c("#9BB2CE", "#BAD1ED", "#CAE1FD"))
#'
#'#' SU palette
#'
#' Color palettes recreating the visual identity of SU
#' (https://www.su.se/medarbetare/kommunikation/grafisk-manual)
#'
#'@param name Name of palette, options: \code{su_basic}, \code{su_expanded},
#' \code{su_dark}, \code{su_olive}, \code{su_sky},
#' \code{su_fire}, \code{su_water}
#'
#'@param n Number of colors needed
#'
#'@param type Continuous or discrete
#'
#'@param expand Expand palette length (default is `FALSE`)
#'
#' @export
su_palette <- function(name, n, type = c("discrete", "continuous"), expand = FALSE) {
  type <- match.arg(type)
  pal <- su_palettes[[name]]

  if (is.null(pal))
    stop("Error! Try typing the palette name again.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (n > length(pal)) {
    if (expand) {
      pal <- ggsu::expand_palette(pal)
    }
    if (n > length(pal)) {
      stop("Error! Try a palette containing more colors.")
    }
  }
  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
