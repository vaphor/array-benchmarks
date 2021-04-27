

#######################Basic Configuration####################################


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
VAPHORTOOL?=$(PATH_MAIN_FOLDER)/cellmorphingV2/vaphor
Z3TOOL?=z3
ELDARICATOOL?=/home/julien/HornTools/eldarica-binary-dist/eld

#######################SMT2FromExamples#######################################



#We define two preprocessor that are used to preprocess files into smt2 files (by converting them, simplifying, ...)
#Each Preprocessor must have :
#  -A tool (executable)
#  -A time limit
#  -The suffix of the files handled by that preprocessor
#  -The extention used in filenames to distinguish that preprocessor

#We define several preprocessors : one to handle smt2 to files by just copying them, the others using our converter
PREPROCESSORS?=JAVATOSMT2 JAVATOSMT2_1 JAVATOSMT2_2 JAVATOSMT2HINTED JAVATOSMT2HINTED1 JAVATOSMT2HINTED2

CPSMT2_TOOL?=cat
CPSMT2_TL?=2s
CPSMT2_EXP?=.smt2
CPSMT2_EXT?=cp

JAVATOSMT2_TOOL?=$(CONVERTERTOOL)
JAVATOSMT2_TL?=10s
JAVATOSMT2_EXP?=.java
JAVATOSMT2_EXT?=$(JAVATOSMT2_TL)cvjava_nohints_pn0

JAVATOSMT2_1_TOOL?=$(CONVERTERTOOL) -pn 1
JAVATOSMT2_1_TL?=10s
JAVATOSMT2_1_EXP?=.java
JAVATOSMT2_1_EXT?=$(JAVATOSMT2_TL)cvjava_nohints_pn1

JAVATOSMT2_2_TOOL?=$(CONVERTERTOOL) -pn 2
JAVATOSMT2_2_TL?=10s
JAVATOSMT2_2_EXP?=.java
JAVATOSMT2_2_EXT?=$(JAVATOSMT2_TL)cvjava_nohints_pn2



JAVATOSMT2HINTED_TOOL?=$(CONVERTERTOOL) -hints
JAVATOSMT2HINTED_TL?=10s
JAVATOSMT2HINTED_EXP?=.java
JAVATOSMT2HINTED_EXT?=$(JAVATOSMT2_TL)cvjava_hinted_pn0


JAVATOSMT2HINTEDOLD_TOOL?=$(dir $(CONVERTERTOOL))/converterhinted
JAVATOSMT2HINTEDOLD_TL?=10s
JAVATOSMT2HINTEDOLD_EXP?=.java
JAVATOSMT2HINTEDOLD_EXT?=$(JAVATOSMT2_TL)cvjavaoldhinted

JAVATOSMT2HINTED1_TOOL?=$(CONVERTERTOOL) -hints -pn 1
JAVATOSMT2HINTED1_TL?=10s
JAVATOSMT2HINTED1_EXP?=.java
JAVATOSMT2HINTED1_EXT?=$(JAVATOSMT2_TL)cvjava_hinted_pn1


JAVATOSMT2HINTEDOLD1_TOOL?=$(dir $(CONVERTERTOOL))/converterhinted -pn 1
JAVATOSMT2HINTEDOLD1_TL?=10s
JAVATOSMT2HINTEDOLD1_EXP?=.java
JAVATOSMT2HINTEDOLD1_EXT?=$(JAVATOSMT2_TL)cvjavaoldhinted1

JAVATOSMT2HINTED2_TOOL?=$(CONVERTERTOOL) -hints -pn 2
JAVATOSMT2HINTED2_TL?=10s
JAVATOSMT2HINTED2_EXP?=.java
JAVATOSMT2HINTED2_EXT?=$(JAVATOSMT2_TL)cvjava_hinted_pn2


JAVATOSMT2HINTEDOLD2_TOOL?=$(dir $(CONVERTERTOOL))/converterhinted -pn 2
JAVATOSMT2HINTEDOLD2_TL?=10s
JAVATOSMT2HINTEDOLD2_EXP?=.java
JAVATOSMT2HINTEDOLD2_EXT?=$(JAVATOSMT2_TL)cvjavaoldhinted2

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
ifeq "$$($(1)_TOOLPATHOK)" "ok"
$$(info preprocess tool for $(1) found)
$(1)_EXAMPLES=$$(shell echo $(BENCHMARKS) | tr ' ' '\n' | grep "$$($(1)_EXP)" | grep -v " " | grep -v "$(SEP)" | tr '\n' ' ')
EXAMPLES+=$$($(1)_EXAMPLES)
SMT2EXAMPLES+=$$(subst $$($(1)_EXP),$(SEP)$$($(1)_EXT).smt2,$$(subst $(EXAMPLES_FOLDER)/,$(BUILD_FOLDER)/SMT2/,$$($(1)_EXAMPLES))) 
else
$$(info preprocess tool for $(1) has not been found. Continuing without generating the corresponding targets.)
endif
endef

$(foreach preprocess,$(PREPROCESSORS),$(eval $(call mk_preprocess_rule,$(preprocess))))

.PRECIOUS: $(SMT2EXAMPLES)

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

ABSTOOLS=ABSNONE VAPHOR VAPHORC2 DATAABS DATAABSACKER DATAABSACKERC2 DATAABSC2

