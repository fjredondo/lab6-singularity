#!/bin/bash
#

module load singularity

echo "## hostname: "
hostname
echo "## hostname en my-python.sif: "
singularity exec my-python.sif hostname
echo

echo "## cat /etc/os-release: "
cat /etc/os-release
echo

echo "## cat /etc/os-release en my-python.sif: "
singularity exec my-python.sif cat /etc/os-release
echo

echo "## pwd: "
pwd
echo "## pwd en my-python.sif: "
singularity exec my-python.sif pwd
echo

echo "## ls: "
ls
echo "## ls en my-python.sif: "
singularity exec my-python.sif ls
echo

echo "## python --version: "
python --version
echo "## python --version en my-python.sif: "
singularity exec my-python.sif python --version
echo

echo "## ../source/pi.ipynb 10**5: "
singularity exec my-python.sif ipython ../source/pi.ipynb 10**5
echo
echo "## /app/pi.ipynb 10**5: "
singularity exec my-python.sif ipython /app/pi.ipynb 10**5
echo

