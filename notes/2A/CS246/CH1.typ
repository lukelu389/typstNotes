#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Intro to Object Oriented Programming"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

The course is taught in 3 perspectives

1. Programmer's perspective: efficiency, bug face
2. Designer's perspective: basic software engineering, desing patterns
3. Compiler's perspective: what must a compiler to to support a language feature

#info[*C++ History*\

Invented in 1980s \

C with classes is the earlier name of C++

Currently using C++20 with "modules" introduced
]

*Hello World C++ Program*

```cc 

import<iostream>;

using namespace std;

int main(){
  cout << "Hello World" << endl;
}

```