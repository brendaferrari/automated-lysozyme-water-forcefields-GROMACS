#!/bin/bash

# AMBER03 calculation
cd files/

mkdir amber03 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} amber03/

cd ..

echo Starting AMBER03 calculation
./amber03-dynamics.sh

echo AMBER03 calculation ended

# AMBER99SB calculation
cd files/

mkdir amber99sb 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} amber99sb/

cd ..

echo Starting AMBER99SB calculation
./amber99sb-dynamics.sh

echo AMBER99SB calculation ended

# AMBER99SB-ILDN calculation
cd files/

mkdir amberildn 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} amberildn/

cd ..

echo Starting AMBER99SB-ILDN calculation
./amberildn-dynamics.sh

echo AMBER99SB-ILDN calculation ended

# CHARMM27 calculation
cd files/

mkdir charmm27 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} charmm27/

cd ..

echo Starting CHARMM27 calculation
./charmm27-dynamics.sh

echo CHARMM27 calculation ended

#OPLS-AA calculation
cd files/

mkdir oplsaa 
cp {*.pdb,ions.mdp,md.mdp,minim.mdp,npt.mdp,nvt.mdp} oplsaa/

cd ..

echo Starting OPLS-AA calculation
./oplsaa-dynamics.sh

echo OPLS-AA calculation ended