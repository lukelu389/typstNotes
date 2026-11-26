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

*Method overriding*: replacing an inherited method with a new implementation of the method 


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
pb->isHeavy(); //Book::isHeavy() runs, gives out `false`. Different from Java
```
*C++ looks at the declared type of the object/pointer *to determine which method to run
 (by default)

Most often, we want to call the most specialized method based on the actual type of the object involved.
#defn[*`virtual`*
C++ introduced keyword `virtual`

- Declare the method `virtual` in the base class

- `override` the method as needed in subclasses, and it forces the compiler to confirm the method is an inherited method, it is not required to be used
]
Example:

```cc
class Book{
  ...
  public:
    virtual bool isHeavy() const {...}
};
class Comic: public Book {
  ...
  public:
    bool isHeavy() const override {...}
};

//In main.cc
Comic *pc{&c};
Book *pb{&b};
Book &rb{c};

pc->isHeavy();
pb->isHeavy();
rb->isHeavy();
//All calls Comic::isHeavy
```

*Dynamic Disbatch*:

The method is choosen when the program is running based on the runtime type of the object initialized 

```cc
//collection uses polymorphism, a polymorphic array
Book *colleciton[100];
...
collection[0] = new Text()
...
collection[...] = new Comic()
...
for(int i = 0; i<100; ++i){
  cout<< collection[i].isHeavy() <<endl;
}
```

*Destructor Revisted*

Updated 4 steps to object destruction:

1. subclass destructor runs

2. destructor runs for subclass fields that are objects

3. Superclass part of object is destroyed(superclass destructor called)

4. Space is reclaimed

"lectures/19-inheritance/example5"

```cc
class X {
  int *x;
 public:
  X(int n): x{new int [n]} {}
  virtual ~X() { delete [] x; } //added virtual
};

class Y: public X {
  int *y;
 public:
  Y(int n, int m): X{n}, y{new int [m]} {}
  ~Y() { delete [] y; }
};

int main () {
  X myX{5}; // Automatically triggering X destructor from Y destructor
  Y myY{5, 10}; //First get reclaimed from Y destructor

  X *p = new Y{5, 10}; 
  delete p; //Memory leak
  //X::~X() called, the Y part is leaked, solution: make destructor virtual
}
```

#tip[*Destructor* \ 

If a class have(or may have) a subclass, declare the destructor `virtual`
]

*`final` Keyword*

If a class will never have a subclass, declare it to be `final`

Example: ```cc class Y final: public X{...};```

== Pure Virtual Methods

(Goal: Abstract vs Concrete classes)

```cc
class Student {
  ... 
  public:
    virtual int fees()=0; // PURE VIRTUAL METHOD
    //We do not want to implement this, but without =0, it will not compile
};

class regular : public Student{
  public:
    int fees() override {...}
};
class coop : public Student{
  public:
    int fees() override {}
}

//main
Student *allStudent[41000];
allStudent->fees();
```

Virtual: subclass may have different behaviour\
Pure Virtual: subclass must provide an implementation to be considered to a concrete class

*Abstract vs Concrete*

#defn[*Abstract Class*
  
A class is abstract if either

1. It declares a pure virtual method (i.e. Student in the bove example)

2. Inherits a pure virtual method that it does not implement
so that you cannot instantiate object of abstract classes. (i.e. cannot create a Student object in above)
]

Representation of virtual in UML:

- Virtual/Pure virtual methods: in italics

- Abstract: Name of class \/\/

- Static: underline

- protected:  \#

\

== C++ Templates

```cc
template <typename T>
class Stack {
  T *contents;
  int cap;
  int size;
  public:
    Stack();
    ~Stack();
    void push(T x);
    void pop();
    T top();
};

//main

Stack<int> sInts;
sInts.push(1);
Stack<String> sStrings;
sStrings.push("hi");
Stack<Stack<int>> s;
s.push(sInts);
```
C++ supports templates.

A template class is a class parameterized on one or more types.

- To create objects of the template class we need to provide the type as parameter

== Standard Template Library (STL)

- Many C++ template classes: `vector, array, set, map, etc.`

*`vector`* is a dynamic array that automatically resizes as needed.

Example:

```cc
import <vector>;
vector<int> v{3, 4}; //[3, 4], vector object is on the STACK, automatically destroyed when going out of scope.
v.emplace_back(5); //[3, 4, 5]
// vector v{3, 4}; is still legal because it is auto inferred, but recommended to indicate

