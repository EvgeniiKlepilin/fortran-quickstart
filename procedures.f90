! Print matrix A to screen
subroutine print_matrix(n,m,A)
    implicit none

    ! The dummy argument types and attributes are declared 
    ! within the body of the subroutine just like local variables.

    integer, intent(in) :: n
    integer, intent(in) :: m
    real, intent(in) :: A(n,m)

    ! Note the additional intent attribute when declaring 
    ! the dummy arguments; this optional attribute signifies 
    ! to the compiler whether the argument is ‘read-only’ 
    ! (intent(in)) ‘write-only’ (intent(out)) or ‘read-write’ 
    ! (intent(inout)) within the procedure. In this example, 
    ! the subroutine does not modify its arguments, hence 
    ! all arguments are intent(in).

    ! Tip: It is good practice to always specify the intent 
    ! attribute for dummy arguments; this allows the compiler 
    ! to check for unintentional errors and provides self-documentation.
  
    integer :: i
    do i=1,n
        print *,A(i,1:m)
    end do
  
end subroutine print_matrix

! L2 Norm of a vector
function vector_norm(n, vec) result (norm)
    implicit none

    integer, intent(in) :: n
    real, intent(in) :: vec(n)
    real :: norm
  
    norm = sqrt(sum(vec **2))

    ! Tip: It is good programming practice for functions not 
    ! to modify their arguments - i.e. all function arguments 
    ! should be intent(in) - such functions are known as pure 
    ! functions. Use subroutines if your procedure needs to modify 
    ! its arguments.
  
end function vector_norm

program procedures
    implicit none

    real :: mat(10,20)
    real :: v(9)
    real :: vector_norm
  
    mat(:,:) = 0.0

    call print_matrix(10,20,mat)

    v(:) = 9

    print *, 'Vector norm = ',vector_norm(9,v)
    
end program procedures