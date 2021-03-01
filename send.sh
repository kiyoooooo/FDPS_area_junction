#!/bin/sh

#g++ lipid_vesicle_pos.cpp
#rm ../output/*
rm ../archive.tar
#./a.out
tar -cvf ../archive.tar ../output/
#scp -i .ssh/id_rsa ../archive.tar  p70293b@ito.cc.kyushu-u.ac.jp:/home/usr3/p70293b/home/nomurasanFDPScode/vesicle_input3000_with_hole2/

scp  -o "ProxyCommand ssh -i ~/.ssh/key tekka -W %h:%p" ../archive.tar  okada@ib03:/data/okada/FDPS/nomuraFDPS20201202/exp_double3/
