program day01_part01
  implicit none

  integer :: i, j, diff, diff2
  integer, dimension(200) :: expenseReport

  open(1, file='day01_input.txt', status='old')
  do i = 1,200
      read(1,*) expenseReport(i)
  end do
  close(1)

  iloop: do i = 1, 200
      diff = 2020 - expenseReport(i)

      jloop: do j = 1, 200
        if (i .NE. j) then
          diff2 = diff - expenseReport(j)
          if ( any( expenseReport==diff2 ) ) then
            print *, 'Answer: ', expenseReport(i) * expenseReport(j) * (2020 - (expenseReport(i) + expenseReport(j)))
            exit iloop
          end if
        end if
      end do jloop
  end do iloop

end program day01_part01
