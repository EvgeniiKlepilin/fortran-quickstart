program arrays
    implicit none

    ! Important: Arrays in Fortran are one-based by default; 
    ! this means that the first element along any dimension is at index 1.
  
    ! 1D integer array
    integer, dimension(10) :: array1
  
    ! An equivalent array declaration
    integer :: array2(10)
  
    ! 2D real array
    real, dimension(10,10) :: array3
  
    ! Custom lower and upper index bounds
    real :: array4(0:9)
    real :: array5(-5:5)

    integer :: i
    integer :: array6(10)           ! 1D integer array of 10 elements
    integer :: array7(10,10)        ! 2D integer array of 100 elements

    integer, allocatable :: array8(:)
    integer, allocatable :: array9(:,:)

    array6 = [1,2,3,4,5,6,7,8,9,10] ! Array constructor
    array6 = [(i,i=1,10)]           ! Implied do loop constructor
    array6(:) = 0                   ! set all elements to zero
    array6(1:5) = 1                 ! set first five elements to one
    array6(6:) = 1                  ! set all elements after five to one
    
    print *,array6(1:10:2)          ! print out elements at odd indices
    print *,array7(:,1)             ! print out the first column in a 2D array
    print *,array6(10:1:-1)         ! print an array in reverse

    allocate(array8(10))
    allocate(array9(10,10))

    ! Note: Allocatable local arrays are deallocated 
    ! automatically when they go out of scope.

    deallocate(array8)
    deallocate(array9)
  
  end program arrays