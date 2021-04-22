#' SU ggtheme
#'
#'@importFrom ggplot2 %+replace%
#'
#'@param base_size Default font size
#'
#'@param base_family Default font family
#'
#'@export
theme_su <- function(base_size = 14, base_family = "Verdana") {
  ggplot2::theme_classic(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      text = ggplot2::element_text(color = "#002F5F", family = "Verdana", size = base_size),
      axis.text = ggplot2::element_text(color = "#002F5F", size = base_size),
      axis.title = ggplot2::element_text(size = ggplot2::rel(1.5)),
      axis.title.x = ggplot2::element_text(size = ggplot2::rel(1), margin = ggplot2::margin(0.5, 0, 0, 0, unit = "cm")),
      axis.title.y = ggplot2::element_text(size = ggplot2::rel(1), margin = ggplot2::margin(0, 0.5, 0, 0, unit = "cm"), angle =90),
      plot.title = ggplot2::element_text(face = "bold", size = ggplot2::rel(1.67), hjust = 0, margin = ggplot2::margin(0, 0, 0.1, 0, unit = "cm")),
      plot.title.position = "plot",
      plot.subtitle = ggplot2::element_text(family= "Verdana", size = ggplot2::rel(1), hjust=.01, vjust=-.05, margin = ggplot2::margin(0, 0, 0.5, 0, unit = "cm")),
      plot.caption = ggplot2::element_text(size = ggplot2::rel(.8), margin = ggplot2::margin(.5, 0, 0, 0, unit = "cm"), hjust = 1),
      plot.background = ggplot2::element_rect(fill = "transparent", color = "transparent"),
      panel.background = ggplot2::element_rect(fill = "transparent", color = "transparent"),
      axis.line = ggplot2::element_line(color = "#002F5F", size = ggplot2::rel(1)),
      strip.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(size = ggplot2::rel(.9), face = "bold", margin = ggplot2::margin(.1, 0, .1, 0, unit = "cm"))
    )
}