for(int i = 0; i<v.size();++i){
  cout << v[i] <<endl; //operator[] is overloaded
}

for(vector<int>::iterator it = v.begin(); it!=v.end(); ++it) cout << *it <<endl;
for(auto n: v) cout<<n<<endl;
for(vector<int>::reverse_iterator it = v.rbegin();it != v.rend(); ++it){
  cout<< *it <<endl;
}//reverse loop, rbegin() gives the last item, and rbegin() gives one before first element

v.pop_back(); //removes last element
```

Many STL class methods take `Iterator` as parameter 

Iterator supports some arithmetics: 
```cc 
v.erase(v.end()-1);
v.erase(it+3);

```

Remove all `5` from the vector

```cc
for(auto it = v.begin(); it!= v.end()){
  if (*it ==5) {
    it = v.erase(it); //without it, it will skip the element after the erased element
  }else{
    ++it;
  }
}
```

*Note*:
`erase()` may cause elements to shift internally
- existing iterators may become invalid

- returns an `Iterator` to the next element

== Object Oriented Desgin Strategy

- Create abstract classes to specify the interface

- Use pointers of the base class to call interface methods

- To change behaviour, change the ctual objects these pointers points to (virtual methods leading to dynamic dispatch to concrete implementation)

*Iterator Desgin Pattern (revisted)*

- Create an abstract iterator class

An `AbsIter` can points ot a `List::Iterator` or a `Set::Iterator`
```cc
class AbsIter{
  public:
    virtual int &operator* const=0;
    virtual AbsIter &operator++() =0;
    virtual bool operator!=(const AbsIter &rhs) const =0;
    virtual ~AbsIter(){}
};

class List{
  ...
  public:
    class Iterator : public AbsIter{
      ...
    };
    auto &start = l.begin();
    foreach(start, l.end(); addFive);
};
class Set{
  ...
  public :
    class Iterator : public AbsIter{
      ...
    };
    auto &start = l.begin();
    foreach(start, l.end(); addFive);
};

template <typename Fn>;
void foreach(AbsIter &start, const AbsIter &end, Fn f){
  while (start !=end){
    f(*start);
    ++start;
  }
}

