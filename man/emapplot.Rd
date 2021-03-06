% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/emapplot.R
\name{emapplot}
\alias{emapplot}
\alias{emapplot,enrichResult-method}
\alias{emapplot,gseaResult-method}
\alias{emapplot,compareClusterResult-method}
\alias{emapplot.enrichResult}
\alias{emapplot.compareClusterResult}
\title{emapplot}
\usage{
emapplot(x, showCategory = 30, color = "p.adjust", layout = "kk", ...)

\S4method{emapplot}{enrichResult}(x, showCategory = 30, color = "p.adjust", layout = "nicely", ...)

\S4method{emapplot}{gseaResult}(x, showCategory = 30, color = "p.adjust", layout = "nicely", ...)

\S4method{emapplot}{compareClusterResult}(x, showCategory = 30, color = "p.adjust", layout = "nicely", ...)

emapplot.enrichResult(
  x,
  showCategory = 30,
  color = "p.adjust",
  layout = "nicely",
  node_scale = NULL,
  line_scale = NULL,
  min_edge = 0.2,
  node_label_size = NULL,
  cex_label_category = 1,
  cex_category = NULL,
  cex_line = NULL
)

emapplot.compareClusterResult(
  x,
  showCategory = 30,
  color = "p.adjust",
  layout = "nicely",
  split = NULL,
  pie = "equal",
  legend_n = 5,
  cex_category = NULL,
  pie_scale = NULL,
  cex_line = 1,
  min_edge = 0.2,
  cex_label_category = 1,
  node_label_size = NULL
)
}
\arguments{
\item{x}{enrichment result.}

\item{showCategory}{number of enriched terms to display}

\item{color}{variable that used to color enriched terms, e.g. pvalue,
p.adjust or qvalue}

\item{layout}{layout of the map}

\item{...}{additional parameters}

\item{node_scale}{scale of node, this parameter has been changed to cex_category}

\item{line_scale}{scale of line width, this parameter has been changed to cex_line}

\item{min_edge}{minimum percentage of overlap genes to display the edge, should between 0 and 1, default value is 0.2}

\item{node_label_size}{size of node label, this parameter has been
changed to cex_label_category}

\item{cex_label_category}{scale of category node label size}

\item{cex_category}{number indicating the amount by which plotting category
nodes should be scaled relative to the default.}

\item{cex_line}{scale of line width}

\item{split}{separate result by 'category' variable}

\item{pie}{proportion of clusters in the pie chart, one of 'equal' (default) or 'Count'}

\item{legend_n}{number of circle in legend}

\item{pie_scale}{scale of pie chart or point, this parameter has been changed to "node_scale"}
}
\value{
ggplot object
}
\description{
Enrichment Map for enrichment result of
over-representation test or gene set enrichment analysis
}
\details{
This function visualizes gene sets as a network (i.e. enrichment map).
Mutually overlapping gene sets tend to cluster together, making it
easier for interpretation.
}
\examples{
library(DOSE)
data(geneList)
de <- names(geneList)[1:100]
x <- enrichDO(de)
x2 <- pairwise_termsim(x)
emapplot(x2)
}
\author{
Guangchuang Yu
}
