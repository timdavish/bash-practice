#!/usr/local/bin/bash
# Creating a Fractal Tree from Y-shaped branches, given N input

# Create initial matrix
declare -A matrix
rows=63
cols=100

for ((i=1;i<=$rows;i++)) do
  for ((j=1;j<=$cols;j++)) do
    matrix[$i,$j]='_'
  done
done

# Add branches
declare -a roots
roots[0]=50
row=63
len=16
read N

for ((i=1; i<=N; i++)) do
  lim=$((${#roots[@]}-1))
  elems=${#roots[@]}
  old_row=$row

  for ((k=0; k<=lim; k++)) do
    pos=${roots[$k]}

    # Add the trunk
    for ((m=0; m<=len-1; m++)) do
      matrix[$row,$pos]='1'
      ((row--))
    done

    # Add the branches
    for ((m=1; m<=len; m++)) do
      matrix[$row,$((pos-m))]='1'
      matrix[$row,$((pos+m))]='1'
      ((row--))
    done

    roots=("${roots[@]}" "$((pos-m+1))" "$((pos+m-1))" )
    if (( $k < $lim )) ; then
      row=$old_row
    fi
  done

  for ((k=0; k<$elems; k++)) do
    unset roots[$k]
  done
  roots=( "${roots[@]}" )
  len=$((len/2))
done

# Print matrix
for ((i=1;i<=$rows;i++)) do
  for ((j=1;j<=$cols;j++)) do
    printf ${matrix[$i,$j]}
  done
  printf "\n"
done
