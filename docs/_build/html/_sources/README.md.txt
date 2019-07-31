- [f2org](#org94a3803)
  - [Run the code](#orga82eead)
  - [Workflow for f2org](#org5a350d3)
  - [Insert documentation in the code](#org8f55daa)
    - [Normal lines `!>`](#org0d72c05)
    - [New lines `...`](#org1fdebd7)
    - [Block documentation `!=>>` and `!=<<`](#org99af481)
    - [Begin and end of the variables list `!!>>` and `!!<<=`](#org19e0a9d)
    - [Code blocks `!->>`, `!-<<` and `!-><`](#orgb8a2d71)
    - [Org mode options `!=OH`](#org6b87fe2)
  - [Rules for the Fortran Code](#orgb7a4f65)
  - [Use f2org with Sphinx](#org828173c)
  - [Todo list<code>[2/3]</code>](#orgab55349)


<a id="org94a3803"></a>

# f2org

a simply python program for `f90` module file auto documentation. The auto-generated documentation is Emacs `org-mode` file.

By using some simple tool, such as `pandoc`, it can be converted to many other formats.


<a id="orga82eead"></a>

## Run the code

-   **Step 1**: generate the `org` file. For example, `example.f90` in `src`,

```bash
python example.f90 -o example.org
```

-   **Step 2**: use `pandoc` to get the target documentation. For example, `html`

```bash
pandoc example.org -o example.html
```


<a id="org5a350d3"></a>

## Workflow for f2org

The workflow for `f2og` is

-   Determine the start and end of each code block
-   Depending on the type of the code block extract the `header` and `body` information and export to `org` file.


<a id="org8f55daa"></a>

## Insert documentation in the code


<a id="org0d72c05"></a>

### Normal lines `!>`

For a line starting with `!>`, the text after `!>` will be extracted to the `org` file.


<a id="org1fdebd7"></a>

### New lines `...`

When you wish to start a new paragraph, inset `\\\` at the end of the last line.


<a id="org99af481"></a>

### Block documentation `!=>>` and `!=<<`

The documentation for the code block (**module**, **function**, and **subroutine**) should come before the code block. It should be noted that, only lines startin with `!>` will become a part of the documentation, while lines starting with `!` will not.


<a id="org19e0a9d"></a>

### Begin and end of the variables list `!!>>` and `!!<<=`

By inserting the `!!>>` above the starting of the variable list and `!!<<` below the end of the variable list (Here the variable list is the variable that you would like to show in the documentation, exclude the variables in the function/subroutine interface).


<a id="orgb8a2d71"></a>

### Code blocks `!->>`, `!-<<` and `!-><`

To export some comments or source code, one option is to add `!->>` and `!-<<` to export the


<a id="org6b87fe2"></a>

### Org mode options `!=OH`

Some `org-mode` headers, such as title, author, comes with `!=OH`


<a id="orgb7a4f65"></a>

## Rules for the Fortran Code

In order to make `f2org` work properly, the `Fortran` code should satisfy the following requirement:

-   In the current version, **only** file with one `module` in a file is supported. If you have a `program file`, a file with multiple `modules` or a file without `module`, `f2org` will not work

-   The Documentation for the code block should be placed before the begining of the block.

-   For each clode block, `Implicit None` is essentlal.

-   For `subroutine`, The `intent` statement for the IO variables is essential.

-   For `function`, only the programming way `function foo(a,b) output(c)` will be

detect correctly.

-   To export correctly, always add `::` while declear the variables.


<a id="org828173c"></a>

## Use f2org with Sphinx

See `docs`


<a id="orgab55349"></a>

## Todo list<code>[2/3]</code>

-   [X] add comments to code
-   [X] write manual
-   [ ] Support for more file types