```

*Observer Pattern*

Subjsect/Publisher: generates events/data

Observer/Subscriber: interested in notifications

Subject(attach, detach, notify) $->$ Observer (notify)

Concrete subject(getState) $<- $Concrete observer(notify)

```cc
class Subject{
  vector<Observer *> obs;
  public:
    void attach(Observer *o){obs.emplace_back(o);}
    void detach(Observer *o){//for loop, find iterator to o, then erase it}
    void notify(){ for (auto &o: obs) o->notify();}
    virtual ~Subject()=0; //make the destructor be virtual to make the class abstract
};
subject::~Subject(){}
```

Since superclass destructors are automatically called when subclass objects are destroyed, we must still implement ```cc ~Subject()```

A pure virtual method *may not* have an implementation

```cc 
class Observer {
  public:
    virtual void notify()=0;
    virtual ~Observer();
};
```
*Decorater Pattern*

Add/update/notify behaviours of an existing object

#align(left)[
  #table(
    columns: 4,
    align: auto,
    stroke: 0.5pt,
    inset: 6pt,
    [Plain Window], [Plain Window
    +Scroll], [Plain Window
    +Menu], [Plain Window
    +Scroll+Menu],
  )
]
```cc 
Window *w = new PlainWindow;
w = new Scroll(w); //Scroll IS a Window HAS a PlainWindow
w = new Menu(w);
w->draw();//dispactch to Menu's draw()=> Scroll's draw() => Plain Window's draw() => Window's draw()
```
 
Better example found in "lectures/25-decorator"

\
\
== Exceptions \


Example:
```cc
vector<int> v; 
v.emplace_back(1);
v[1]; //compiles with undefined behaviour
try{
  v.at(1);//checked access, if index is not in range, an expection is raised/thrown
  cout<< v.at(1) <<endl; //not be run if exception
}catch(out_of_range r){
  cerr << "Bad Range" << r.what() << endl;
}
cout << "Done" << endl;


```
If an exception in `try`, it "aborts" the future lines and directly jumps to the `catch` block with matching exception if found. Afterwards it DO NOT go back to `try` block again.


*Default behaviour*:  \
If an exception occur(raised/thrown), the program terminates unless there is code to handle/catch the exception.
To throw an exception, throw a value

```cc
throw(out_of_range("out of bound"));
// out_of_range is a class and the above is a constructor being used
```

*Common exceptions*:
- `bad-alloc`: if `new` fails
- `length-error`: if string/vector resize fails

the example in "exceptions/callChain.cc" is called *Stack Unwinding*

#defn[*Stack Unwinding* \

If a function cannot find a `catch` block for a thrown exception, stack frame is popped. Then repeat for the caller.
]

Catching by reference would avoid slicing and is more efficient

ALWAYS catch by reference

```cc 
try{
}catch(SomeExn s){
  //partial recovery;
  //we can throw an exception
}
```

Options:

1. Rethrow original exception `throw;`
2. `throw s;`
  - throwing type `SomeExn`
  - object slicing might occur
3. `throw SomeOtherExn{}`

Error recovery can happen in stages.

- C++ library exception classes all inherit from the `exception` class
- User exceptions classes do not need to inherit from this base class.
- Good practice is to create custom exception class if no C++ exception is appropriate.

\
```cc
class BadInput{};
int n;
try{
  if(!ein>>n) throw BadInput{};
}catch(BadInput &b){n=0;}
```

In C++, anything can be thrown: \
`throw 2;` is valid but not good practice

ALL exceptions can be catched as below

```cc
try{}
catch(...){}

```
The `...` within catch() means catch all types

In "exceptions/exfib.cc" and "exceptions/exfact.cc" are interesting which are slower than recursion.

*Exceptions and Destructors*

Imagine an exception has occurred, the stack is unwinding
- locals that are objects are going out of scope, destructors run automatically

- if a destructor threw an exception, you would have to simultaneously deal with 2 live exceptions

If a program throw two live exceptions, the program automatically terminates.

By default, C++ considers all destructors to be a "noexcept"

```cc
~Node() noexcept(false){____}; //says destructors might throw
```

== Inheritance and Big Five

Recall that when a subclass destructor called, superclass destructor is called automatically

```cc
class Book{};
class Text:public Book{};

Text a{_, _, _, _};
Text b{a};

//Book and Text both have a default copy constructor(the below are defaults):
Book::Book(const Book &other): title{other.title}, author{other.author}, length{other.length}{}

//Copy Ctor and Copy Assignment Operator
Text::Text(const Text &other): Book(other), topic{other.topic}{}
//calls the book constructor, then copy fields specific to Text

Text &Text::operator=(const Text &other){
  Book::operator=(other);
  topic = other.topic;
  return this;
}
```
`Book` copy constructor does a field for field copy of all `Book`'fields

```cc

//INCORRECT
//                   rvalue ref      lval          lval
Text::Text(Text &&other): Book{other}, topic{other.topic} {}
//                        calls c ctor,  string c ctor

//CORRECT
Text::Text(Text &&other): Book{std::move(other)}, topic{std::move(other.topic)}{}


Text &Text::operator=(Text &&other){
  Book::operatpr=(std::move(other));
  topic = std::move(other.topic);
  return *this;
}
```
C++ provides `std::move(__)` which allow to convert lvalues to rvalues

```cc
class Book{
  ......
  virtual Book &operator=(const Book &other){___};
};
class Text:public Book{
public:
//               IMPORTANT, parameter type needs to match
  Text &operator=(const Book &other){
  ???
  }
};

Text t1{"A1", _, _, "cs"}; 
Text t2{"A2", _, _, "math"};
Book *p1 = &t1;
Book *p2 = &t2;
*p1=*p2; //Object assignment through base class pointer
//Boo::operator=() runs
//t1 becomes {"A2", _, _, "cs"};

Comic c1{___};
t1 = c1;//Becomes valid since Comic is a Book which will trigger the above copy assignment operator
```
There is a partial assignment problem, we can fix it by making the `Book` Assigmnent operator to be `virtual`

Then we have another problem where a `Text` can be assigned with `Comic`

We can choose to allow `t1=c1;` to compile and solve by dynamic casting(discussed in the future)

Alternatively we could disallow the assignment through base class pointers:

1. Bad solution: make `Book::operator=` to be `private`, subclasses do not have access
2. Bad solution: make `Book::operator=` to be `protected`, subclasses now have access but client code cannot perform `b1 = b2;`
3. Good solution: make `Book` class to be `abstract`

#tip[Base classes should be abstract for polymorphism]

```cc
class AbsBook {
  string title, author;
  int length;
  protected:
    AbsBook &operator=(const AbsBook &other){___};
    virtual ~AbsBook()=0; //Pure virtual to make the class abstract, requires implementaton, can leave content to have nothing.
};

class NormalBook: public AbsBook{
  public:
    NormalBook &operator=(const AbsBook &NormalBook other){
      AbsBook::operator=(other);
      return *this;
    }
};

NormalBook b1=___;
NormalBook b2=___;
b1=b2; //valid
AbsBook *p1 = &b1;
AbsBook *p2 = &b2;
*p1 = *p2; //invalid, disallowed
```

== Factory Method Pattern
Suppose we have a game consisting
- Enemy:
  - Turtle
  - Bullet
- Level:
  - Normal, generate turtle
  - Castle, generate Bullet

We do not want to hard code enemy construction
Want to delegate the enemy creation to the actual level

```cc
Player *p=___;
Level *l=___;
Enemy *e=___;

while(p->notDead()){
  //create enemy
  e = l->createEnemy(); //pure virtual, act as a factor of enemies
  //attack player 
}

class Level{
  public:
    virtual Enemy *createEnemy()=0;
};

class Normal:public Level{
  public:
    Enemy *createEnemy() override {//more turtles}
};

class Castle: public Level{
  public:
    Enemy *createEnemy() override {//More bullets}
};
```

This design pattern is also called the "virtual constructor pattern"
- Make the constructors of enemies `private`
- Make the factory method/virtual constructor a `friend`
Example of virtual constructors:
```cc
List::addToFront()

//Virtual constructors for List Iterator
List::begin();
List::end();
```

== Template Method Pattern(No relation to C++ templates)

A baseclass wants to fix some behaviour but allow subclasses to modify other behaviours

Using the previous game as example:

Two turtles: red and green
```cc
class Turtle{
  void drawHead{___}
  void drawFeet(___)
  virtual void drawShell()=0; //left for subclass of red and green
  public:
    void draw(){
      drawHead();
      drawShell();
      drawFeet();
    }
};
class RedTurtle:public Turtle{
  void drawShell() override {___}
};
```
The only way of drawing turtle is to use the `draw()`, we can only draw the entire turtle because the related methods are `private` 

The only control of the subclass is given to the color of the shell.

*Non-virtual Interface(NVI)*

Consider a public virtual method:

- `public___` part of the interface, promises some behaviour to the client 

- `virtual___` part of the interface, allows subclasses to modify some behaviour 

What guarantees do we give regarding behaviour if subclasses can change the behaviour? 

#defn[*Non-virtual Interface(NVI)* \

NVI requires
- all `public` methods to be non-`virtual`
- all `virtual` methods are `private/protected`
]

Example
```cc
class DigitalMedia {
  public:
    virtual void play()=0; //Not NVI, has public method that is virtual
};

class DigitalMedia{
  virtual doPlay()=0; //virtual method that is private
  ___;
  public:
    void play(){
      checkCopyright();
      showClipart();
      doPlay();
    }
};
```

#defn[*STL Map Class*

*Map* is a template class, parametrized on two types: key and value.

A non-ordered, implemented as a balanced binary search tree, associative container of key-value pairs.

That is whenever traverse the map, the key-value pairs are traversed in order of the keys.
]

```cc 
import <map>;
map<string, int> m;
m["abc"] = 5;
m["def"] = 10;
cout<<m["abc"]; //prints 5
cout<<m["xyz"]; //prints 0, default value for int because ["xyz", 0] got inserted
if (m.count("xyz")>0) {___;}
m.erase("def"); // removes the key-value pair with key "def"
for(auto &p:m){__} 
//`&p` is a `std::pair<key, value>`, which is a `struct` in the `utility` module. 
// We can direct access key-value pair using `p.first` and `p.second`
for(auto &[key, value]:m){key ___; value ___;} // using structure binding
```

Structure binding example:
```cc
Vec v{1, 2}; //as struct
int [x, y] = v;
int a[] = {1, 2, 3};
int [x, y, z] = a;
```

== Modules

A module can have multiple class and other standalone functions

*Coupling and Cohesion*

*Coupling*: how much a module depends on another.

  - Low coupling: if a module calls into another module passing and receiving basic values. 

  - High coupling: methods communicate passing custom types/friends

  - The goal is low coupling 

*Cohesion*: how related are elements within a module.

  - Low cohesion:  `<utility>`:  `std::pair, std::swap, std::move, ...`

  - High cohesion: `<vector>`: all elements achieve a specific task

  - The goal is high cohesion

Looking at different *dependencies*:

Impossible:

```cc
class A{int x; B b;};
class B{bool y; A a;};
```
Size of `A` is the size of `int` and `B`, but the size of `B` is the size of `bool` and `A`. Thus code not compile.

Possible:

```cc
class B;
class A{int x; B *b;};
class B{bool y; A *a;};
```

We cannot forward declare elements from another module. 
- both classes need to be in the same module(above example)

```cc
class C{};
class D:public C{___}; // D depends C
class E{C c;}; // E depends C
```
It is possible to export `C, D, E` to separately but `C` must be compiled before `D` and `E`

*Decouple Interface*

```cc
class ChessBoard{
  //represents the state of the chess board;
  cout << "Your turn";

