program string
    implicit none
  
    character(len=10) :: first_name
    character(len=10) :: last_name
    character(21) :: full_name

    character(:), allocatable :: occupation
    character(:), allocatable :: hobby

    print *, 'Enter your first name: '
    read(*,*) first_name

    print *, 'Enter your last name: '
    read(*,*) last_name
  
    ! String concatenation
    full_name = first_name // ' ' // last_name
  
    print *, 'Your full name is: ' // full_name

    ! Explicit allocation statement
    allocate(character(10) :: occupation)
    occupation = 'Programmer'

    ! Allocation on assignment
    hobby = 'Bowling'

    print *, 'Occupation: ' // occupation
    print *, 'Hobby: ' // hobby
  
end program string