ABSNONE_TOOL?=src/cpo
ABSNONE_TL?=3s
ABSNONE_EXT?=noabs


VAPHOR_TOOL?=$(VAPHORTOOL)
VAPHOR_TL?=3s
VAPHOR_EXT?=vaphor_cell1

VAPHORC2_TOOL?=$(VAPHORTOOL) -distinct 2
VAPHORC2_TL?=3s
VAPHORC2_EXT?=vaphor_cell2

DATAABS_TOOL?=$(DATAABSTOOL)
DATAABS_TL?=3s
DATAABS_EXT?=dataabs_basic_cell1

DATAABSACKER_TOOL?=$(DATAABSTOOL) -acker
DATAABSACKER_TL?=3s
DATAABSACKER_EXT?=dataabs_acker_cell1

DATAABSC2_TOOL?=$(DATAABSTOOL) -distinct 2
DATAABSC2_TL?=3s
DATAABSC2_EXT?=dataabs_basic_cell2

DATAABSACKERC2_TOOL?=$(DATAABSTOOL) -distinct 2 -acker
DATAABSACKERC2_TL?=3s
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
ifeq "$$($(1)_TOOLPATHOK)" "ok"
$$(info abstraction tool for $(1) found)
ABSEXAMPLES+=$$(subst .smt2,$(SEP)$$($(1)_EXT).smt2,$$(subst /SMT2/,/ABSSMT2/,$$(SMT2EXAMPLES))) 
else
$$(info abstraction tool for $(1) has not been found. Continuing without generating the corresponding targets.)
endif
endef

$(foreach abstool,$(ABSTOOLS),$(eval $(call mk_abs_rule,$(abstool))))

.PRECIOUS: $(ABSEXAMPLES)

#######################FINAL SOLVING###########################################

#We define solvers for files. 
#Each solver tool must have :
#  -A tool (executable)
#  -A time limit
#  -The extention used in filenames to distinguish that abstraction tool

SOLVERS=Z3

Z3_TOOL?=$(Z3TOOL)
Z3_TL?=3s
Z3_EXT?=z3

ELDARICA_TOOL?=$(ELDARICATOOL)
ELDARICA_TL?=40s
ELDARICA_EXT?=$(ELDARICA_TL)eld

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
ifeq "$$($(1)_TOOLPATHOK)" "ok"
$$(info solver tool for $(1) found)
RESULTS+=$$(subst .smt2,$(SEP)$$($(1)_EXT).res,$$(subst /ABSSMT2/,/Results/,$$(ABSEXAMPLES))) 
else
$$(info solver tool for $(1) has not been found. Continuing without generating the corresponding targets.)
endif
endef

$(foreach solver,$(SOLVERS),$(eval $(call mk_solver_rule,$(solver))))

.PRECIOUS: $(RESULTS)

#######################PRINTING INFORMATION###########################################

NUM_SMT2=$(words $(SMT2EXAMPLES))
NUM_ABS=$(words $(ABSEXAMPLES))
NUM_RES=$(words $(RESULTS))
$(info Current configuration has :)
$(info A total of  $(NUM_SMT2) inital smt2 files)
$(info A total of  $(NUM_ABS)  of smt2 files after abstractions)
$(info A total of  $(NUM_RES) results expected)

#######################GATHERING RESULTS###########################################

.DEFAULT_GOAL := $(RESULT_FOLDER)/res.csv

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
	done | sort | (echo 'file $(SEP) preprocess $(SEP) preprocesstime $(SEP) abs $(SEP) abstime $(SEP) solver $(SEP) result $(SEP) solvetime' && cat) | tr '$(SEP)' ';' | tr -d ' ' > $
	@cat $@ | column -t -s ';'
	@echo ' '
	@echo ' '
	
$(RESULT_FOLDER)/analysis.csv: $(RESULT_FOLDER)/res.csv src/analysis.sql
	@sqlite3 < src/analysis.sql > $@
	
$(RESULT_FOLDER)/analysis_trimmed.csv: $(RESULT_FOLDER)/analysis.csv src/analysis_trimmed.sql
	@sqlite3 < src/analysis_trimmed.sql > $@
	
$(RESULT_FOLDER)/pivot_table.csv: $(RESULT_FOLDER)/analysis.csv
	@cat $^ | sed -E 's,([^;]*);([^;]*);([^;]*);([^;]*);([^;]*),\1;\3 cell\2 \4;\5,'| datamash --header-in --field-separator=\; crosstab 1,2 unique 3 | sed -E 's,N/A,0,g' | sed -E 's,cellNA,,g' > $@
	@(echo -n '  ftype ' && cat $@) 

$(RESULT_FOLDER)/pivot_table_trimmed.csv: $(RESULT_FOLDER)/analysis_trimmed.csv
	@cat $^ | sed -E 's,([^;]*);([^;]*);([^;]*);([^;]*);([^;]*),\1;\3 cell\2 \4;\5,'| datamash --header-in --field-separator=\; crosstab 1,2 unique 3 | sed -E 's,N/A,0,g' | sed -E 's,cellNA,,g' > $@
	@(echo -n '  ftype ' && cat $@) 

#######################CLEANING###########################################
clean:
	@echo "Removing files in $(BUILD_FOLDER) $(RESULT_FOLDER)"
	@rm -rf $(BUILD_FOLDER)/ $(RESULT_FOLDER)
	
