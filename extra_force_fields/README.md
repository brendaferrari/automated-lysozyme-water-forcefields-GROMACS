## GROMOS dynamics

The GROMOS force fields were not implemented in the main bash script to raise awareness of the warning implemented on GROMACS v2019.2 on the use of GROMOS force fields. As the GROMOS force fields have been parametrized with a physically incorrect multiple-time-stepping scheme for a twin-range cut-off the user should check if molecules in the system of study are affected before proceeding. For more information check [Redmine #2884](https://gitlab.com/gromacs/gromacs/-/issues/2884)

* How to run the script 

To run in this zipped file: Unpack this file, open the linux terminal and use the command

```
./gromos-dynamics.s./h files/1aki.pdb files/
```

To run the script: open the linux terminal and use the command

```
./gromos-dynamics.sh input_path/file_name.pdb output_path/