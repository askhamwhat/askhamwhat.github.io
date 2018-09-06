---
layout: publication
abstract: The dynamic mode decomposition (DMD) is a broadly applicable dimensionality
  reduction algorithm that approximates a matrix containing time-series data by the
  outer product of a matrix of exponentials, representing Fourier-like time dynamics,
  and a matrix of coefficients, representing spatial structures. This interpretable
  spatio-temporal decomposition is commonly computed using linear algebraic techniques
  in its simplest formulation or a nonlinear optimization procedure within the variable
  projection framework. For data with sparse outliers or data which are not well-represented
  by exponentials in time, the standard Frobenius norm fit of the data creates significant
  biases in the recovered time dynamics. As a result, practitioners are left to clean
  such defects from the data manually or to use a black-box cleaning approach like
  robust PCA. As an alternative, we propose a framework and a set of algorithms for
  incorporating robust features into the nonlinear optimization used to compute the
  DMD itself. The algorithms presented are flexible, allowing for regu- larizers and
  constraints on the optimization, and scalable, using a stochastic approach to decrease
  the computational cost for data in high dimensional space. Both synthetic and real
  data examples are provided.
author:
- family: Askham
  given: Travis
- family: Zheng
  given: Peng
- family: Aravkin
  given: Aleksandr
- family: Kutz
  given: J Nathan
container-title: arXiv preprint arXiv:1712.01883
ref-id: askham2017robust
title: Robust and scalable methods for the dynamic mode decomposition
type: article-journal
year: '2017'
---