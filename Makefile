###please invoke me using make -j4 | nl -b p"Creating.*res"

#######################Basic Configuration####################################

PATH_MAIN_FOLDER?=..
EXAMPLES_FOLDER?=Examples/NewExp
BUILD_FOLDER?=Build
RESULT_FOLDER?=Result
#Separator to use. Careful, it must not be used within your filenames, nor interfere with make, bash, sed, ...  This is a problem at the moment
SEP?=-
BENCHMARKS?=$(shell find $(EXAMPLES_FOLDER) -type f)

#######################Configuration####################################

#######Tool paths#########
CONVERTERTOOL?=$(PATH_MAIN_FOLDER)/hornconverter/converter
DATAABSTOOL?=$(PATH_MAIN_FOLDER)/DataAbstraction/dataabs
VAPHORTOOL?=$(PATH_MAIN_FOLDER)/CellMorphing/vaphor
Z3TOOL?=z3
ELDARICATOOL?=eld

#######Preprocessors#########
ALLPREPROCESSORS=CPSMT2 JAVATOSMT2 JAVATOSMT2_1 JAVATOSMT2_2 JAVATOSMT2HINTED JAVATOSMT2HINTED1 JAVATOSMT2HINTED2 

#######Abstractions##########
OLDABS=ABSNONE VAPHOR VAPHORC2
C1ABS=DATAABS_C1 DATAABS_C1_ACKER DATAABS_C1_CURR DATAABS_C1_CURR_ACKER DATAABS_C1_SAME DATAABS_C1_SAME_ACKER DATAABS_C1_REVSAME DATAABS_C1_REVSAME_ACKER 
C2ABS=$(shell echo $(C1ABS) | sed 's;C1;C2;g')
ALLABSTOOLS=$(OLDABS) $(C1ABS) $(C2ABS)

#######Solvers##########
define mk_z3_solver_list
ALLZ3SOLVERS+=Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)
endef
ITERATE=0 1 2
$(foreach satrd,$(ITERATE),$(foreach slsrd,$(ITERATE),$(foreach spacerrd,$(ITERATE),$(eval $(call mk_z3_solver_list,$(satrd),$(slsrd),$(spacerrd))))))
ALLSOLVERS=$(ALLZ3SOLVERS)

######Configurations#########

ifeq ($(BUILDTYPE),)
  PREPROCESSOR_TL?=600s
  PREPROCESSORS?=$(ALLPREPROCESSORS)
  ABSTOOLS?=$(shell echo $(ALLABSTOOLS) | tr ' ' '\n' | grep DATAABS | tr '\n' ' ')
  ABSTOOL_TL?=1000s
  Z3_SOLVER_TL?=5s
  SOLVERS?=$(wordlist 1,3,$(ALLZ3SOLVERS))
endif

ifeq ($(BUILDTYPE),quick)
  PREPROCESSOR_TL?=600s
  PREPROCESSORS?=$(ALLPREPROCESSORS)
  ABSTOOLS?=$(ALLABSTOOLS)
  ABSTOOL_TL?=1000s
  Z3_SOLVER_TL?=5s
  SOLVERS?=$(wordlist 1,1,$(ALLZ3SOLVERS))
endif
ifeq ($(BUILDTYPE),test)
  PREPROCESSOR_TL?=600s
  PREPROCESSORS?=$(ALLPREPROCESSORS)
  ABSTOOLS?=$(ALLABSTOOLS)
  ABSTOOL_TL?=1000s
  Z3_SOLVER_TL?=1s
  SOLVERS?=$(wordlist 1,1,$(ALLZ3SOLVERS))
endif
ifeq ($(BUILDTYPE),medium)
  PREPROCESSOR_TL?=600s
  PREPROCESSORS?=$(ALLPREPROCESSORS)
  ABSTOOLS?=$(ALLABSTOOLS)
  ABSTOOL_TL?=1000s
  Z3_SOLVER_TL?=5s
  SOLVERS?=$(wordlist 1,2,$(ALLZ3SOLVERS))
