# destination path to place file
dest_path="/home/edureka/Desktop"

# read each line from inputfile 
while read -r line;
do
# if args are passed then add those as text in file else create 0 byte file
if [ "$#" ]; then
  echo $@>$dest_path/$line
else
>$dest_path/$line
fi
done<input.txt
