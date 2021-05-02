

#######################Basic Configuration####################################
ifdef ($(findstring .csv,$(MAKECMDGOALS)))
$(info Printing configuration information)
PRINT=yes
endif

PATH_MAIN_FOLDER?=..
EXAMPLES_FOLDER?=Examples
BUILD_FOLDER?=Build
RESULT_FOLDER?=Result
#Separator to use. Careful, it must not be used within your filenames, nor interfere with make, bash, sed, ...  This is a problem at the moment
SEP?=-
BENCHMARKS?=$(shell find $(EXAMPLES_FOLDER) -type f)

#######################Executable Configuration####################################

CONVERTERTOOL?=$(PATH_MAIN_FOLDER)/hornconverter/converter
DATAABSTOOL?=$(PATH_MAIN_FOLDER)/DataAbstraction/dataabs
VAPHORTOOL?=$(PATH_MAIN_FOLDER)/CellMorphing/vaphor
Z3TOOL?=z3
ELDARICATOOL?=eld

#######################SMT2FromExamples#######################################



#We define two preprocessor that are used to preprocess files into smt2 files (by converting them, simplifying, ...)
#Each Preprocessor must have :
#  -A tool (executable)
#  -A time limit
#  -The suffix of the files handled by that preprocessor
#  -The extention used in filenames to distinguish that preprocessor

#We define several preprocessors : one to handle smt2 to files by just copying them, the others using our converter
PREPROCESSORS+=JAVATOSMT2 JAVATOSMT2_1 JAVATOSMT2_2 JAVATOSMT2HINTED JAVATOSMT2HINTED1 JAVATOSMT2HINTED2 
PREPROCESSOR_TL?=600s

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
JAVATOSMT2HINTED2_TL?=10s
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
ifdef $(PRINT)
ifeq "$$($(1)_TOOLPATHOK)" "ok"
$$(info preprocess tool for $(1) found)
$(1)_EXAMPLES=$$(shell echo $(BENCHMARKS) | tr ' ' '\n' | grep "$$($(1)_EXP)" | grep -v " " | grep -v "$(SEP)" | tr '\n' ' ')
EXAMPLES+=$$($(1)_EXAMPLES)
SMT2EXAMPLES+=$$(subst $$($(1)_EXP),$(SEP)$$($(1)_EXT).smt2,$$(subst $(EXAMPLES_FOLDER)/,$(BUILD_FOLDER)/SMT2/,$$($(1)_EXAMPLES))) 
else
$$(info preprocess tool for $(1) has not been found. Continuing without generating the corresponding targets.)
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

ABSTOOLS+=ABSNONE VAPHOR VAPHORC2 DATAABS DATAABSACKER DATAABSC2 DATAABSACKERC2
ABSTOOL_TL?=1000s


ABSNONE_TOOL?=src/cpo
ABSNONE_TL?=$(ABSTOOL_TL)
ABSNONE_EXT?=noabs


VAPHOR_TOOL?=$(VAPHORTOOL)
VAPHOR_TL?=$(ABSTOOL_TL)
VAPHOR_EXT?=vaphor_cell1

VAPHORC2_TOOL?=$(VAPHORTOOL) -distinct 2
VAPHORC2_TL?=$(ABSTOOL_TL)
VAPHORC2_EXT?=vaphor_cell2

DATAABS_TOOL?=$(DATAABSTOOL)
DATAABS_TL?=$(ABSTOOL_TL)
DATAABS_EXT?=dataabs_basic_cell1

DATAABSACKER_TOOL?=$(DATAABSTOOL) -acker
DATAABSACKER_TL?=$(ABSTOOL_TL)
DATAABSACKER_EXT?=dataabs_acker_cell1

DATAABSC2_TOOL?=$(DATAABSTOOL) -nbcells 2
DATAABSC2_TL?=$(ABSTOOL_TL)
DATAABSC2_EXT?=dataabs_basic_cell2

DATAABSACKERC2_TOOL?=$(DATAABSTOOL) -nbcells 2 -acker
DATAABSACKERC2_TL?=$(ABSTOOL_TL)
DATAABSACKERC2_EXT?=dataabs_acker_cell2


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
ifdef $(PRINT)
ifeq "$$($(1)_TOOLPATHOK)" "ok"
$$(info abstraction tool for $(1) found)
ABSEXAMPLES+=$$(subst .smt2,$(SEP)$$($(1)_EXT).smt2,$$(subst /SMT2/,/ABSSMT2/,$$(SMT2EXAMPLES))) 
else
$$(info abstraction tool for $(1) has not been found. Continuing without generating the corresponding targets.)
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


Z3_SOLVER_TL?=40s