endif
ifeq ($(BUILDTYPE),slow)
  PREPROCESSOR_TL?=600s
  PREPROCESSORS?=$(ALLPREPROCESSORS)
  ABSTOOLS?=$(ALLABSTOOLS)
  ABSTOOL_TL?=1000s
  Z3_SOLVER_TL?=20s
  SOLVERS?=$(wordlist 1,2,$(ALLZ3SOLVERS))
endif
ifeq ($(BUILDTYPE),full)
  PREPROCESSOR_TL?=600s
  PREPROCESSORS?=$(ALLPREPROCESSORS)
  ABSTOOLS?=$(ALLABSTOOLS)
  ABSTOOL_TL?=1000s
  Z3_SOLVER_TL?=60s
  SOLVERS?=$(ALLSOLVERS)
endif

#######################OtherStuff####################################




ifeq ($(MAKECMDGOALS),)
ifndef IGNORE
PRINT=yes
endif
COMPUTE=yes
endif

ifneq ($(findstring .csv,$(MAKECMDGOALS)),)
ifndef IGNORE
PRINT=yes
endif
COMPUTE=yes
endif

ifdef PRINT
red:=$(shell tput bold; tput setaf 1)
green:=$(shell tput bold; tput setaf 2)
yellow:=$(shell tput bold; tput setaf 3)
reset:=$(shell tput sgr0)
$(info To display progress, we suggest you invoke make using $(red)make -j4 PARAMS | nl -b p"Creating.*res$(reset))
NUMBERTOBUILD=$(shell make $(MAKECMDGOALS) --dry-run  BUILDTYPE=$(BUILDTYPE) EXAMPLES_FOLDER=$(EXAMPLES_FOLDER) IGNORE=true  | grep "Creating" | grep "res" |  wc -l)
endif

COMPUTE=yes

noop=
space=$(noop) $(noop)

#######################SMT2FromExamples#######################################



#We define two preprocessor that are used to preprocess files into smt2 files (by converting them, simplifying, ...)
#Each Preprocessor must have :
#  -A tool (executable)
#  -A time limit
#  -The suffix of the files handled by that preprocessor
#  -The extention used in filenames to distinguish that preprocessor

#We define several preprocessors : one to handle smt2 to files by just copying them, the others using our converter

JAVATOSMT2_TOOL?=$(CONVERTERTOOL)
JAVATOSMT2_TL?=$(PREPROCESSOR_TL)
JAVATOSMT2_EXP?=.java
JAVATOSMT2_EXT?=$(JAVATOSMT2_TL)cvjava_nohints_pn0

JAVATOSMT2_1_TOOL?=$(CONVERTERTOOL) -pn 1
JAVATOSMT2_1_TL?=$(PREPROCESSOR_TL)
JAVATOSMT2_1_EXP?=.java
JAVATOSMT2_1_EXT?=$(JAVATOSMT2_TL)cvjava_nohints_pn1

JAVATOSMT2_2_TOOL?=$(CONVERTERTOOL) -pn 2
JAVATOSMT2_2_TL?=$(PREPROCESSOR_TL)
JAVATOSMT2_2_EXP?=.java
JAVATOSMT2_2_EXT?=$(JAVATOSMT2_TL)cvjava_nohints_pn2


JAVATOSMT2HINTED_TOOL?=$(CONVERTERTOOL) -hints
JAVATOSMT2HINTED_TL?=$(PREPROCESSOR_TL)
JAVATOSMT2HINTED_EXP?=.java
JAVATOSMT2HINTED_EXT?=$(JAVATOSMT2_TL)cvjava_hinted_pn0

JAVATOSMT2HINTED1_TOOL?=$(CONVERTERTOOL) -hints -pn 1
JAVATOSMT2HINTED1_TL?=$(PREPROCESSOR_TL)
JAVATOSMT2HINTED1_EXP?=.java
JAVATOSMT2HINTED1_EXT?=$(JAVATOSMT2_TL)cvjava_hinted_pn1

JAVATOSMT2HINTED2_TOOL?=$(CONVERTERTOOL) -hints -pn 2
JAVATOSMT2HINTED2_TL?=$(PREPROCESSOR_TL)
JAVATOSMT2HINTED2_EXP?=.java
JAVATOSMT2HINTED2_EXT?=$(JAVATOSMT2_TL)cvjava_hinted_pn2

CPSMT2_TOOL?=cat
CPSMT2_TL?=$(PREPROCESSOR_TL)
CPSMT2_EXP?=.smt2
CPSMT2_EXT?=cp

#Rules to make the files from the preprocessors. We define two variables :
# -EXAMPLES : contains all files dealt by at least one preprocessor
# -SMT2EXAMPLES : all smt2 files created by the preprocessors

#NOTE : we also generate a file .time to keep time info and .error when there is an error
define mk_preprocess_rule
$(BUILD_FOLDER)/SMT2/%$(SEP)$$($(1)_EXT).smt2: $(EXAMPLES_FOLDER)/%$$($(1)_EXP)
	@mkdir -p $$$$(dirname $$@)
	@echo "Creating $$@"
	@/usr/bin/time -f '\n;timepreprocess=%E\n' -o $$(basename $$@).time timeout $$($(1)_TL) $$($(1)_TOOL) $$< > $$@; \
 	  ret=$$$$?; \
 	  if [ $$$$ret -eq 124 ]; \
 	    then echo ';timeoutpreprocess' > $$@; \
 	  elif [ ! $$$$ret -eq 0 ]; \
 	    then echo ';errorpreprocess' > $$@; \
 	  fi
$(1)_TOOLEXEC=$$(shell echo "$$($(1)_TOOL)" | cut -f 1 -d " ")
$(1)_TOOLPATHOK=$$(shell type $$($(1)_TOOLEXEC) >/dev/null && echo "ok")
ifdef COMPUTE
ifeq "$$($(1)_TOOLPATHOK)" "ok"
USEDPEPROCESS+=$(1)
USEDTOOLS+=$$(word 1,$$($(1)_TOOL))
PREPROCESSDESC+="NAME=$(1)!COMMANDLINE=$$(subst $$(space),?,$$($(1)_TOOL))!TIMELIMIT=$$($(1)_TL)!INPUTFILTER=$$($(1)_EXP)"
$(1)_EXAMPLES=$$(shell echo $(BENCHMARKS) | tr ' ' '\n' | grep "$$($(1)_EXP)" | grep -v " " | grep -v "$(SEP)" | tr '\n' ' ')
EXAMPLES+=$$($(1)_EXAMPLES)
SMT2EXAMPLES+=$$(subst $$($(1)_EXP),$(SEP)$$($(1)_EXT).smt2,$$(subst $(EXAMPLES_FOLDER)/,$(BUILD_FOLDER)/SMT2/,$$($(1)_EXAMPLES))) 
else
$$(info preprocess tool for $(1) has $(red)not been found$(reset). Continuing without generating the corresponding targets.)
endif
endif
endef

$(foreach preprocess,$(PREPROCESSORS),$(eval $(call mk_preprocess_rule,$(preprocess))))

.SECONDARY: $(SMT2EXAMPLES)

# $(info smt2 files are $(SMT2EXAMPLES))

#######################ABSTRACTION FROM EXAMPLES###############################

#We define abstraction tools for files. 
#Each abstraction tool must have :
#  -A tool (executable)
#  -A time limit
#  -The extention used in filenames to distinguish that abstraction tool

#We define 4 abstractions :
#  -The empty abstraction (nothing done)
#  -The old vaphor
#  -The new data abstraction tool
#  -The new data abstraction tool with ackermanisation




ABSNONE_TOOL?=src/cpo
ABSNONE_TL?=$(ABSTOOL_TL)
ABSNONE_EXT?=noabs


VAPHOR_TOOL?=$(VAPHORTOOL)
VAPHOR_TL?=$(ABSTOOL_TL)
VAPHOR_EXT?=vaphor_cell1

VAPHORC2_TOOL?=$(VAPHORTOOL) -distinct 2
VAPHORC2_TL?=$(ABSTOOL_TL)
VAPHORC2_EXT?=vaphor_cell2

DATAABS_C1_TOOL?=$(DATAABSTOOL) -abstraction "Cell1"
DATAABS_C1_TL?=$(ABSTOOL_TL)
DATAABS_C1_EXT?=dataabs_basic_cell1

DATAABS_C1_ACKER_TOOL?=$(DATAABSTOOL) -abstraction "Cell1" -acker
DATAABS_C1_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C1_ACKER_EXT?=dataabs_acker_cell1


DATAABS_C1_CURR_TOOL?=$(DATAABSTOOL) -abstraction "CurCell1"
DATAABS_C1_CURR_TL?=$(ABSTOOL_TL)
DATAABS_C1_CURR_EXT?=dataabs_curr_basic_cell1


DATAABS_C1_CURR_ACKER_TOOL?=$(DATAABSTOOL) -acker -abstraction "CurCell1"
DATAABS_C1_CURR_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C1_CURR_ACKER_EXT?=dataabs_curr_acker_cell1

DATAABS_C1_SAME_TOOL?=$(DATAABSTOOL) -abstraction "SameCell1"
DATAABS_C1_SAME_TL?=$(ABSTOOL_TL)
DATAABS_C1_SAME_EXT?=dataabs_same_cell1

DATAABS_C1_SAME_ACKER_TOOL?=$(DATAABSTOOL) -acker -abstraction "SameCell1"
DATAABS_C1_SAME_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C1_SAME_ACKER_EXT?=dataabs_same_acker_cell1

DATAABS_C1_REVSAME_TOOL?=$(DATAABSTOOL) -abstraction "revSameCell1"
DATAABS_C1_REVSAME_TL?=$(ABSTOOL_TL)
DATAABS_C1_REVSAME_EXT?=dataabs_revsame_cell1

DATAABS_C1_REVSAME_ACKER_TOOL?=$(DATAABSTOOL) -acker -abstraction "revSameCell1"
DATAABS_C1_REVSAME_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C1_REVSAME_ACKER_EXT?=dataabs_revsame_acker_cell1



DATAABS_C2_TOOL?=$(DATAABSTOOL) -abstraction "Cell2"
DATAABS_C2_TL?=$(ABSTOOL_TL)
DATAABS_C2_EXT?=dataabs_basic_cell2

DATAABS_C2_ACKER_TOOL?=$(DATAABSTOOL) -abstraction "Cell2" -acker
DATAABS_C2_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C2_ACKER_EXT?=dataabs_acker_cell2


DATAABS_C2_CURR_TOOL?=$(DATAABSTOOL) -abstraction "CurCell2"
DATAABS_C2_CURR_TL?=$(ABSTOOL_TL)
DATAABS_C2_CURR_EXT?=dataabs_curr_basic_cell2

DATAABS_C2_CURR_ACKER_TOOL?=$(DATAABSTOOL) -acker -abstraction "CurCell2"
DATAABS_C2_CURR_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C2_CURR_ACKER_EXT?=dataabs_curr_acker_cell2

DATAABS_C2_SAME_TOOL?=$(DATAABSTOOL) -abstraction "SameCell2"
DATAABS_C2_SAME_TL?=$(ABSTOOL_TL)
DATAABS_C2_SAME_EXT?=dataabs_same_cell2

DATAABS_C2_SAME_ACKER_TOOL?=$(DATAABSTOOL) -acker -abstraction "SameCell2"
DATAABS_C2_SAME_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C2_SAME_ACKER_EXT?=dataabs_same_acker_cell2

DATAABS_C2_REVSAME_TOOL?=$(DATAABSTOOL) -abstraction "revSameCell2"
DATAABS_C2_REVSAME_TL?=$(ABSTOOL_TL)
DATAABS_C2_REVSAME_EXT?=dataabs_revsame_cell2

DATAABS_C2_REVSAME_ACKER_TOOL?=$(DATAABSTOOL) -acker -abstraction "revSameCell2"
DATAABS_C2_REVSAME_ACKER_TL?=$(ABSTOOL_TL)
DATAABS_C2_REVSAME_ACKER_EXT?=dataabs_revsame_acker_cell2



#Rules to make abstracted smt2. We define the variable ABSEXAMPLES containing #SMT2EXAMPLES * #ABSTOOLS files.
#NOTE : we also generate a file .time to keep time info and .error when there is an error
define mk_abs_rule
$(BUILD_FOLDER)/ABSSMT2/%$(SEP)$$($(1)_EXT).smt2: $(BUILD_FOLDER)/SMT2/%.smt2
	@mkdir -p $$$$(dirname $$@)
	@echo "Creating $$@"
	@cp $$(basename $$^).time $$(basename $$@).time
	@/usr/bin/time -f '\n;timeabs=%E\n' -a -o $$(basename $$@).time timeout $$($(1)_TL) $$($(1)_TOOL) $$< -o $$@ ; \
 	  ret=$$$$?; \
 	  if [ $$$$ret -eq 124 ]; \
 	    then \
 	      echo ';timeoutabs' > $$@; \
 	      echo ';timeoutabs' >> $$(basename $$@).time; \
 	  elif [ ! $$$$ret -eq 0 ]; \
 	    then \
 	      cp $$@ $$(basename $$@).error ;\
 	      echo ';errorabs' > $$@; \
 	      cho ';errorabs' >> $$(basename $$@).time; \
 	  fi
$(1)_TOOLEXEC=$$(shell echo "$$($(1)_TOOL)" | cut -f 1 -d " ")
$(1)_TOOLPATHOK=$$(shell type $$($(1)_TOOLEXEC) >/dev/null && echo "ok")
ifdef COMPUTE
ifeq "$$($(1)_TOOLPATHOK)" "ok"
USEDABS+=$(1)
USEDTOOLS+=$$(word 1,$$($(1)_TOOL))
ABSTRACTIONDESC+="NAME=$(1)!COMMANDLINE=$$(subst $$(space),?,$$($(1)_TOOL))!TIMELIMIT=$$($(1)_TL)"
ABSEXAMPLES+=$$(subst .smt2,$(SEP)$$($(1)_EXT).smt2,$$(subst /SMT2/,/ABSSMT2/,$$(SMT2EXAMPLES))) 
else
$$(info abstraction tool for $(1) has $(red)not been found$(reset). Continuing without generating the corresponding targets.)
endif
endif
endef

$(foreach abstool,$(ABSTOOLS),$(eval $(call mk_abs_rule,$(abstool))))

.SECONDARY: $(ABSEXAMPLES)

#######################FINAL SOLVING###########################################

#We define solvers for files. 
#Each solver tool must have :
#  -A tool (executable)
#  -A time limit
#  -The extention used in filenames to distinguish that abstraction tool


define mk_z3_rule
Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)_TOOL=$(Z3TOOL) sat.random_seed=$(1) sls.random_seed=$(2) fp.spacer.random_seed=$(3)
Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)_TL=$(Z3_SOLVER_TL)
Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)_EXT=z3_satrd$(1)_slsrd_$(2)_spacerrd$(3)_$(Z3_SOLVER_TL)
endef

