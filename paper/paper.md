---
authors:
- name: Kisung You
  affiliation: 1
  orcid: 0000-0002-8584-459X
affiliations:
- index: 1
  name: Department of Applied and Computational Mathematics and Statistics, University of Notre Dame
title: "filling: Matrix Completion in R"
tags:
- R
- matrix completion
- imputation
- inpainting
date: 25 June 2020
bibliography: paper.bib
---

# Summary

_Matrix completion_ problem is a thematic program to estimate missing entries of a partially observed matrix [@li_survey_2019]. One popular example is the Netflix Prize in which preference of a movie for each user needs to be predicted given movie ratings data. The problem has been called in different names, including _inpainting_ [@elharrouss_image_2020] in image processing and _imputation_ [@lin_missing_2020] in Statistics communities due to its versatility in applications such as collaborative filtering, sensor localization, system identification, and so on [@candes_matrix_2010].

Given a partially observed matrix $M \in \mathbb{R}^{n\times p}$, the goal is to solve for $X \in \mathbb{R}^{n\times p}$ with constraints $X_{i,j} \approx M_{i,j}$ for an observed entry $(i,j)$. The problem is underdetermined due to the fact that any arbitrary values can be assigned to unobserved entries. Therefore, the problem requires additional assumptions to bound the number of degrees of freedom for $X$. Numerous ideas and algorithms have been proposed in the literature and we refer to aforementioned reviews for interested readers [@li_survey_2019; @elharrouss_image_2020; @lin_missing_2020].

We propose `filling`, an R package [@rcoreteam_language_2020] to host a suite of 9 popular algorithms for the matrix completion problem. Functions for algorithms that require heavy computation at each iteration are written in `C++` and accessed via an interface by `Rcpp` [@eddelbuettel_rcpp_2011a]. `RcppArmadillo` [@eddelbuettel_rcpparmadillo_2014b] enables to utilize `armadillo` library [@sanderson_armadillo_2016b] for numerical linear algebra operations. Algorithms available in `filling` package are as follows;

* `fill.HardImpute` [@mazumder_spectral_2010] : Generalized spectral regularization algorithm assumes low-rank structure and applies hard thresholding to prevent the number of non-zero entries to be overestimated. 
* `fill.KNNImpute` [@troyanskaya_missing_2001] : Finds $k$-nearest neighbor based on observed variables and uses weighted average of nearest elements to fill in the missing entries.
* `fill.nuclear` [@candes_exact_2009] : Formulates the low-rank property as minimizing the nuclear norm $\|X\|_* = \sum \sigma_i (X)$ where $\sigma_j (X)$ is $j$-th singular value of the matrix. Benefit of replacing rank condition with nuclear norm is to adopt convex optimization for computational gain.
* `fill.OptSpace` [@keshavan_matrix_2010] : The algorithm applies trimming and projection repeatedly on singular value decompositions to reconstruct a low-rank matrix from a small subset of entries.
* `fill.simple` [@gelman_data_2007] : A simple algorithm fills in the missing entries with representative values for each variable such as mean and median of observed entries or simply a random number.
* `fill.SoftImpute` [@mazumder_spectral_2010] : The problem considered in `fill.nuclear` is performed using soft-thresholding on a sequence of regularized low-rank solutions.
* `fill.SVDImpute` [@troyanskaya_missing_2001] : From the fact that singular value decomposition is the best low-rank approximation of a given matrix, the algorithm takes an iterative approach to replace previously estimated missing entries with prediction of each row by top-$k$ right singular vectors.
* `fill.SVT` [@cai_singular_2010] : Nuclear norm minimization is solved via iteratively thresholding singular values, which originates from the formulation to put sparsity-inducing regularization on the summation of singular values.
* `fill.USVT` [@chatterjee_matrix_2015] : As a matrix estimation method under low-rankness, the algorithm thresholds singular values as much to minimize mean-squared errors.


# Acknowledgments

We appreciate Lizhen Lin and Ick Hoon Jin for supportive environment.
**twostar for bold** and _underscore for italic_

# References
