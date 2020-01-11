# MIPS program that generates sequence 1,2,3,6,9,18,... with infinite loop

      lw $t0, 16($zero)	  # load 1 into $t0
      sw $t0, 48($zero)	  # displays 1
loop: add $t1, $t0, $t0 	  # add to itself
      sw $t1, 48($zero)		  # display
      add $t0, $t0, $t1		  # add to previous value
      sw $t0, 48($zero)           # display
      j loop 			  # infinite loop