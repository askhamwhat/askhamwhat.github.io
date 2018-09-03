---
layout: post
title: "AMATH481: ODE Boundary Value Trick"
date: 2016-12-08
tags: [a2016amath481]
categories:
  - teaching
---

{% include a2016amath481.md %}

The code that you wrote for the project solves
ODEs with Dirichlet boundary conditions, but restricted
to the case of homogeneous (zero) boundary values.
You may find that this is a pain when it comes to
generating an interesting looking example. Luckily,
there is a simple trick --- essentially, adding a linear
function to your unknown --- which allows you to use
the same solver to solve the same ODE with general Dirichlet
boundary conditions. You can find a write up and example
code for this [here](/assets/courses/uw-amath-481-a-2016/odetrick.zip). Note that the example code will require your
matrix and right hand side builders from the
project to run.
