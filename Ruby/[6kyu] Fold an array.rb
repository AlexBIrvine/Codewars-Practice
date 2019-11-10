#[6kyu]Fold an array
#In this kata you have to write a method that folds a given array of integers by the middle x-times.
#An example says more than thousand words:

#Fold 1-times:
#[1,2,3,4,5] -> [6,6,3]

#A little visualization (NOT for the algorithm but for the idea of folding):

# Step 1         Step 2        Step 3       Step 4       Step5
#                     5/           5|         5\
#                    4/            4|          4\
#1 2 3 4 5      1 2 3/         1 2 3|       1 2 3\       6 6 3
#----*----      ----*          ----*        ----*        ----*


#Fold 2-times:
#[1,2,3,4,5] -> [9,6]
#As you see, if the count of numbers is odd, the middle number will stay.
#Otherwise the fold-point is between the middle-numbers, so all numbers would be added in a way.

#The array will always contain numbers and will never be null.
#The parameter runs will always be a positive integer greater than 0 and says how many runs of folding your method has to do.
#If an array with one element is folded, it stays as the same array.

def fold_array(array, runs)
  #sets variables
  current = array
  results = []

  i=0
  #folds the array over n runs
  while i < runs
    results = []

    #folds current array into results
    j= 0

    while j < current.length/2
      #adds first from left and first from right, then second...third...n....
      #iterate j
      results[j] = current[j] + current[-(j+1)]
      j += 1
    end

    #if current[] is odd, append the middle element to results[]
    if (current.length.odd?)
      results << current[current.length/2]
    end

    #update current, iterate i
    current = results
    i += 1

  end

  return results
end

puts fold_array([ 1, 2, 3, 4, 5 ], 2)
