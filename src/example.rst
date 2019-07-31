example\ :sub:`Module`
======================

This is the example file for f2org. The f2org is used to extract the
comments from the code to emacs-org mode.

Some notes:

-  **Only** work for module file
-  Some code should be written in a specific way, such as the
   ``intent in`` and ``intent out``.
-  ``pandoc`` can be used to convert ``.org`` to ``.md`` or ``rst``.

-  Use of modules:

.. code:: fortran

   Use mod_1
   Use mod_2

-  list of variables:

.. code:: fortran


   Integer :: foo1
   Real(4) :: foo2

example_subroutine_1
--------------------

-  Use of modules:

.. code:: fortran

   use mod_3

input variables

**None**

output variables

**None**

-  list of local variables:

this line will

continue but not this line

example_subroutine_2
--------------------

Some scripts for ``example_subroutine_2``

-  Use of modules:

.. code:: fortran

   use mod_3

input variables

.. code:: fortran

   Integer, Intent(In) :: foo4
   Real(4), Dimension(2,2), Intent(In) :: foo5

output variables

.. code:: fortran

   Real(4), Intent(Out) :: foo6

-  list of local variables:

.. code:: fortran

   Integer :: foo7
   Integer :: foo8

.. code:: fortran

   Print('some_scripts1') !->>
   Print('some_scripts2')
   Print('some_scripts3') !-<<

example_function
----------------

-  Use of modules:

**None**

input variables

.. code:: fortran

   Integer, Intent(In) :: foo_1
   Real(4), Dimension(2,2) :: foo_2

output variables

.. code:: fortran

   Real(4), Intent(Out) :: foo_3

-  list of local variables:

**None**

.. code:: fortran

   Print('some_scripts1') !-><