define mk_z3_rule
Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)_TOOL=$(Z3TOOL) sat.random_seed=$(1) sls.random_seed=$(2) fp.spacer.random_seed=$(3)
Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)_TL=$(Z3_SOLVER_TL)
Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)_EXT=z3_satrd$(1)_slsrd_$(2)_spacerrd$(3)_$(Z3_SOLVER_TL)
Z3_SOLVERS+=Z3_SATRD$(1)_SLSRD$(2)_SPACERRD$(3)
endef

SATRD?=0
SLSRD?=0
SPACERRD?=0 1
$(foreach satrd,$(SATRD),$(foreach slsrd,$(SLSRD),$(foreach spacerrd,$(SPACERRD),$(eval $(call mk_z3_rule,$(satrd),$(slsrd),$(spacerrd))))))


SOLVERS+=$(Z3_SOLVERS)

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
ifdef $(PRINT)
ifeq "$$($(1)_TOOLPATHOK)" "ok"
$$(info solver tool for $(1) found)
RESULTS+=$$(subst .smt2,$(SEP)$$($(1)_EXT).res,$$(subst /ABSSMT2/,/Results/,$$(ABSEXAMPLES))) 
else
$$(info solver tool for $(1) has not been found. Continuing without generating the corresponding targets.)
endif
endif
endef

$(foreach solver,$(SOLVERS),$(eval $(call mk_solver_rule,$(solver))))

.SECONDARY: $(RESULTS)

#######################PRINTING INFORMATION###########################################

NUM_SMT2=$(words $(SMT2EXAMPLES))
NUM_ABS=$(words $(ABSEXAMPLES))
NUM_RES=$(words $(RESULTS))
ifdef $(PRINT)
$(info Current configuration has :)
$(info A total of  $(NUM_SMT2) inital smt2 files)
$(info A total of  $(NUM_ABS)  of smt2 files after abstractions)
$(info A total of  $(NUM_RES) results expected)
endif

#######################GATHERING RESULTS###########################################

.DEFAULT_GOAL := $(RESULT_FOLDER)/analysis.csv

#We gather the results in a csv file...
$(RESULT_FOLDER)/res.csv: $(RESULTS)
	@mkdir -p $$(dirname $@)
	@for file in $(RESULTS); do \
	    format="$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res" ;\
	    pfile=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\1;"); \
	    preprocess=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\2;"); \
	    abs=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\3;"); \
	    solver=$$(echo $$file | sed -E "s;$(BUILD_FOLDER)/Results/([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^$(SEP)]*)$(SEP)([^\.]*).res;\4;"); \
	    result=$$(cat $$file | grep -v ";timesolving=" | grep -v ";timeabs=" | grep -v ";timepreprocess=" | sed 's,;time,time,' | sed 's,;error,error,' | tr '\n' ' ') ;\
	    preprocesstime=$$(cat $$file | grep ";timepreprocess=" | sed -E 's,;timepreprocess=,,' | tr '\n' ' ') ; \
	    abstime=$$(cat $$file | grep ";timeabs=" | sed -E 's,;timeabs=,,' | tr '\n' ' ') ; \
	    solvetime=$$(cat $$file | grep ";timesolving=" | sed -E 's,;timesolving=,,' | tr '\n' ' ') ; \
	    echo "$${pfile} $(SEP) $${preprocess} $(SEP) $${preprocesstime} $(SEP) $${abs} $(SEP) $${abstime} $(SEP) $${solver} $(SEP) $${result} $(SEP) $${solvetime}" ; \
	done | sort | (echo 'file $(SEP) preprocess $(SEP) preprocesstime $(SEP) abs $(SEP) abstime $(SEP) solver $(SEP) result $(SEP) solvetime' && cat) | tr '$(SEP)' ';' | tr -d ' ' > $@
	@cat $@ | column -t -s ';'
	@echo ' '
	@echo ' '
	
$(RESULT_FOLDER)/analysis.csv: $(RESULT_FOLDER)/res.csv src/analysis.sql
	@cat src/analysis.sql | sed -E "s;!resfile!;$(RESULT_FOLDER)/res.csv;" |  sqlite3 > $@
	
	
all:$(RESULT_FOLDER)/analysis.csv
smt2:$(SMT2EXAMPLES)
abstracted:$(ABSEXAMPLES)
results:$(RESULTS)

readme: 
	grip -b README.md
	
dockerimg: Dockerfile
	docker build -t array-benchmarks .
	
array-benchmarks.tar: dockerimg
	docker save array-benchmarks > $@

.phony: all smt2 abstracted results readme dockerimg
.SECONDARY:$(RESULT_FOLDER)/res.csv 

#######################CLEANING###########################################
clean:
	@echo "Removing files in $(BUILD_FOLDER) $(RESULT_FOLDER)"
	@rm -rf $(BUILD_FOLDER)/ $(RESULT_FOLDER)
	
