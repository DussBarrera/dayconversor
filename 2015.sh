#!/bin/sh
echo "Este es un simple conversor de días Julianos a días GPS para el año 2015"

echo "Digite el número del mes ej: 6 <- Junio"
read m

echo "Digite el número del día ej: 23"
read d 
	
	if [ $m = 1 ]
		then
		m=0

		elif [ $m = 2 ] 
			then
			m=32

			elif [ $m = 3 ] 
				then
				m=60

				elif [ $m = 4 ]
					then
					m=91

				    elif [ $m = 5 ] 
				    	then
				    	m=121

				        elif [ $m = 6 ]
				        	then 
				        	m=152

				            elif [ $m = 7 ]
				            	then 
				            	m=182

				                elif [ $m = 8 ]
				                	then
				                	m=213

				                    elif [ $m = 9 ]
				                    	then
				                    	m=244

				                        elif [ $m = 10 ]
				                        	then
				                        	m=274

				                            elif [ $m = 11 ]
				                            	then
				                            	m=305

				                                elif [ $m = 12 ]
				                                	then
				                                	m=335
		
	fi

dj=`expr $m + $d - 1`
if [ $dj -lt 32 ] 
	then
	dj=`expr $dj + 1`
fi

if [ $dj -lt 100 -a $dj -gt 9 ]
		then
		echo "El dia juliano es: 0$dj"

	elif [ $dj -lt 10 ]
		then 
		echo "El dia juliano es: 00$dj"

	else
	echo "El dia juliano es: $dj"	
fi
