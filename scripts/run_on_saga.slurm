#!/bin/bash

# m_matschiner Fri Jul 25 03:16:45 PM CEST 2025

# Job name:
#SBATCH --job-name=rb_rhino
#
# Wall clock limit:
#SBATCH --time=168:00:00
#
# Processor and memory usage:
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4G

# Set up job environment.
set -o errexit
set -o nounset
module purge &> /dev/null
module load RevBayes/1.1.1-GCC-11.2.0

# Get the command-line arguments.
rb_script=${1}

# Run revbayes.
rb ${rb_script}
