#!/bin/bash
#Very slow script, dont use it!
md5="d8578edf8458ce06fbc5bb76a58c5ca4"
for c1 in {z..a}
do
    for c2 in {z..a}
    do
        for c3 in {z..a}
        do
            for c4 in {z..a}
            do
                for c5 in {z..a}
                do
		    for c6 in {z..a}
                    do
			printf "Trying: %s\n" "$c1$c2$c3$c4$c5$c6"
			md5_sum=$(printf  "$c1$c2$c3$c4$c5$c6" | md5sum | cut -d' ' -f1)
			if [ "$md5_sum" == "$md5" ]; then
			    printf "\nYour reverse md5 string is: $md5_sum\n\n"
			    exit 0
			fi
		   done
                done
            done
        done
    done
done