SATRD?=0 1 2
SLSRD?=0 1 2
SPACERRD?=0 1 2
$(foreach satrd,$(SATRD),$(foreach slsrd,$(SLSRD),$(foreach spacerrd,$(SPACERRD),$(eval $(call mk_z3_rule,$(satrd),$(slsrd),$(spacerrd))))))

#Rules to make the final result. We define the variable RESULTS containing #ABSEXAMPLES * #SOLVERS files.
#NOTE : we also generate a file .time to keep time info and .error when there is an error
define mk_solver_rule
$(BUILD_FOLDER)/Results/%$(SEP)$$($(1)_EXT).res: $(BUILD_FOLDER)/ABSSMT2/%.smt2
	@mkdir -p $$$$(dirname $$@)
	@echo "Creating $$@"
	@cp $$(basename $$^).time $$(basename $$@).time
	@/usr/bin/time -f "\n;timesolving=%E\n" -a -o $$(basename $$@).time timeout $$($(1)_TL) $$($(1)_TOOL) $$< > $$@ ; \
 	  ret=$$$$?; \
 	  if [ $$$$ret -eq 124 ]; \
 	    then \
 	      echo 'timeout solver' > $$@; \
 	  elif [ ! $$$$ret -eq 0 ]; \
 	    then \
 	      cp $$@ $$(basename $$@).error ; \
 	      echo 'error solver' > $$@; \
 	  fi
	@echo ' ' >> $$@
	@cat $$(basename $$@).time | grep -E ';time|;error' >>  $$@
	@echo ' ' >> $$@
