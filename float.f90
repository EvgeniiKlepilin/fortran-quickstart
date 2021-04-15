program float
    use, intrinsic :: iso_fortran_env, only: sp=>real32, dp=>real64
    use, intrinsic :: iso_c_binding, only: csp=>c_float, cdp=>c_double
    implicit none
  
    real(sp) :: float32
    real(dp) :: float64
    real(csp) :: c_float32
    real(cdp) :: c_float64
  
    float32 = 1.0_sp
    float64 = 1.0_dp
    c_float32 = 1.0_sp
    c_float64 = 1.0_dp

    print *, 'real(sp) = ', float32
    print *, 'real(dp) = ', float64
    print *, 'real(csp) = ', c_float32
    print *, 'real(cdp) = ', c_float64
  
  end program float