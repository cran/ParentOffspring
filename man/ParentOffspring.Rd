\name{ParentOffspring}
\alias{ParentOffspring}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Conduct the Parent-Offspring Test Using Monomorphic SNP Markers
}
\description{
Compute the similarity to the parents for each offspring, and produce a plot
of similarity for all offspring. One can keep the offspring above some threshold
for the similarity for further studies.
}
\usage{
ParentOffspring(genoMat, plot = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{genoMat}{
matrix or data frame with n rows and m columns where the rows are for the SNP markers, and the first two columns are for the parents and the remaining columns are for the offspring. Each value is a string of length 2. For example, the following matrix 
\cr           "GG" "GG" "GG" "CG" "CG" "GG"
\cr           "AA" "AA" "AA" " - - " "AA" "AA"
\cr           "AA" "AA" "GG" "AA" "AA" "AA"
\cr           "GG" "AA" "GG" "GG" "GG" "GG"  
\cr Note the procedure will use only the rows with the monomorphic parents to compute the similarity, i.e., some rows such as the last one here will be ignored.}
  \item{plot}{
logical value for plotting the similarity graph. The default value is TRUE. 
}
}
\details{The procedure computes the similarity of each offspring to its parents utilizing the monomorphic markers between two parents. At each SNP marker locus for each offspring, allele calls are scored into 0, 1 or 2 based on the number of identical alleles from both parents. Then the similarity between this offspring and the parents is defined to be 
\deqn{S=(2a+b)/(2c)}
where a is the number of 2s, and b is number of 1s and c is the total number of 0s, 1s and 2s for all monomorphic markers between the parents. Missing values are allowed and denoted by " - - " in the input matrix genoMat, but will not be used to compute similarity. 
}
\value{
\item{similarity}{vector of similarity for each offspring}
}
\references{
Abdel-Haleem, H., Ji, P., Boerma, H. R. and Li, Z. (2013).R Software Program for Conducting Parent-Offspring Test using SNP Markers. To appear in Plant Genome.
}
\author{
 Pengsheng Ji <psji@uga.edu>, Hussein Abdel-Haleem, H. Roger Boerma and Zenglu Li
}


\examples{

# a very simple example

genotypeMatrix = matrix( 
    c("GG",  "GG",   "GG",  "CG",  "CG",  "GG",
      "AA",  "AA",   "AA",  "--",  "AA",  "AA", 
      "AA",  "AA",   "GG",  "AA",  "AA",  "AA", 
      "GG",  "AA",   "GG",  "GG",	 "GG",  "GG"),  
    byrow=TRUE, 
    nrow=4, 
    ncol=6) 
# Compute and plot the parent-offspring similarity for each offspring
ParentOffspring(genotypeMatrix)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{parent offspring test}
\keyword{monomorphic SNP markers}
 
