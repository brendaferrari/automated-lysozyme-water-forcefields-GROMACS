#!/bin/bash

current_abs_dir=$(pwd)
input_dir=$current_abs_dir/files/oplsaa
input_file=$input_dir/"*.pdb"
input_filename=$(basename -s .pdb $input_file)
output_dir=$input_dir
clean_filename="$(echo $input_filename)_clean.pdb"
clean_file="$input_dir/$clean_filename"
processed_filename="$(echo $input_filename)_processed.gro"
processed_file="$output_dir/$processed_filename"
newbox_filename="$(echo $input_filename)_newbox.gro"
newbox_file="$output_dir/$newbox_filename" 
solv_filename="$(echo $input_filename)_solv.gro"
solv_file="$output_dir/$solv_filename" 
solv_ions_filename="$(echo $input_filename)_solv_ions.gro"
solv_ions_file="$output_dir/$solv_ions_filename" 

grep -v HOH $input_file > "$clean_file"
echo "15" | gmx pdb2gmx -f $clean_file -o $processed_file -water spce 
mv {posre.itp,topol.top} files/oplsaa
gmx editconf -f $processed_file -o $newbox_file -c -d 1.0 -bt cubic
gmx solvate -cp $newbox_file -cs spc216.gro -o $solv_file -p $output_dir/topol.top
gmx grompp -f $input_dir/ions.mdp -c $solv_file -p $output_dir/topol.top -o $output_dir/ions.tpr
mv mdout.mdp files/oplsaa
echo "13" | gmx genion -s $input_dir/ions.tpr -o $solv_ions_file -p $output_dir/topol.top -pname NA -nname CL -neutral
gmx grompp -f $input_dir/minim.mdp -c $solv_ions_file -p $output_dir/topol.top -o $output_dir/em.tpr
mv mdout.mdp files/oplsaa
gmx mdrun -v -deffnm $output_dir/em
echo "10 0" | gmx energy -f $input_dir/em.edr -o $output_dir/potential.xvg
gmx grompp -f $input_dir/nvt.mdp -c $input_dir/em.gro -r $input_dir/em.gro -p $input_dir/topol.top -o $output_dir/nvt.tpr
mv mdout.mdp files/oplsaa
gmx mdrun -v -deffnm $input_dir/nvt
echo "16 0" | gmx energy -f $input_dir/nvt.edr -o $output_dir/temperature.xvg
gmx grompp -f $input_dir/npt.mdp -c $input_dir/nvt.gro -r $input_dir/nvt.gro -t $input_dir/nvt.cpt -p $input_dir/topol.top -o $output_dir/npt.tpr
mv mdout.mdp files/oplsaa
gmx mdrun -v -deffnm $input_dir/npt
echo "18 0" | gmx energy -f $input_dir/npt.edr -o $output_dir/pressure.xvg
echo "24 0" | gmx energy -f $input_dir/npt.edr -o $output_dir/density.xvg
gmx grompp -f $input_dir/md.mdp -c $input_dir/npt.gro -t $input_dir/npt.cpt -p $input_dir/topol.top -o $output_dir/md_0_1.tpr
mv mdout.mdp files/oplsaa
gmx mdrun -v -deffnm $input_dir/md_0_1