  //Fixes
  ostream &out;
  ChessBoard(ostream &out): out{out} {};
  out <<"Your turn";
};
```
Bad design 
- hardcoded output to `stdout`, can store it in an `ostream` in a field and output to it.

Single-Responsibility Principle: a class should have only one reason to change
- chessboard will only maintain state
- where does game logic go? how do you produce output?
- `main` function is never an appropriate place to put code(game logic)

*Model View Controller(MVC)*

Model: maintain states \
View: outout (text/graphical/...) \
Controller: 
  - maintains communication between the model and the view
  - game logic

View may subscribe to either model or Controller

== Exception Safety

Consider
```cc
void f(){
  MyClass *p = new MyClass;
  MyClass m; 
  //Does not leak memory(stack allocated, automatically called when out of scope by calling its destructor. 
  // During stack unwinding, stack objects are destroyed)
  g(); //does not leak memory
  delete p;
}
```

This could leak memory. If `g` throws an exception `delete p;` never executes, leaking memory.

Fix, but a bad way
```cc
void f(){
  MyClass *p = new MyClass;
  try{
    MyClass m; 
    g(); 
  }catch(...){
    delete p; //if exception occur
    throw;
  }
  delete p; //if no exception occur
}
```

*RAII: Resource Acquisition Is Initialization*

Wrap every resource within a stack-allocaed object whose destructor releases/frees the resource.

Use RAII on heap memory

```cc
import <memory>
Template class std::unique_ptr<T>;
```
- takes and store a pointer of `T *`
- destructor calls delete to the pointer
- we can use `unique_ptr` *object* exactly how we would use a pointer to `T`(overload `*, ->`)


Fix, but a bad way
```cc
void f(){
  std::unique_ptr<MyClass> p {new MyClass}; //p is an object that act like pointer.
  //auto p = make_unique<MyClass>(); is an alternative way
  MyClass m;
  g();
}
```

The copy constructor and copy assignment operator are disabled since that would lead to double free.

*Pointers and Ownership*

- A `unique_ptr` object owns the pointer it wraps
- We can still use "raw pointers" to the heap object always remember that we do not use that object.
- `unique_ptr` supports a get method to access the raw pointer.

```cc
void f(unique_ptr<T> a){___} //caller transfered ownership to f
//    move constructor 

void g(T *b){___} //we used to do this, but know we cannot free b due to ownership

unique_ptr<T> h(___){___} //ownership passed to caller

T *i(){___} //raw pointer, caller do not have ownership
```

STL class: `std::shared_ptr<T>` 
- allows multiple `shared_ptr` objects o point to the same heap object
- reference counting, everytime a copy is made, a reference count is incremented
- the destructor decrements the reference count 
- the heap object is destroyed when the reference count is 0


```cc
void f(){
  shared_ptr<MyClass> p{new MyClass};
  {auto q{p}}; //copy constructing q to p in a scope
  //q is out of scope, q will decrement reference count
}
//p is out of scope, p will decrement reference count, now count is 0, MyClass object is destroyed
```

Exception Safety levels

1. Basic Guarantee: if an exception occurs, the program is in a valid but unsepcified state. No memory leak, no corrupted data structures, no broken invariant.

2. Strong Guarantee: if an exexption occurs during execution a function, the program will be in the state as if the function is not called(atomicity)

3. No-throw Guarantee: the function may have an exception but finishes the task


```cc
class A{__};
class B{__};
class C{
  A a;
  B b;
  void foo(){
    a.method1();//strong guarantees
    b.method2();//strong guaratnees
  }
};
```
Does `foo` has a strong guarantee? No.