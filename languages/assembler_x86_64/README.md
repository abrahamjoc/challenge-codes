## Assembler exercises

These exercises were resolved using Linux and NASM Assembler x86_64 with GCC in honor to my curiosity for knowing how
works an OS in low-level and to learn Linux interruptions for making an OS from scratch.

#### How to run an exercise:
```shell
make e${N}
```

### Exercise Table:
| N   | Exercise         | Description                                                            | Run     |
|-----|------------------|------------------------------------------------------------------------|---------|
| 1   | hello world      | *Writes "Hello, World!" to the console using only system calls.*       | make e1 |
| 2   | external printf  | *Writes "Hello, World!" to the console using printf from stdio lib c.* | make e2 |
| 3   | sum function     | *Return "the result of a sum function with 2 values".*                 | make e3 |
| 4   | print argv       | *Writes "arguments" passed it into the program to the console.*        | make e4 |
| 5   | max of 3 numbers | *Return the maximum number between 3 numbers without function.*        | make e5 |


### Topics, Concepts and References of Interest:
| Topic                         | Link                                                                             |
|-------------------------------|----------------------------------------------------------------------------------|
| Assembler                     | https://en.wikipedia.org/wiki/Assembly_language                                  |
| x86 Instruction Set           | https://www.javatpoint.com/instruction-set-of-8086                               |
| x86 Architecture              | https://sites.google.com/site/jmruizde/microprocesador8086                       |
| Calling Conventions           | https://en.wikipedia.org/wiki/X86_calling_conventions                            |
| System V ABI                  | https://wiki.osdev.org/System_V_ABI                                              |
| ELF                           | https://wiki.osdev.org/Executable_and_Linkable_Format                            |
| Linux System Call Table       | https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/              |
| NASM x86 Assembly             | https://www.cs.uaf.edu/2005/fall/cs301/support/x86/nasm.html                     |
| Runtime Library               | https://en.wikipedia.org/wiki/Runtime_library                                    |
| crt0 (C Runtime)              | https://en.wikipedia.org/wiki/Crt0                                               |
| Linux GNU Lib C (glibc)       | https://en.wikipedia.org/wiki/Glibc                                              |
| Code Segment                  | https://en.wikipedia.org/wiki/Code_segment                                       |
| Data Segment                  | https://en.wikipedia.org/wiki/Data_segment                                       |
| Call Stack                    | https://en.wikipedia.org/wiki/Call_stack                                         |
| The Stack                     | https://www.installsetupconfig.com/win32programming/processtoolhelpapis12_1.html |
| Understanding Frame Pointers  | https://people.cs.rutgers.edu/~pxk/419/notes/frames.html                         |
| Anatomy of a system call      | https://lwn.net/Articles/604287/                                                 |
| System Call x86 I32 & x64     | https://lwn.net/Articles/604515/                                                 |
| Von Neumann Architecture      | https://en.wikipedia.org/wiki/Von_Neumann_architecture                           |
| Harvard Architecture          | https://en.wikipedia.org/wiki/Harvard_architecture                               |
| Modified Harvard Architecture | https://en.wikipedia.org/wiki/Modified_Harvard_architecture                      |


