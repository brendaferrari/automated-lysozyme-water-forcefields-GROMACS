# Automated Lysozyme in Water tutorial in different force fields

Script developed to run the commands of the "Lysozyme in Water" tutorial in gromacs in different force fields at once. More information on how to execute this tutorial is found in [Lysozyme in Water Tutorial](http://www.mdtutorials.com/gmx/lysozyme/index.html)

## How to run the script 

To run in this zipped file: Unpack this file, open the linux terminal and use the command

```
./script-dynamics.s./h files/1aki.pdb files/
```

To run the script: open the linux terminal and use the command

```
./script-dynamics.sh input_path/file_name.pdb output_path/
``` 

## Implemented force fields

* Implemented on the root directory

(1) AMBER03
(5) AMBER99SB
(6) AMBER99SB-ILDN
(8) CHARMM27
(15) OPLS-AA/L

* Implemented on the 'extra_force_fields' directory (see more information in [README.md](extra_force_fields/README.md) at proper directory)

(9) GROMOS96 43a1
(10) GROMOS96 43a2
(11) GROMOS96 45a3
(12) GROMOS96 53a5
(13) GROMOS96 53a6
(14) GROMOS96 54a7

## Water models used in this tutorial 

* spc to GROMOS96 43a1 and GROMOS96 53a6
* tip3p to AMBER99SB, AMBER99SB-ILDN and CHARMM27
* tip4p or spce to OPLS-AA/L

## Observations

**1. This script has been elaborated as a straight-forward way to execute all the commands in gromacs tutorial "Lysozyme in Water", but changes in parameters are necessary as the objective of the molecular dynamics changes.**

**2. All the parameters changes involving the script is presented above in this README. Other parameters may be found at [Gromacs page](http://www.gromacs.org/) or at the tutorial page presented in the begining of this description** 

**3. I am not affiliated to Gromacs Team. I am a PhD Student trying to help others to have a quicker way to run this tutorial.**

## Authorship

* Author: **Brenda Ferrari** [brendaferrari](https://github.com/brendaferrari)
* Review: **Lucas Andrade** [lbertoncello](https://github.com/lbertoncello)