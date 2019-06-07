!----------------------------------------------------------
!> This is the example file for f2org. The f2org is used to
!> extract the comments from the code to emacs-org mode.
!>
!> Some notes:
!> - *Only* work for module file
!> - Some code should be written in a specific way, such
!>   as the =intent in= and =intent out=.
!> - =pandoc= can be used to convert =.org= to =.md= or =rst=.
!>
!----------------------------------------------------------
!=OH #+author: Zhouteng Ye
!=OH #+date: June 5, 2019
!=OH #+options: ^:nil
!----------------------------------------------------------
Module example_Module
  Use mod_1
  Use mod_2

  Implicit None

  Integer :: foo1
  Real(4) :: foo2

Contains

  !----------------------------------------------------------
  !> some scripts for =example_subroutine_1=
  !----------------------------------------------------------
  Subroutine example_subroutine_1
    use mod_3
    Implicit None

    Integer :: foo3

    Print('some_scripts1')
    Print('some_scripts2')
    Print('some_scripts3')

    !> this line will ...
    !> continue
    !> but not this
    !> line
    
  End Subroutine example_subroutine_1

  !----------------------------------------------------------
  !> =>>
  !> Some scripts for =example_subroutine_2=
  !> =<<
  !----------------------------------------------------------
  Subroutine example_subroutine_2(foo4, foo5, foo6)
    use mod_3
    Implicit None

    Integer, Intent(In) :: foo4
    Real(4), Dimension(2,2), Intent(In) :: foo5
    Real(4), Intent(Out) :: foo6

    !!>>
    Integer :: foo7
    Integer :: foo8
    !!<<
    Integer :: foo9

    Print('some_scripts1') !->>
    Print('some_scripts2')
    Print('some_scripts3') !-<<

  End Subroutine example_subroutine_2

  !----------------------------------------------------------
  !> Some scripts for =example_function=
  !----------------------------------------------------------
  Function example_function(foo_1, foo_2) Result(foo_3)
    Implicit None

    Integer, Intent(In) :: foo_1
    Real(4), Dimension(2,2) :: foo_2
    Real(4), Intent(Out) :: foo_3

    Print('some_scripts1') !-><

  End Subroutine example_subroutine_2

End Module example_Module
