# About

This repository contains benchmarks, installation tools and analysis tools for the verification of assertions in programs with arrays.
The paper *Data Abstraction: A General Framework to Handle Program Verification of Data Structures* presented to SAS2021 uses this tool to generate its benchmark table.

# Installing the toolchain

The verification of assertions in programs with arrays is done in three steps:
1. Transform the verification problem into Horn clauses, perhaps using [MiniJavaConverter](https://github.com/vaphor/hornconverter) or [SeaHorn](https://github.com/seahorn/seahorn).
2. Simplify the Horn clauses using [data abstraction](https://github.com/vaphor/DataAbstraction) [CellMorphing](https://github.com/vaphor/CellMorphing).
3. Solve the Horn clauses using a Horn solver such as [Z3](https://github.com/Z3Prover/z3) [Eldarica](https://github.com/uuverifiers/eldarica).

## Out of the box solutions

### Using the docker file

We provide a docker image file [array-benchmarks.tar](linktodo). To use the docker image, 
- Load the docker image dataabs abs using : `docker load -i array-benchmarks.tar`
- Run the docker image interactively using : `docker run -it array-benchmarks /bin/bash`
- Go to the array benchmarks folder : `cd Tools/array-benchmarks`

### Using *install.sh* 

*install.sh* provides a script which installs all the tools and sets them to the correct version for a computer on Ubuntu 20.
You may adapt it to use your distribution.
The script has dependencies which are illustrated by the below necessary steps on a fresh Ubuntu 20.
```shell
sudo apt install git
sudo apt install make
sudo apt install ssh
sudo apt install opam
sudo apt install time
sudo apt install sqlite3
sudo apt install bsdmainutils
sudo apt install z3
opam init
opam install hmap
opam install ocamlbuild
eval `opam config env`
```

## Manual Configuration

Install the tools you wish to use and then configure the Makefile adequately through the following preset Makefile variables
```make
CONVERTERTOOL?=$(PATH_MAIN_FOLDER)/hornconverter/converter
DATAABSTOOL?=$(PATH_MAIN_FOLDER)/DataAbstraction/dataabs
VAPHORTOOL?=$(PATH_MAIN_FOLDER)/CellMorphing/vaphor
Z3TOOL?=z3
```
# Running the toolchain on the benchmarks

The programs we benchmark are available in the Examples folder. 

## Running the toolchain as is

The default configuration uses:
1. [MiniJavaConverter](https://github.com/vaphor/hornconverter) with different naming options and with and without hints.
2. No abstraction, [CellMorphing](https://github.com/vaphor/CellMorphing) with n=1 and n=2, and [data abstraction](https://github.com/vaphor/DataAbstraction) with n=1 and n=2 and with and without ackermanisation.
3. The Z3 solver with two different random seeds for spacer.

Run `make Z3_SOLVER_TL=5s`. This runs the benchmarks with 5s as time limit and should take around 30minutes.
While the command is running, you should:
1. See information on the tools found/notfound and the number of files being built.
2. See files being created one by one
3. View a result table once computation is finished

## The results

The intermediate files are available in the *Build* folder and the result files are available in the *Result* folder.
The intermediate files are divided in three:
1. The SMT2 files generated from the program to Horn clauses conversion
2. The Abstracted SMT2 files generated by the abstraction tool
3. The Result files which contain the output of the solver

The Result folder contains two files
1. *res.csv* which contains all the generated information
2. *analysis.csv* which groups files into categories and generates measurable results.
   This is the file used to construct Table 2 page 17 of the SAS2021 paper.
   The main idea in *analysis.csv* is that we should aggregate with respect to *non relevant options*, 
   that is, predicate naming and random seeds used.
   We use two aggregation functions: average and exists, corresponding to columns *avgexp* and *nbexists*.
   The results are then summed over the files of each category (nothinted, hinted, buggy). 

As an example, you can look at the files used for the SAS2021 paper here: [build folder](https://gitlab.inria.fr/jbraine/archives/-/tree/master/Build_SAS21_PAPER), [result folder](https://gitlab.inria.fr/jbraine/archives/-/tree/master/Result_SAS21_PAPER).

## Changing/Parametrizing the toolchain

The simplest change consists in changing the timelimit used for Z3. 
This can be achieved by either changing the variable *Z3_SOLVER_TL* in the makefile or by running 
`make Z3_SOLVER_TL=MyTIMELIMIT`.

To add/remove/change options of tools one should edit the *Makefile*.
The list of converters (respectively abstractions, solvers) used is defined by the variable *PREPROCESSORS* (respectively *ABSTOOLS*, *SOLVERS*)
Instructions on how a converter (respectively abstraction, solver) is defined are given within the Makefile.

Note that we generate multiple solvers for Z3 for each random seed. 
The number of randomseed instances of Z3 used can be changed through the 3 following variables (representing lists of random seeds)
1. `SATRD?=0` states that the only seed for the option `sat.random_seed` of Z3 is 0. One may add the random seed 1 by setting `SATRD?=0 1`
2. `SLSRD?=0` states that the only seed for the option `sls.random_seed` of Z3 is 0. One may add the random seed 1 by setting `SLSRD?=0 1`
3. `SPACERRD?=0 1` states that we launch Z3 twice, once with the option `fp.spacer.random_seed=0` and once with the option `fp.spacer.random_seed=1`

