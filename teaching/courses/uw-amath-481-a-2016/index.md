---
layout: page
title: UW AMATH 481 (Autumn 2016)	
---

{% include imgcard.html imgpath="/assets/img/uw-header.jpg" title="Suzzallo Library" imgtext="Suzzallo Library at the University of Washington" credit="&copy; UW Visual Asset Collection. Photo by Katherine Turner" %}

### Course Blog

This is a weblog for the course. Announcements, 
notes, sample code, and homework assignments will be 
posted here.


{% include tags-short-list.html tag="a2016amath481" numshow=5 %}

Due dates:

- [The project]({{ site.baseurl }}{% post_url /a2016-amath-481/2016-11-02-amath-481-proj-1 %}#post)
is due 12/9.
- [Homework 4]({{ site.baseurl }}{% post_url /a2016-amath-481/2016-11-29-amath481-hw-4 %}#post)
is due 12/11.
- [Homework 3]({{ site.baseurl }}{% post_url /a2016-amath-481/2016-11-13-amath481-hw-3 %}#post)
is due 11/23.
- [Homework 2]({{ site.baseurl }}{% post_url /a2016-amath-481/2016-10-25-amath481-hw-2 %}#post)
is due 11/5.
- [Homework 1]({{ site.baseurl }}{% post_url /a2016-amath-481/2016-10-10-amath481-hw-1 %}#post) 
is due 10/21.
- [Homework 0]({{ site.baseurl }}{% post_url /a2016-amath-481/2016-09-26-amath481-hw-0 %}#post)
is due 10/7.

### Description

A survey of numerical methods for the 
solution of problems arising
in the physical sciences, with an emphasis on methods for the 
solution of differential equations. Topics will include: the
Fourier transform, finite differences, finite elements, spectral
methods, integral equation methods, and fast solution techniques.

#### Prerequisites

This course requires familiarity with programming,
differential equations, and linear algebra. The appropriate
background at UW is: AMATH 301; either AMATH 351 or MATH 307; 
either AMATH 352 or MATH 308.

### Instruction

Instructor: Travis Askham
	
- Lectures: MWF 9:30-10:20am, Denny Hall 259.
- Office Hours: MW 10:30-11:30am, Lewis Hall 129.
	
Teaching Assistant: Trevor Caldwell
	
- Office Hours: T 4-5pm, Lewis Hall 128.

### Syllabus

#### Textbook

There is no required textbook for
the course. For reference, we will use the notes by 
Nathan Kutz provided below. I will post some additional
resources in the future for those interested in 
further reading.
	
Course notes

- [Nathan Kutz's notes](resources/581-notes-kutz.pdf)

Some good Wikipedia pages

- Chapter 1 (integrators)
    - [Taylor's theorem](https://en.wikipedia.org/wiki/Taylor%27s_theorem)
    - [Big O notation](https://en.wikipedia.org/wiki/Big_O_notation)
    - [Runge-Kutta methods](https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods)
    - [Linear multistep methods](https://en.wikipedia.org/wiki/Linear_multistep_method)
- Chapter 2 (fluid equations, finite differences, Fourier series)
    - [Stream function](https://en.wikipedia.org/wiki/Stream_function)
    - [Finite differences](https://en.wikipedia.org/wiki/Finite_difference_method)
    - [Fourier series](https://en.wikipedia.org/wiki/Fourier_series)
- Chapter 3 (stability for the method of lines)
    - [CFL condition](https://en.wikipedia.org/wiki/Courant%E2%80%93Friedrichs%E2%80%93Lewy_condition)
    - [von Neumann stability analysis](https://en.wikipedia.org/wiki/Von_Neumann_stability_analysis)
    - [Stiff equations](https://en.wikipedia.org/wiki/Von_Neumann_stability_analysis)

Books (links are to Amazon but these can often be found at
a university library).

- General
    - [Iserles](https://www.amazon.com/Numerical-Differential-Equations-Cambridge-Mathematics/dp/0521734908)
    - [Burden and Faires](https://www.amazon.com/Numerical-Analysis-Richard-L-Burden/dp/1305253663)
    - [Dahlquist and Bjorck](https://www.amazon.com/Numerical-Methods-Dover-Books-Mathematics/dp/0486428079)

- Spectral Methods
    - [Spectral Methods in MatLab](https://www.amazon.com/Spectral-Methods-MATLAB-Software-Environments/dp/0898714656/ref=sr_1_1?s=books&ie=UTF8&qid=1475711180&sr=1-1&keywords=spectral+methods+in+matlab)
    - [Approximation Theory and Approximation Practice](https://www.amazon.com/Approximation-Theory-Practice-Applied-Mathematics/dp/1611972396/ref=sr_1_1?s=books&ie=UTF8&qid=1475711213&sr=1-1&keywords=approximation+theory+and+approximation+practice)

#### Course Outline

NOTE: this outline is temporary and subject to
change.

This is a 5 unit course and 
will contain a challenging workload.
We will cover most of the material of 
Nathan Kutz's notes plus some supplementary
material on integral equations and 
approximation theory. An approximate course schedule is 
below and includes the dates of quizzes
and the midterm. The chapters of the notes cover:

- Chapter 1 - Initial and boundary value problems
of differential equations
- Chapter 2 - Finite difference methods
- Chapter 3 - Time and space stepping schemes:
method of lines
- Chapter 4 - Spectral methods
- Chapter 5 - Finite element methods

Schedule:

| Date | Day | Description |
|:----:|:---:|:------------|
| 9/28 | W | Course intro |
| 9/30 | F | Section 1.1 of the notes |
| 10/3 | M | (Quiz) Section 1.2 of the notes |
| 10/5 | W | Section 1.3 of the notes |
| 10/7 | F | Section 1.4 of the notes |
| 10/10 | M | Section 1.5 of the notes |
| 10/12 | W | Extra time for Chapter 1 |
| 10/14 | F | Extra time for Chapter 1 |
| 10/17 | M | (Quiz) Section 2.1 of the notes |
| 10/19 | W | Section 2.2 of the notes |
| 10/21 | F | Section 2.3 of the notes |
| 10/24 | M | Section 2.4 of the notes - Prof. Nathan Kutz |
| 10/26 | W | Section 2.5 of the notes - Video |
| 10/28 | F | Section 2.6 of the notes - Prof. Nathan Kutz |
| 10/31 | M | (Quiz) Extra time for Chapter 2 |
| 11/2 | W | Extra time for Chapter 2 |
| 11/4 | F | Section 3.1 of the notes |
| 11/7 | M | Section 3.2 of the notes |
| 11/9 | W | Midterm exam |
| 11/11 | F | Veterans day. No lecture |
| 11/14 | M | Section 3.3 of the notes |
| 11/16 | W | Section 3.4 of the notes |
| 11/18 | F | Section 3.5 of the notes |
| 11/21 | M | (Quiz) Finite Element Methods (Chapter 5 and project) |
| 11/23 | W | Finite Element Methods (Chapter 5 and project) |
| 11/25 | F | Happy Thanksgiving! No lecture |
| 11/28 | M | Chapter 4 and Chebfun |
| 11/30 | W | Chapter 4 and Chebfun |
| 12/2 | F | Chapter 4 and Chebfun |
| 12/5 | M | (Quiz) Chapter 4 and Chebfun |
| 12/7 | W | Chapter 4 and Chebfun |
| 12/9 | F | Chapter 4 and Chebfun |

#### Quizzes

There will be brief quizzes every other Monday at the
end of lecture. These will generally cover
material from the previous 3 lectures.

The lowest quiz score will be dropped. If you
have a documented reason for missing a quiz
(e.g. doctor's note),
up to 3 scores may be dropped. If you anticipate
missing more than 3 quizzes with good reason 
(e.g. if you are a student-athlete with 
competitions on Mondays), then we will work 
out an alternative plan.

#### Homework

There will be homework assignments (roughly 6
for the quarter). Typically, the homework assignments
will have reading, writing, and coding components.
Collaboration is allowed
and encouraged on homework assignments but 
you must turn in your own write-up and code.

I encourage the use of the LaTeX typesetting
system for the written portion of the homework. 
Once learned, LaTeX allows you to efficiently
typeset equations and create professional 
looking documents.
See the important links section for some resources
on this.

The homework submission process is TBD.
Late homework will not be accepted.

#### Midterm Exam

There will be a midterm exam on Wednesday
November 9th during lecture which will cover 
the material up to and including November 2nd. 
You must take the midterm on this date. Exceptions
will only be granted in extreme circumstances.

#### Project

The coursework related to finite element methods
will take the form of a guided project. 
In a sense, the project is a 
more free-form homework assignment with one 
caveat: collaboration is not allowed.

The project submission process is TBD.
Late project submissions will not be accepted.

#### Grading

The final course grade 
will be a combination of the scores received for
quizzes, homework, the midterm exam, and the
project. The components are weighted by:

- HW: 40%
- Quizzes: 20%
- Midterm: 20%
- Project: 20%

Grades will be adjusted on a per-assignment basis
with the goal that an A corresponds with mastery
of the material and a B corresponds with proficiency
in the material. This process will only increase
raw grades.

The lowest quiz score will be dropped.

#### HELP!!!

We are happy to help. Due to time constraints, we 
suggest the following methods for obtaining help,
with email, in general, as a last resort:

- [Discussion board](https://canvas.uw.edu/courses/1062858/discussion_topics).
The discussion board is ideal for questions that you think
other students may have. This includes questions about
course policy (e.g. grading, exams), questions about possible
typos in assignments, and questions about course material.
- Office hours. The instructor and TA office hours are 
ideal for questions about course material which require
more individual attention.
- Email. Sending the instructor an email is best-suited for
emergencies and personal issues (and is quite welcome in these
cases). For the sake of efficiency,
I will generally not answer content-related email questions.
The TA's email policy is TBD.

#### Academic Integrity

I take academic integrity 
very seriously. Students are expected to abide by the
[student code of conduct](http://www.washington.edu/cssc/student-conduct-overview/student-code-of-conduct/).
Any student found engaging
in academic misconduct (see 478-120-024) will receive a 
score of zero for the assignment in question. In particular, 
cheating on the midterm exam or final project may
result in a failing grade for the course.

### Important Links

Links to various resources
will be collected here.

#### UW details

- [Important dates](https://www.washington.edu/students/reg/1617cal.html).
- [Details on dropping](https://www.washington.edu/students/reg/wdpolicy.html).
- [Student code of conduct](http://www.washington.edu/cssc/student-conduct-overview/student-code-of-conduct/).
- [Grading at UW](http://www.washington.edu/students/gencat/front/Grading_Sys.html).

#### MatLab access

You have a few options for MatLab access.

- [MatLab student copy](https://www.mathworks.com/academia/student_version/?s_tid=htb_learn_gtwy_cta3). A student copy of MatLab can be purchased at a 
significant discount.
- [MatLab from UW](http://itconnect.uw.edu/wares/uware/matlab/). A temporary
MatLab license from UW (cheaper, expires June 2017).
- [Remote access](http://www.me.washington.edu/remotedesktop). MatLab 
can be accessed remotely through the mechanical engineering
department's remote desktop servers.
- [UW ICL](https://admin.artsci.washington.edu/icl). The instructional
computing labs at UW have MatLab installed.
- [Octave](http://www.gnu.org/software/octave/download). An 
open source version of MatLab. A fair option but you're on your own
for debugging. In my experience, the performance of Octave is 
generally slower than MatLab's but usable.

#### LaTeX typesetting

For typesetting equations, I strongly recommend LaTeX.

- [Online LaTeX editor](https://www.sharelatex.com/)
- [Obtaining LaTeX](https://www.latex-project.org/get/) I've used
  MikTeX on Windows and TeX Live for Linux and found both to be
  useful. On older versions of Windows, the standard PDF viewer
  doesn't automatically refresh when you compile the LaTeX. If
  you're dealing with this on Windows, I recommend Sumatra PDF.
- [LyX](https://www.lyx.org/Home) LyX might be a good option
  for people who run Windows or anyone who wants more of a
  WYSIWYG-like experience. Another reason to consider this option
  is that you don't have to install LaTeX separately.

#### Thanks

A few of these lists were compiled by others. 
Thank you:

- Niall Mangan
- Mark Kot