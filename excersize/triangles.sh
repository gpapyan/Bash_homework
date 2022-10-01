for i in 1 2 3 4 5  # First loop.
do
    for j in $(seq 1 $i)
    do
        echo  -n "*" 
    done
    echo 
done
echo
# outputs
# *
# **
# ***
# ****
# *****

for i in 5 4 3 2 1 # First loop.
do
    for j in $(seq -$i -1)
    do
        echo  -n "*" 
    done
    echo 
done

# outputs
# *****
# ****
# ***
# **
# *

for i in 1 2 3 4 5  # First loop.
do
    for k in $(seq -5 -$i)
    do
        echo -n ' '
    done
    for j in $(seq 1 $i)
    do
        echo  -n "* " 
    done
    echo 
done
echo

# outputs
#     * 
#    * * 
#   * * * 
#  * * * * 
# * * * * * 

for i in 1 2 3 4 5  # First loop.
do
    for j in $(seq -5 -$i)
    do
        echo  -n "* " 
    done
    echo 
    for k in $(seq 1 $i)
    do
        echo -n ' '
    done
done
echo

# outputs
# * * * * * 
#  * * * * 
#   * * * 
#    * * 
#     *