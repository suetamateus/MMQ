i=0
while [ $i -eq 0 ]
do
        echo "How many files are there in the current directory?"
        read guess

        if [ $guess -gt $(ls -al | wc -l) ]
        then
                echo "Your guess is overestimated!"

        elif [ $guess -gt 0 ] && [ $guess -lt $(ls -al | wc -l) ]
        then
                echo "Your guess is underestimated!"

        elif [ $guess -eq $(ls -al | wc -l) ]
        then
                let i=i+1
                echo "Congratulations!"

        else
                echo "Please enter a valid number!"
        fi
done

