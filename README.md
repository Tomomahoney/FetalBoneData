# FetalBoneData

This R package contains datasets of fetal bone measurements from various sources. The measurements include the following bones:

- Basicranial bones (From Fazekas and Kósa 1978)
- Extremity dimensions (From Fazekas and Kósa 1978)
- Facial bones (From Fazekas and Kósa 1978)
- Rib measurements (From Fazekas and Kósa 1978)
- Shoulder and pelvic girdle (From Fazekas and Kósa 1978)
- Small bones (From Fazekas and Kósa 1978)
- Long bone lengths (Author's own, taken from the University of Liverpool Fetal collection).
- Squamous_occipital
- Squamous temporal

## Installation

You can install the package from GitHub:

```r
# install.packages("devtools")
devtools::install_github("yourusername/FetalBoneData")
```

## Usage

```r
library(FetalBoneData)

# View basocranial bone data
head(basocranial_bones)

# View extremity dimensions
head(extremity_dimensions)

# etc.
```

## Data Sources

The data comes from Fazekas and Kósa's work Forensic Fetal Osteology, Thomas O'Mahoney's measurements of the Liverpool Fetal Collection and Grzonkowska_et_al. (2021) and Grzonkowska_et_al. (2023).

## Citation

If you use this data in your research, please cite:

Fazekas, I.G. and Kósa, F., 1978. Forensic fetal osteology. Akadémiai Kiadó, Budapest.

Grzonkowska M, Baumgart M, Badura M, Wiśniewski M, Siedlecki Z, Szpinda M (2021) Quantitative anatomy of the growing squamous part of the temporal bone in the human fetus. PLoS ONE 16(2): e0247601. https://doi.org/10.1371/journal.pone.0247601

Grzonkowska M, Baumgart M, Badura M, Wiśniewski M, Siedlecki Z, Szpinda M (2023) Age- and sex-specific reference values for squamous part of the occipital bone in the human fetus. PLoS ONE 18(12): e0295590. https://doi.org/10.1371/journal.pone.0295590

O'Mahoney, T. and Vakil Kumar, J., 2025. FetalBoneData: Fetal Bone Measurements Dataset. R package version 0.1.0.

You can also cite this package using:
```r
citation("FetalBoneData")
```