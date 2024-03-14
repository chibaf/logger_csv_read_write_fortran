      real*4 d(9),dd
      do while (2>1)
        read(*,*,end=200) (d(i),i=1,9)
        dd=0.0
        do i=2,9
          dd=dd+abs(d(i))
        end do
        if (dd /= 0.0) then
          write(*,100)(d(i),i=1,9)
        end if
      end do
  100 format(F9.2,",",7(F10.6,","),F10.6)
  200 stop
      end