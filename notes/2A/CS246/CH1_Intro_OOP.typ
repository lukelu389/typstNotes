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

Program "01-intro/hello.cc"
```cc

import <iostream>; 

using namespace std;

int main(){ // required for C++ to have return type as int for main()
  cout << "Hello World" << endl;
}

```

Command for running C++ programs:

Compile the system header

```sh
g++20h

g++15.2.0           #compiler using

-std=c++20          #standard

-fmodules-ts        #use module tech specs

-c                  #separately compiling a part of a program

-x c++system-header

iostream            #module name
```
\
\
\
\
\
\
\
\
\

Then compile the rest of the program
```sh
g++20

g++15.2.0           #compiler using

-std=c++20          #standard

-fmodules-ts        #use module tech specs

-wall               #warn all

-g                  #debug

hello.cc

-o                  # output

```

For this course, `include`, `stdio.h`, `printf` are banned. 

Instead ```cc std::cout << value <<std::endl ``` is used. 

We can avoid ```cc std::``` by having ```cc using namespace std```

\

"```cc <<```" is output operator, "```cc >>```" is input operator

\
Importing ```cc iostream``` gives access to three variables:

#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [`std::cout`], [type: `ostream`], [```cc cout << x;
    //print values stoerd in x on stdout```],
    [`std::cerr`],  [type: `ostream`], [```cc cerr << "Error" << error << endl;
    //print error message to stderr```],
    [`std::cin`], [type: `istream`], [```cc cin >> x;  
    //reads from stdin to store in x ```]
    )

Program "01-intro/plus.cc"
```cc 
import <iostream>;

using namespace std;

int main(){
  int x, y;
  cin >> x >> y;
  cout << x+y << endl;
}

```
\
\
\
\
 
#info[*I/O information*
- Reading ints ignores leading white spaces
- After attempting to read, checking for success is important
- If a reads fails, th expression "```cc cin.fail()```" will be true
  - If a read fails, all the subsequent reads fails. (unless specified)

  - When a read fails, we most acknowledge the failure and to attempt resuming reading using 
  
    - ```cc cin.clear(); ``` to clear the flag
    - ```cc cin.ignore(); ``` to ignore the one that caused the flag to be raised.

- If a read fails due to end of input(eof), the expression "```cc cin.eof()```" will be true

\

*Implicit/Automatic Conversion*: 

C++ will automatically treat `cin` as a `boolean` value: ```cc !cin == cin.fail()```
]

\
Program "02-io/readInts.cc"

Goal: Read and print all ints from stdin. Stop in case of failure.

```cc 
import <iostream>;
using namespace std;

int main(){
  int x;
  while(true){
    cin >> x; //expression statement, and evaluates to cin
    if(cin.fail()) break; //we can replace "cin.fail()" to "!(cin >> x)"" or "!cin"
    cout << x << endl;
  }
}
```

Program "02-io/readInts5.cc"


Goal: Read and print all ints from stdin. Ignore all non-ints. Stop at eof.


```cc 
import <iostream>;
using namespace std;

int main(){
  int x;
  while(true){
    if(cin >> x){
      cout << x << endl;
    }elif(cin.eof()){
      break;
    }else{
      cin.clear(); //clear the flag raised when reads fails for reading non-ints
      cin.ignore(); //ignore the one that caused the flag to be raised
    }
  }
}
```

*I/O manipulators*

```cc 

int x = 95;
cout << hex << x; //print in hexadecimal
cout << dec; //go back to base-10

//boolalpha, setprecision, skipws, noskipws, etc...
```