$(1)_TOOLEXEC=$$(shell echo "$$($(1)_TOOL)" | cut -f 1 -d " ")
$(1)_TOOLPATHOK=$$(shell type $$($(1)_TOOLEXEC) >/dev/null && echo "ok")
ifdef COMPUTE
ifeq "$$($(1)_TOOLPATHOK)" "ok"
USEDSOLVERS+=$(1)
USEDTOOLS+=$$(word 1,$$($(1)_TOOL))
SOLVERDESC+="NAME=$(1)!COMMANDLINE=$$(subst $$(space),?,$$($(1)_TOOL))!TIMELIMIT=$$($(1)_TL)!EXT=$$($(1)_EXT)"
RESULTS+=$$(subst .smt2,$(SEP)$$($(1)_EXT).res,$$(subst /ABSSMT2/,/Results/,$$(ABSEXAMPLES))) 
else
$$(info solver tool for $(1) has $(red)not been found$(reset). Continuing without generating the corresponding targets.)
endif
endif
endef

$(foreach solver,$(SOLVERS),$(eval $(call mk_solver_rule,$(solver))))

.SECONDARY: $(RESULTS)

#######################PRINTING INFORMATION###########################################

define buildprinter
ALLBUILDINFO+=$$($(1)_TOOL) $$($(1)_TL) $$($(1)_EXP) $$($(1)_EXT)
endef
$(foreach pre,$(PREPROCESSORS) $(ABSTOOLS) $(SOLVERS),$(eval $(call buildprinter,$(pre))))  
ALLBUILDINFO+=$(BENCHMARKS)
UNIQAPPEND=$(shell echo "$(ALLBUILDINFO)" | md5sum | tr -d ' ')

