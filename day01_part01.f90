program day01_part01
  implicit none

  integer :: i
  integer :: diff
  integer, dimension(200) :: expenseReport

  open(1, file='day01_input.txt', status='old')
  do i = 1,200
      read(1,*) expenseReport(i)
  end do
  close(1)

  do i = 1, 200
      diff = 2020 - expenseReport(i)
      if ( any( expenseReport==diff ) ) then
        print *, 'Answer: ', expenseReport(i) * diff
        exit
      end if
  end do

end program day01_part01
