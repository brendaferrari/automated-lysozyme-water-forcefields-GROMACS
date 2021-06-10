#!/bin/bash

#GROMOS43A1 calculation
cd files/

mkdir gromos43a1 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} gromos43a1/

cd ..

echo Starting GROMOS43A1 calculation
./gromos43a1-dynamics.sh

echo GROMOS43A1 calculation ended

#GROMOS43A2 calculation
cd files/

mkdir gromos43a2 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} gromos43a2/

cd ..

echo Starting GROMOS43A2 calculation
./gromos43a2-dynamics.sh

echo GROMOS43A2 calculation ended

#GROMOS45A3 calculation
cd files/

mkdir gromos45a3 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} gromos45a3/

cd ..

echo Starting GROMOS45A3 calculation
./gromos45a3-dynamics.sh

echo GROMOS45A3 calculation ended

#GROMOS53A5 calculation
cd files/

mkdir gromos53a5 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} gromos53a5/

cd ..

echo Starting GROMOS53A5 calculation
./gromos53a5-dynamics.sh

echo GROMOS53A5 calculation ended

#GROMOS53A6 calculation
cd files/

mkdir gromos53a6 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} gromos53a6/

cd ..

echo Starting GROMOS53A6 calculation
./gromos53a6-dynamics.sh

echo GROMOS53A6 calculation ended

#GROMOS54A7 calculation
cd files/

mkdir gromos54a7 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} gromos54a7/

cd ..

echo Starting GROMOS54A7 calculation
./gromos54a7-dynamics.sh

echo GROMOS54A7 calculation ended