NUM_EXP=$(words $(BENCHMARKS))
NUM_SMT2=$(words $(SMT2EXAMPLES))
NUM_ABS=$(words $(ABSEXAMPLES))
NUM_RES=$(words $(RESULTS))
ifdef PRINT
$(info Current configuration has :)
$(info A total of  $(red)$(NUM_EXP)$(reset) inital examples.)
$(info A total of  $(red)$(NUM_SMT2)$(reset) inital smt2 files using $(red)$(words $(USEDPEPROCESS))$(reset) preprocessors.)
$(info A total of  $(red)$(NUM_ABS)$(reset)  of smt2 files after abstractions using $(red)$(words $(USEDABS))$(reset) abstractions.)
$(info A total of  $(red)$(NUM_RES)$(reset) results expected using $(red)$(words $(USEDSOLVERS))$(reset) solvers.)
$(info A total of  $(green)$(NUMBERTOBUILD)$(reset) results still need building.)
endif

#######################GATHERING RESULTS###########################################


smt2:$(SMT2EXAMPLES)
abstracted:$(ABSEXAMPLES)
results:$(RESULTS)


$(BUILD_FOLDER)/targets__$(UNIQAPPEND).txt:
	@mkdir -p $$(dirname "$@")
	@touch "$@"
	@$(file >$@) 
	@$(foreach V,$(RESULTS),$(file >>$@,$V))

