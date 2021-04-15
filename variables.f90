program variables
    implicit none

    ! Important: Always use the implicit none statement at 
    ! the beginning of each program and procedure. Implicit 
    ! typing is considered bad practice in modern programming 
    ! since it hides information leading to more program errors.

    integer :: number
    real :: float
    complex :: imaginary
    character :: string
    logical :: boolean

    ! Watch out for assignment at declaration: integer :: amount = 1. 
    ! This is NOT a normal initialisation; it implies the save 
    ! attribute which means that the variable retains its value 
    ! between procedure calls. Good practice is to initialise 
    ! your variables separately to their declaration.

    number = 10
    float = 20.5
    imaginary = (1.0, -0.5)
    string = 'A'
    boolean = .true. ! or .false.

    print *, 'The value of number (integer) is: ', number
    print *, 'The value of float (real) is: ', float
    print *, 'The value of imaginary (complex) is: ', imaginary
    print *, 'The value of string (character) is: ', string
    print *, 'The value of boolean (logical) is: ', boolean

    print *, 'Please enter a new number: '
    read(*,*) number

    print *, 'Your new number is: ', number
    
end program variables