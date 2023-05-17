#!/bin/bash
#PBS -q cpu-q
#PBS -l nodes={{cookiecutter.node}}:ppn={{cookiecutter.ppn}}
#PBS -V
#PBS -j oe

source /home/{{cookiecutter.username}}/.bashrc
conda activate {{cookiecutter.conda_env}}

command="{{cookiecutter.command}}"
echo $command
eval $command