#We gather the results in a csv file...
$(BUILD_FOLDER)/res__$(UNIQAPPEND).csv: $(RESULTS) $(BUILD_FOLDER)/targets__$(UNIQAPPEND).txt
	@echo "Gathering Results..."
	@add_res()\
	{\
	    file=$$1;\
	    format="$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res" ;\
	    pfile=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\1;"); \
	    preprocess=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\2;"); \
	    abs=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\3;"); \
	    solver=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\4;"); \
	    result=$$(cat $$file | grep -v ";timesolving=" | grep -v ";timeabs=" | grep -v ";timepreprocess=" | sed 's,;time,time,' | sed 's,;error,error,' | tr '\n' ' ') ;\
	    preprocesstime=$$(cat $$file | grep ";timepreprocess=" | sed -E 's,;timepreprocess=,,' | tr '\n' ' ') ; \
	    abstime=$$(cat $$file | grep ";timeabs=" | sed -E 's,;timeabs=,,' | tr '\n' ' ') ; \
	    solvetime=$$(cat $$file | grep ";timesolving=" | sed -E 's,;timesolving=,,' | tr '\n' ' ') ; \
	    echo "$${pfile} $(SEP) $${preprocess} $(SEP) $${preprocesstime} $(SEP) $${abs} $(SEP) $${abstime} $(SEP) $${solver} $(SEP) $${result} $(SEP) $${solvetime}" ;\
	};\
	cat "$(BUILD_FOLDER)/targets__$(UNIQAPPEND).txt" | tr ' ' '\n' | grep "\S" | \
	while read p; do \
	  add_res $$p;\
	done \
  	| sort | (echo 'file$(SEP)preprocess$(SEP)preprocesstime$(SEP)abs$(SEP)abstime$(SEP)solver$(SEP)result$(SEP)solvetime' && cat) | tr '$(SEP)' ';' | tr -d ' ' > $@
	@cat $@ | column -t -s ';'
	@echo ' '
	@echo ' '

