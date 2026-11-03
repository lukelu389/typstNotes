#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 3 — System Modelling"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")
#let uml-stroke = 0.6pt

// A UML class: 3 compartments (name / fields / methods)
#let uml-class(name, fields: (), methods: (), width: 4.2cm, abstract: false) = box(
  width: width,
  stroke: uml-stroke,
  fill: white,
  {
    set text(size: 9pt)
    set par(justify: false, leading: 0.5em)
    stack(
      dir: ttb,
      block(width: 100%, inset: 5pt, align(center, text(
        weight: "bold",
        style: if abstract { "italic" } else { "normal" },
        name,
      ))),
      line(length: 100%, stroke: uml-stroke),
      block(width: 100%, inset: 5pt, align(left, fields.join(linebreak()))),
      line(length: 100%, stroke: uml-stroke),
      block(width: 100%, inset: 5pt, align(left, methods.join(linebreak()))),
    )
  },
)

// Diamond (composition = filled, aggregation = hollow), left tip at (x, y)
#let uml-diamond(x, y, filled: true) = place(polygon(
  fill: if filled { black } else { white },
  stroke: uml-stroke,
  (x, y), (x + 0.17cm, y - 0.13cm), (x + 0.34cm, y), (x + 0.17cm, y + 0.13cm),
))

// Horizontal association: diamond on the WHOLE (left), role + multiplicity at the PART (right)
#let uml-assoc(kind: "composition", role: none, mult: none, length: 3.4cm) = box(
  width: length,
  height: 1.4cm,
  {
    let y = 0.7cm
    let d = if kind == "association" { 0pt } else { 0.34cm }
    place(line(start: (d, y), end: (length, y), stroke: uml-stroke))
    if kind != "association" { uml-diamond(0pt, y, filled: kind == "composition") }
    set text(size: 8pt)
    if role != none { place(right + top, dx: -3pt, dy: y - 0.42cm, role) }
    if mult != none { place(right + top, dx: -3pt, dy: y + 0.08cm, mult) }
  },
)

// Lay out  Whole ◆—— Part  on one line
#let uml-row(..items) = align(center, grid(
  columns: items.pos().len(),
  align: horizon,
  ..items.pos(),
))

// Inheritance: parent on top, children below, hollow triangle pointing at the parent
#let uml-inherit(parent, children, child-width: 4.2cm, gap: 1.2cm) = {
  let n = children.len()
  let total = n * child-width + (n - 1) * gap
  let mid = total / 2
  let th = 0.32cm // triangle height
  let bar = 0.75cm // y of horizontal bar
  let h = 1.25cm
  align(center, stack(
    dir: ttb,
    parent,
    box(width: total, height: h, {
      // hollow triangle, apex touching the parent
      place(polygon(fill: white, stroke: uml-stroke,
        (mid, 0pt), (mid - 0.2cm, th), (mid + 0.2cm, th)))
      place(line(start: (mid, th), end: (mid, bar), stroke: uml-stroke))
      let xs = range(n).map(i => i * (child-width + gap) + child-width / 2)
      place(line(start: (xs.first(), bar), end: (xs.last(), bar), stroke: uml-stroke))
      for x in xs { place(line(start: (x, bar), end: (x, h), stroke: uml-stroke)) }
    }),
    grid(columns: n, column-gutter: gap, align: top, ..children),
  ))
}
// ──────────────────────────────────────────────────────────────────

We would like to visualize the design of a software system

1. Identify key entities/abstraction/classes

2. Relationships between entities

Use Unified Modelling Language

== Modeling classes

It can be represented as a box with 3 sections

Example

#align(center)[
  #grid(
    columns: 2,
    column-gutter: 0.6cm,
    align: horizon,
    uml-class("Vec",
      fields: ("- x : Integer", "- y : Integer"),
      methods: ("+ getX() : Integer", "+ getY() : Integer")),
    text(size: 8pt, align(left)[← class name \ \ ← fields \ \ ← methods]),
  )
]

`- ...` means it is `private`

`+ ...` means it is `public`

*Relationship 1: Composition/OWNS*

```cc
class Basis{
  Vec v1, v2;
};
```

`Basis` is composed/owns of 2 `Vec` objects

#uml-row(
  uml-class("Basis", width: 2.6cm),
  uml-assoc(kind: "composition", role: "v1, v2", mult: "2"),
  uml-class("Vec",
    fields: ("- x : Integer", "- y : Integer"),
    methods: ("+ getX() : Integer", "+ getY() : Integer")),
)

The *filled diamond* ◆ sits on the *owner* (`Basis`); the role names and multiplicity are written at the *owned* end (`Vec`).

A OWNS-A B implies:

- if A is destroyed, B is destroyed

- if A is copied, B is copied

When a class has fields of objects, those objects are owned by the class

Sometimes fields thare pointers to objects might also have a OWNS-A relationship

*Relationship 2: Aggregation/HAS*:

- Aggregation is never represented using fields that are objects.

- Fields that are pointers DO NOT automatically represnet a HAS-A relationship


A HAS-A B implies:

- If A is destroyed, B lives on

```cc 
class Pond{
  Duck *ducks[100];
}
```

#uml-row(
  uml-class("Pond", width: 2.6cm),
  uml-assoc(kind: "aggregation", role: "ducks", mult: "0..100"),
  uml-class("Duck", width: 2.6cm),
)

The *hollow diamond* ◇ sits on the container (`Pond`). Multiplicities use `..` (e.g. `0..100`, `0..*`).

Nodes of Lists

