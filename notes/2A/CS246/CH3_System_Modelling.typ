#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 3 — System Modelling"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

We would like to visualize the design of a software system

1. Identify key entities/abstraction/classes

2. Relationships between entities

Use Unified Modelling Language

*Modeling classes*

- represented as a box with 3 sections
Example

#align(center)[
  #table(
      columns: 2, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [`Class`], [`Vec`],
      [`Fields`], [`-x`: Integer \ `-y`: Integer], 
      [`Methods`], [`+getX()`: Integer \ `+getY()`: Integer]
  )
]

`- ...` means it is `private`

`+ ...` means it is `public`

Relationship 1: Composition

```cc
class Basis{
  Vec v1, v2;
};
```

`Basis` is composed/owns of 2 `Vec` objects

#align(center)[
  #table(
      columns: 1, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [`Basis`]
  ) $==>^("v1, v2")$
  #table(
      columns: 1, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [`Vec`],
      [`-x`: Integer \ `-y`: Integer], 
      [`+getX()`: Integer \ `+getY()`: Integer]
  )
]

A owns B implies:

- if A is destroyed, B is destroyed

- if A is copied, B is copied