$(RESULT_FOLDER)/res.csv: $(BUILD_FOLDER)/res__$(UNIQAPPEND).csv
	@cp "$(BUILD_FOLDER)/res__$(UNIQAPPEND).csv" $@
	
$(RESULT_FOLDER)/analysis.csv:$(RESULT_FOLDER)/res.csv src/analysis.sql
	@cat src/analysis.sql | sed -E "s;!resfile!;$(RESULT_FOLDER)/res.csv;" |  sqlite3 > $@
	@cat $@ | column -t -s ';'
	@echo ' '
	@echo ' '
	
$(RESULT_FOLDER)/time.dat: $(RESULT_FOLDER)/res.csv
	@cat $(RESULT_FOLDER)/res.csv | tail -n +2 | sed -E 's:.*;.*;.*;(.*);.*;.*;(.*);(.*):\3 \2 \1 1:' | sort -b -n > $@
	
$(RESULT_FOLDER)/time.pdf: $(RESULT_FOLDER)/time.dat
	@reslist=$$(cat $(RESULT_FOLDER)/time.dat | awk '{print $$2}' | sort | uniq | grep -v 'timeout' | grep -v 'error' | tr '\n' ' ');\
	 abslist=$$(cat $(RESULT_FOLDER)/time.dat | awk '{print $$3}' | sort | uniq | tr '\n' ' ');\
	 c1abslist=$$(cat $(RESULT_FOLDER)/time.dat | awk '{print $$3}' | sort | uniq | grep 'cell1' | tr '\n' ' ');\
	 otherabslist=$$(cat $(RESULT_FOLDER)/time.dat | awk '{print $$3}' | sort | uniq | grep -v 'cell1' | tr '\n' ' ');\
	 echo "linetyp=0;last=\"niothing\";inctype(str)=str eq last ? linetyp : (linetyp=linetyp+1, last=str, linetyp);set term pdf; set output \"$@\"; set title \"Solving time distribution\"; set xdata time; set timefmt \"%M:%S\"; \
	 set key below;set key noenhanced;set key horizontal; set key font \",6\"; set border behind; set xlabel \"Time(s)\"; set ylabel \"% problems finished\"; \
	 plot for [c in \"$$reslist\"] for [a in \"$$abslist\"] sprintf(\"<cat $(RESULT_FOLDER)/time.dat | grep ' %s ' | grep ' %s '; echo '00:40 %s %s 0';  echo '00:00 %s %s 0'\", c, a, c, a, c, a) \
	 using 1:4 smooth cnormal dt inctype(c)  title sprintf(\"%s %s\", c, a)"\
	| gnuplot