```cc
class List {
  Node *theList;   // List OWNS its nodes
};
class Node {
  int data;
  Node *next;      // each Node OWNS the next one
};
```

#uml-row(
  uml-class("List", width: 2.6cm),
  uml-assoc(kind: "composition", role: "theList", mult: "0..1"),
  uml-class("Node", width: 3.2cm, fields: ("- data : Integer",)),
  // self-composition loop on Node
  box(width: 2.2cm, height: 1.6cm, {
    let y1 = 0.45cm
    let y2 = 1.15cm
    let x = 1.0cm
    uml-diamond(0pt, y1, filled: true)
    place(line(start: (0.34cm, y1), end: (x, y1), stroke: uml-stroke))
    place(line(start: (x, y1), end: (x, y2), stroke: uml-stroke))
    place(line(start: (x, y2), end: (0pt, y2), stroke: uml-stroke))
    set text(size: 8pt)
    place(dx: x + 4pt, dy: y1 - 0.05cm, "next")
    place(dx: x + 4pt, dy: y2 - 0.3cm, "0..1")
  }),
)

Pointer fields here are still OWNS-A: the `List` is responsible for deleting its nodes, and each `Node` for deleting `next`.

*Relationshp 3: Specialization/Inheritance/IS*

Consider example:

- Book: title, author, length

  - Text: title, author, length, topic

  - COmic: title, author, length, hero


Observe: 

Text IS-A Book specialized with an extra topic field, 

Comic  IS-A Book specialized with an extra hero field


#uml-inherit(
  uml-class("Book",
    fields: ("- title : String", "- author : String", "- length : Integer")),
  (
    uml-class("Text", fields: ("- topic : String",)),
    uml-class("Comic", fields: ("- hero : String",)),
  ),
)

The *hollow triangle* △ points *at the superclass*. Subclasses only list their *new* fields; inherited ones are not repeated.

`Book` is a Parent/Base/Super class

`Comic` and `Text` are Children/Derived/Sub class which inherits all members of `Book` including private, public, and Methods

Any methods that you could call a `Book` object you can call on a `Text` object

Code can be found "lectures/19-inheritance/examples"

```cc
class Book {
  string title, author;
  int length;
  public:
    Book(string title, string author, int length): 
    title{title}, author{author}, length{length}
};

class Text: public Book{
  string topic;

};

class Comic: public Book{
  string hero;
};
```

Here `Text` inherited 3 private fields: `title, author, length`

But `private` means private that is

A `Text` object reserves space for `title, author, length, topic`

Even though `Text` objects have space for these `private` inherited fields, `Text` class cannot access these fields 


```cc
//INVALID
Text::Text(string title, string author, int length, string topic): 
    title{title}, author{author}, length{length}, topic{topic};


```
The above INVALID code has 3 errors:

1. Inherited fields are `private`

2. MIL can only initialize fields it declared

3. Steps for object construction of derived classes need superclass constructed first


\

NEW steps for constructing derived objects:

1. Space is reserved

2. Superclass part of the object is constructed

3. Subclass fields that are objects are constructed/Modeling

4. Constructor body runs


So we need a default constructor of `Book`, but since we wrote our own default constructor for `Book`, we need to call the custom constructor explcitly in `Text`

```cc

Text::Text(string title, string author, int length, string topic) :
 Book{title, author, length}, topic{topic} {}
```

*`protected`* members are accessible to inherited subclasses

```cc
class Book{
  protected:
    string author;
};

void Text::addAuthor(string auth){
  author+= auth;
}

int main(){
  Text t;
  //INVALID, requires public level
  t.author=...;
}
```

Here `Text` can access `authors` b/c it is protected in `Book`

#tip[*Advice for choosing Level* \ 

1. Keep fields private to guarantees invariants

2. We could provide `protected` mutators/accessors 
]

== Method Overriding
\
Imagine: I want to answer when different books are heavy.

`Book` is heavy if `lenght>200`

`Text` is heavy if `length>500`

`Comic` is heavy if `length>30`

Code found "lectures/inheritance/example2"
\
\
\
```cc
class Book{
  int length;
  public: 
    int getLength() const {return length}
    bool isHeavy() const {return length > 200;}
};

bool Text:isHeavy() const {return getLength() > 500;}
bool Comic:isHeavy() const {return getLength() > 30;}
```

*Method overriding*: eplacing an inherited method with a new implementation of the method 


```cc
Book b1{"a", "b", 50};
b1.isHeavy(); //Book::isHeavy() runs, gives out `false`
Comic c1{"c", "d", 40, "e"};
c1.isHeavy(); //Comic::isHeavt() runs, gives out `true`

Book b2 = c1; //LEGAL b/c Comic IS-A Book

b2.isHeavy(); //Book::isHeavy() runs, gives out `false`

//`Book` copy constructor ran, treating `c1` as a `Book`

```

*Object slicing/coersion*: 

```cc Superclass s = subObject;```

The additional fields of `subObject` are dropped when `Superclass`'s copy constructor is called.

We want to avoid this.

```cc

Comic c1{"c", "d", 40, "e"};
Comic *pc {&c1};

pc->isHeavy(); //Comic::isHeavy() runs, gives out `true`

Book *pb{&c1}; //VALID b/c `Comic` is a `Book`, the reverse is INVALID
//No slicing occurred b/c the pointer is simply pointing to the location of `c1`
pb->isHeavy(); //Book::isHeavy() runs, `false` in Java it would have been `true`
```
*C++ looks at the declared type of the object/pointer *to determine which method to run (by default)
