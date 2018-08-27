---
layout: post
title: "AMATH481: Fluids Code Overview"
date: 2016-11-03
tags: [a2016amath481,teaching-video]
categories:
  - teaching
---

{% include a2016amath481.md %}

We didn't finish the overview of the code 
in lecture yesterday, so I made a video 
which goes over the basic structure. 
In the video, I explain the code in its
initial, finite-differences-based version.
The code provided with the homework is missing
only the function for generating a 
finite difference matrix for differentiation
in the \\(y\\) direction. Once you fix 
this function, `uymatp2d`, the finite-differences
version of the code will be functional.
In the homework, I also ask you to write a new
version of the code in which you swap out these
finite-differences routines for FFT-based
ones. 

{% include youtube.html youtube_id="7J4JUkNXQm4" %}

You can download homework 2 [here](/teaching/courses/uw-amath-481-a-2016/resources/hw2.zip).
