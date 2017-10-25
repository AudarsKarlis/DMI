#!/bin/bash

#if () then ... elif () then ... else ... fi
a=$1
if (( $a > 0 ))
then
   echo "Izdruka no galvenā zara (jā gadījums) - $a > 0"
elif (( $a == 0 ))
then
   echo "Izdruka no alternatīvā zara (jā gadījums) $a == 0"
else
   echo "Izdruka no galvenā zara (nē gadījums) - $a < 0"
fi

: <<'END'
#if () then ... else ... fi
a=$1
if (( $a > 0 ))
then
   echo "Izdruka no galvenā zara (jā gadījums) - $a > 0"
else
   echo "Izdruka no galvenā zara (nē gadījums) - $a < 0"
fi
END


: <<'END'
#if () then ... fi
a=$1
if (( $a > 0 ))
then
   echo "Izdruka no galvenā zara (jā gadījums) - $a > 0"
fi
END
