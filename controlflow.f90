program controlflow
    implicit none

    real, parameter :: pi = 3.14159265
    integer, parameter :: n = 10
    real :: result_sin(n)

    logical :: a
    logical :: b
    integer :: c
    integer :: d
    integer :: i
    integer :: j

    a = .true.
    b = .false.
    c = 10
    d = 20

    if (c == d) then ! Alternative: .eq.
        print *, 'C is equal to D'
    else
        print *, 'C is not equal to D'
    end if

    if (c /= d) then ! Alternative: .neq.
        print *, 'C is not equal to D'
    else
        print *, 'C is equal to D'
    end if

    if (c > d) then ! Alternative: .gt.
        print *, 'C is greater than D'
    else
        print *, 'C is not greater than D'
    end if

    if (c < d) then ! Alternative: .lt.
        print *, 'C is lesser than D'
    else
        print *, 'C is not lesser than D'
    end if

    if (c >= d) then ! Alternative: .ge.
        print *, 'C is greater or equal to D'
    else
        print *, 'C is not greater or equal to D'
    end if

    if (c <= d) then ! Alternative: .le.
        print *, 'C is lesser or equal to D'
    else
        print *, 'C is not lesser or equal to D'
    end if

    if (a .and. b) then
        print *, 'A and B are both true'
    else
        print *, 'A and B are not both true'
    end if

    if (a .or. b) then
        print *, 'A or B is true'
    else
        print *, 'A and B are false'
    end if

    if (.not. b) then
        print *, 'B is false'
    else
        print *, 'B is true'
    end if

    if (a .eqv. b) then
        print *, 'A and B are logically equivalent'
    else
        print *, 'A and B are not logically equivalent'
    end if

    if (a .neqv. b) then
        print *, 'A and B are logically opposite'
    else
        print *, 'A and B are not logically opposite'
    end if

    print *, 'Starting a do loop from 1 to 10...'
    do i=1,10
        print *, 'Current counter variable: ', i
    end do
    print *, 'End of do loop.'

    print *, 'Starting a do loop from 1 to 10 skipping 2...'
    do i=1,10,2
        print *, 'Current counter variable: ', i
    end do
    print *, 'End of do loop.'

    print *, 'Starting a do-while loop from 1 to 10...'
    i = 1
    do while (i < 11)
        print *, 'Current counter variable: ', i
        i = i + 1
    end do
    ! Note: Here i = 11
    print *, 'End of do-while loop.'

    print *, 'Starting a do loop from 1 to 100...'
    do i=1, 100
        if (i > 10) then
            print *, 'Counter value is greater than 10. Interrupting the loop!'
            exit ! Interrupt the loop. Other languages common equivalent: break
        end if
        print *, 'Current counter variable: ', i
    end do
    ! Note: Here i = 11
    print *, 'End of do loop.'

    print *, 'Starting a do loop from 1 to 10...'
    do i=1,10
        if (mod(i,2) == 0) then
            print *, 'Counter value is even. Proceed to the next loop.'
            cycle  ! Proceed to the next iteration of the loop. Other languages common equivalent: continue
        end if
        print *, 'Current counter variable: ', i
    end do
    print *, 'End of do loop.'

    ! Note: When used within nested loops, the cycle 
    ! and exit statements operate on the inner-most loop.

    print *, 'Starting an outer do loop from 1 to 10...'
    outer_loop: do i=1,10
        print *, 'Starting an inner do loop from 1 to 10...'
        inner_loop: do j=1,10
            if ((j+i) > 10) then  ! Print only pairs of i and j that add up to 10
                print *, 'Loop counter values sum is greater than 10. Proceed to the next outer loop.'
                cycle outer_loop  ! Go to the next iteration of the outer loop
            end if
            print *, 'I =', i, ' J =', j, ' Sum =', j + i
        end do inner_loop
        print *, 'End of an inner do loop.'
    end do outer_loop
    print *, 'End of an outer do loop.'

    print *, 'Starting a concurrent do loop from 1 to 10...'
    do concurrent (i=1:n)
        result_sin(i) = sin(i * pi / 4.)
    end do
    print *, 'End of an outer do loop. result_sin = ', result_sin
    
    
end program controlflow