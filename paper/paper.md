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

Given a partially observed matrix $M \in \mathbb{R}^{n\times p}$, the goal is to solve for $X \in \mathbb{R}^{n\times p}$ with constraints $X_{i,j} = M_{i,j}$ for an observed entry $(i,j)$. The problem is underdetermined due to the fact that any arbitrary values can be assigned to unobserved entries. Therefore, the problem requires additional assumptions to bound the number of degrees of freedom for $X$. Numerous ideas and algorithms have been proposed in the literature and we refer to aforementioned reviews for interested readers [@li_survey_2019; @elharrouss_image_2020; @lin_missing_2020].

We propose `filling`, an R package [@rcoreteam_language_2020] to host a suite of 9 popular algorithms for the matrix completion problem. Since many algorithms solve optimization problems in an iterative manner, all but one functions are written in `C++` and accessed via an interface by `Rcpp` [@eddelbuettel_rcpp_2011a]. `RcppArmadillo` [@eddelbuettel_rcpparmadillo_2014b] enables to utilize `armadillo` library [@sanderson_armadillo_2016b] for numerical linear algebra operations in `C++`.

  ------------------------------------------------------------------------------
        File          Package     replications   elapsed    user.self  sys.self
   ----------------- ------------ -------------- --------- ---------- -----------
    **E-MTAB-1147**   ShortRead        100         13.3       11.58        1.37    
   
                      qckitfastq       100         5.159      4.902      0.091     

    **test.fq.gz**    ShortRead        100         6.612      5.739      0.567     
     
                      qckitfastq       100         0.195      0.105      0.019      
   ------------------------------------------------------------------------------
   Table: Benchmark results of qckitfastq, which uses RSeqAn, and ShortRead, which does not against a test file from each package.


# Acknowledgments

We appreciate Lizhen Lin and Ick Hoon Jin for supportive environment.
**twostar for bold** and _underscore for italic_

# References