errors:$(RESULT_FOLDER)/res.csv $(RESULT_FOLDER)/analysis.csv $(RESULT_FOLDER)/time.pdf
	@rm -rf $(RESULT_FOLDER)/error_files
	@mkdir -p $(RESULT_FOLDER)/error_files
	@compute_error()\
	{\
	  postfixfile=$$(echo $$1 | sed -E 's:(.*);(.*);.*;(.*);.*;(.*);.*;.*:\1$(SEP)\2$(SEP)\3:'| tr -d ' ');\
	  smt2file=$$(echo "$(BUILD_FOLDER)/ABSSMT2/$$postfixfile.smt2");\
	  ext_solver=$$(echo $$1 | sed -E 's:(.*);(.*);.*;(.*);.*;(.*);.*;.*:\4:' | tr -d ' ');\
	  solver_command=$$(echo $(SOLVERDESC) | tr ' ' '\n' | grep EXT=$$ext_solver| sed -E 's;.*!COMMANDLINE=([^!]*)!.*;\1;' | tr '?' ' '); \
	  final_file=$$(echo -n "$(RESULT_FOLDER)/error_files/$$postfixfile" ; echo -n "---solver:$$ext_solver.smt2" | tr ' ' '_') ;\
	  echo "$(red)error$(reset) command $(yellow)$$solver_command $$smt2file$(reset) failed"; \
	  (echo ';'Solver command used for error is $$solver_command ; cat $$smt2file) > $$final_file ; \
	};\
	cat $(RESULT_FOLDER)/res.csv | grep error |\
	while read p; do \
	  compute_error $$p;\
	done \


all:$(RESULT_FOLDER)/time.dat $(RESULT_FOLDER)/time.pdf $(RESULT_FOLDER)/analysis.csv $(RESULT_FOLDER)/res.csv errors
.DEFAULT_GOAL := all

save_results:
	@now=$$(date | tr ' ' '_' | tr ':' '.');dir=Result_$$now;mkdir $$dir;\
	((echo "Configuration is :";\
	  echo "  Preprocess step :"; (echo $(PREPROCESSDESC) | tr ' ' '\n' | tr '?' ' ' | column -t -s '!' | sed 's/^/    /');\
	  echo "  Abstraction step :"; (echo $(ABSTRACTIONDESC) | tr ' ' '\n' | tr '?' ' ' | column -t -s '!' | sed 's/^/    /');\
	  echo "  Solver step :"; (echo $(SOLVERDESC) | tr ' ' '\n' | tr '?' ' ' | column -t -s '!' | sed 's/^/    /');\
	  echo " "; echo "Tool versions : ";\
	  usedtools=$$(echo $(USEDTOOLS) | tr ' ' '\n' | grep -v 'src/cpo' | sort | uniq | tr ' ' '\n'); \
	  for tool in $$usedtools; do \
	    version=$$($$tool --version 2> /dev/null || (echo -n "From commit hash : " && cd $$(dirname $$tool) && git rev-parse HEAD));\
	    short=$$(echo $$version | head -n 1);\
	    echo "    Tool=$$tool $$short";\
	  done;\
	) > $$dir/configuration.txt); cp Makefile "$$dir/used_makefile"; make all "RESULT_FOLDER=$$dir" BUILDTYPE=$(BUILDTYPE)


readme: 
	grip -b README.md
	
dockerimg: Dockerfile
	docker build -t jbraine/data_abstraction_benchmarks:latest .
	
dockerpush: Dockerfile
	docker login --username=jbraine && docker push jbraine/data_abstraction_benchmarks:latest
	
data_abstraction_benchmarks.tar: Dockerfile
	docker save data_abstraction_benchmarks:latest > $@

.PHONY: all smt2 abstracted results readme dockerimg dockerpush $(RESULT_FOLDER)/res.csv $(RESULT_FOLDER)/analysis.csv $(RESULT_FOLDER)/time.pdf $(RESULT_FOLDER)/time.dat save_results errors
# .SECONDARY:$(RESULT_FOLDER)/res.csv 

#######################CLEANING###########################################
clean:
	@echo "Removing files in $(BUILD_FOLDER) $(RESULT_FOLDER)"
	@rm -rf $(BUILD_FOLDER)/ $(RESULT_FOLDER)
	
