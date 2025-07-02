\name{FetalBoneData}
\alias{FetalBoneData}
\title{FetalBoneData: A Package for Fetal Bone Measurements}
\description{
This package contains comprehensive datasets of fetal bone measurements from multiple sources. The data includes measurements from Fazekas and Kósa's classic work, new measurements from the University of Liverpool Fetal Collection, and data from recent studies by Grzonkowska et al.
}

\section{Datasets}{
The package contains the following datasets:
\itemize{
  \item \code{basocranial_bones}: Measurements of basocranial bones
  \item \code{extremity_dimensions}: Measurements of limb bones
  \item \code{facial_bones}: Measurements of facial bones
  \item \code{liverpool_bones}: Long bone measurements from Liverpool Collection
  \item \code{ribs}: Measurements of ribs
  \item \code{shoulder_pelvic}: Measurements of shoulder and pelvic girdle
  \item \code{small_bones}: Measurements of small bones
  \item \code{squamous_occipital}: Measurements of squamous part of occipital bone
  \item \code{squamous_temporal}: Measurements of squamous part of temporal bone
}
}

\section{Usage}{
To load the package:
\preformatted{
library(FetalBoneData)
}

To view a dataset:
\preformatted{
head(basocranial_bones)
data(liverpool_bones)
}

To get summary statistics:
\preformatted{
summary(facial_bones)
}
}

\section{Data Sources}{
The measurements come from:
\itemize{
  \item Fazekas, I.G. and Kósa, F. (1978) Forensic Fetal Osteology
  \item Original measurements from the University of Liverpool Fetal Collection
  \item Grzonkowska et al. (2021) PLoS ONE 16(2): e0247601
  \item Grzonkowska et al. (2023) PLoS ONE 18(12): e0295590
}
}

\section{Citation}{
To cite this package, please use:

O'Mahoney, T. and Vakil Kumar, J. (2025). FetalBoneData: Fetal Bone Measurements Dataset. R package version 0.1.0.
}

\author{
Thomas O'Mahoney \email{thomas.omahoney@aru.ac.uk}\cr
Jael Vakil Kumar
}

\keyword{package}
\keyword{datasets}