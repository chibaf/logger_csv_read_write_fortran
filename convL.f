      real*4 d(11),dd
      do while (2>1)
        read(*,*,end=200) (d(i),i=1,11)
        dd=0.0
        do i=2,11
          dd=dd+abs(d(i))
        end do
        if (dd /= 0.0) then
          write(*,100)(d(i),i=1,11)
        end if
      end do
  100 format(F9.2,",",9(F8.4,","),F8.4)
  200 stop
      end