### Media Links:
| Type  | Topic                                                                                                                                                                                                                                                      |
|-------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Image | [Evolution of x86 Registers](https://static.packt-cdn.com/products/9781789610789/graphics/assets/1309d9ef-7564-4b7c-a31f-ce510cfb19e5.png)                                                                                                                 |
| Image | [Segment Registers](https://www.tenouk.com/Bufferoverflowc/Bufferoverflow1_files/image013.png)                                                                                                                                                             |
| Image | [x86_64 Stack Frame](https://2.bp.blogspot.com/-gNd5RTGpQ1Q/WKKKMbnpRJI/AAAAAAAAALg/nNAZeqHW9dEO1RlzdgyJRc5f7dgmUbdHACLcB/s1600/stack-convention.png)                                                                                                      |
| Image | [Stack Frame Growing and Shrinking](https://thinkingeek.com/wp-content/uploads/2017/05/stack-size.png)                                                                                                                                                     |
| Image | [Stack Frame Prologue & Epilogue](https://www.researchgate.net/profile/Jun-Zhang-57/publication/329007575/figure/fig1/AS:693775961698304@1542420487728/Stack-frame-and-related-operations.jpg)                                                             |
| Image | [Von Neumann and Harvard Architecture](https://www.currentschoolnews.com/wp-content/uploads/2020/03/Von-Neuman-Vs-Harvard-Architecture.png)                                                                                                                |
| Image | [Von Neumann vs Harvard Architecture](https://eevibes.com/wp-content/uploads/2022/02/VON-Neumann-Vs-Harvard-Architecture.png)                                                                                                                              |
| Image | [Von Neumann Cache Architecture](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Computer_Systems_-_Von_Neumann_Architecture_Large_poster_anchor_chart.svg/1280px-Computer_Systems_-_Von_Neumann_Architecture_Large_poster_anchor_chart.svg.png) |
| Video | **[x86 Assembly Crash Course](https://www.youtube.com/watch?v=75gBFiFtAb8)**                                                                                                                                                                               |
| Video | **[x86/x64 Assembly Language Intro and Valuable Tips](https://www.youtube.com/watch?v=2i935mP6hUM)**                                                                                                                                                       |
| Video | [Funcionamiento De Los Registros Del CPU](https://www.youtube.com/watch?v=smYnd5Kq2tU)                                                                                                                                                                     |
| Video | [x86-64 Assembly Programming: Procedures and the Call Stack](https://www.youtube.com/watch?v=QZt9dQ-3B9U)                                                                                                                                                  |
| Video | [32 bit Stack Frames - Illustrated using a simple function call in x86 assembly](https://www.youtube.com/watch?v=q49MQ6UgsHs)                                                                                                                              |
| Video | [Introduction to the Stack Pointer Register](https://www.youtube.com/watch?v=n8_2y5E8N4Y)                                                                                                                                                                  |
| Video | [La Pila, instrucciones PUSH y POP](https://www.youtube.com/watch?v=lEZ4ER2Q1mg)                                                                                                                                                                           |
| Video | [Concept of Stack Frames](https://www.youtube.com/watch?v=lVMYUxGGHRM)                                                                                                                                                                                     |
| Video | [Understanding Base Pointer Register](https://www.youtube.com/watch?v=1w6BEJGmeuU)                                                                                                                                                                         |
| Video | [Understanding Procedure Call](https://www.youtube.com/watch?v=FKnCk9WZrt4)                                                                                                                                                                                |
| Video | [Understanding Ret](https://www.youtube.com/watch?v=dshQZNpMZss)                                                                                                                                                                                           |
| Video | [In-depth: ELF - The Extensible & Linkable Format](https://www.youtube.com/watch?v=nC1U1LJQL8o)                                                                                                                                                            |
| Video | **[Ensamblador x86 extremadamente detallado](https://www.youtube.com/watch?v=oLsk9J_mViE&list=PLZw5VfkTcc8Mzz6HS6-XNxfnEyHdyTlmP)**                                                                                                                        |
| Video | **[Introducción a ensamblador x86 de 32 bits](https://www.youtube.com/watch?v=eAtIQWEu1bw)**                                                                                                                                                               |
| Video | **[Ámbitos, parámetros y funciones en ensamblador x86 de 32 bits](https://www.youtube.com/watch?v=_TsD2o2EB-8)**                                                                                                                                           |
| Video | **[Programando en ensamblador x86 de 32 bits. Primeros pasos.](https://www.youtube.com/watch?v=a9YjhWWnKQ4)**                                                                                                                                              |
| Video | **[Cómo funcionan ensamblador y linker](https://www.youtube.com/watch?v=bK9MYDZjXdY)**                                                                                                                                                                     |
| Video | [CppCon 2018 (Matt Godbolt): The Bits Between the Bits: How We Get to main()](https://www.youtube.com/watch?v=dOfucXtyEsU)                                                                                                                                 |
| Video | [COMO FUNCIONA la memoria RAM - Nivel técnico MEDIO-ALTO](https://www.youtube.com/watch?v=4i5_07y5w6c)                                                                                                                                                     |
| Video | [Qué es un Compilador y cómo funciona](https://www.youtube.com/watch?v=rsdgu-vxjio)                                                                                                                                                                        |


### References for when you are programming:
| Type  | Topic                                                                                                                              | Description                                       |
|-------|------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------|
| Image | [x86_64 System V ABI Args](https://images4.programmerclick.com/795/30/303724c2b0b8c90f201fb05cadaa8563.png)                        | Function arguments in x86_64 System V ABI         |
| Image | [Directive Data Allocation Bytes](https://slideplayer.com/slide/4552449/15/images/8/Data+Allocation+%28cont%E2%80%99d%29.jpg)      | How many bytes are in x86_64 NASM Directives      |
| Image | [Directive Data Allocation Data Type](https://slideplayer.com/slide/4552449/15/images/13/Data+Allocation+%28cont%E2%80%99d%29.jpg) | What data type belongs to a NASM x86_64 Directive |
| Image | [Modifiers in Bits](https://slidetodoc.com/presentation_image_h/845310c8f35f2b1e801a9590f0752472/image-28.jpg)                     | Casting address memory in MOV                     |
| Web   | [NASM x86 Assembly Quick Reference "Cheat Sheet"](https://www.cs.uaf.edu/2005/fall/cs301/support/x86/nasm.html)                    | Data Sheet which contains all mnemonics for NASM  |


### Debugging Tools:
| Tool Name              | Description                                 | Link                                                            |
|------------------------|---------------------------------------------|-----------------------------------------------------------------|
| 8 bit Asm Simulator    | Basic concepts around registers and stack   | https://schweigi.github.io/assembler-simulator/                 |
| 16 bit Asm Simulator   | Example of Scheduler and Dispatcher         | https://parraman.github.io/asm-simulator/                       |
| GodBolt                | A compiler explorer online                  | https://godbolt.org/                                            |
| EDB Debugger           | Similar to Ollydbg but for Linux            | https://github.com/eteran/edb-debugger/                         |
| Simple Stack Simulator | A web for explaining easily what is a stack | https://www.cs.usfca.edu/~galles/visualization/SimpleStack.html |
