---
layout: publication
DOI: 10.1016/j.jcp.2017.04.063
abstract: "We present a fast, direct and adaptive Poisson solver for complex two-dimensional\
  \ geometries based on potential theory and fast multipole acceleration. More precisely,\
  \ the solver relies on the standard decomposition of the solution as the sum of\
  \ a volume integral to account for the source distribution and a layer potential\
  \ to enforce the desired boundary condition. The volume integral is computed by\
  \ applying the FMM on a square box that encloses the domain of interest. For the\
  \ sake of efficiency and convergence acceleration, we first extend the source distribution\
  \ (the right-hand side in the Poisson equation) to the enclosing box as a C0 function\
  \ using a fast, boundary integral-based method. We demonstrate on multiply connected\
  \ domains with irregular boundaries that this continuous extension leads to high\
  \ accuracy without excessive adaptive refinement near the boundary and, as a result,\
  \ to an extremely efficient \u201Cblack box\u201D fast solver."
author:
- family: Askham
  given: Travis
- family: Cerfon
  given: Antoine J
container-title: Journal of Computational Physics
featured: true
page: 1-22
publisher: Elsevier
ref-id: askham2017adaptive
research_area: inteq
title: An adaptive fast multipole accelerated poisson solver for complex geometries
type: article-journal
volume: '344'
year: '2017'
---