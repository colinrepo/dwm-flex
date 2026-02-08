# compile dwm
rm -rf ./dwm/output/*
cd ./dwm/dwm-flexipatch
source ./flexipatch-finalizer.sh -r -o ../output
cd ../../
rm -rf ./dwm/output/flexipatch-finalizer.sh
rm -rf ./dwm/output/*.o
echo "- dwm compile sucess"

# compile st
rm -rf ./st/output/*
cd ./st/st-flexipatch
source ./flexipatch-finalizer.sh -r -o ../output
cd ../../
rm ./st/output/flexipatch-finalizer.sh
rm -rf ./st/output/*.o
echo "- st compile sucess"

# install dwm
cd ./dwm/dwm-flexipatch
sudo make clean install
cd ../../
echo "- dwm install sucess"

# install st
cd ./st/st-flexipatch
sudo make clean install
cd ../../
echo "- st install sucess"

# install dmenu
cd ./dmenu/dmenu-flexipatch
sudo make clean install
cd ../../
echo "- dmenu install sucess"
