tag=SAS21

echo "Checking out to $tag commit of array benchmarks"
git checkout $tag

cd ..
echo "Cloning and checking out to $tag commit of Vaphor Tool"
git clone "git@github.com:vaphor/CellMorphing.git"
cd "CellMorphing"
git checkout $tag
echo "Making Vaphor executable"
make
cd ..

echo "Cloning and checking out to $tag commit of Converter Tool"
git clone "https://github.com/vaphor/hornconverter.git"
cd "hornconverter"
git checkout $tag
echo "Making Converter executable"
make
cd ..


echo "Cloning and checking out to $tag commit of DataAbstraction Tool"
git clone "https://github.com/vaphor/DataAbstraction.git"
cd "DataAbstraction"
git checkout $tag
echo "Making DataAbstraction executable"
make
cd ..

echo "Going back to benchmarks"
cd "array-benchmarks"
echo "Building results"
make -j4

echo "Results can be found in the res.csv file. Note that the $tag benchmarks of the paper were solved using Z3 version 4.8.8 - 64 bit"
