#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-CANOpenScreenConfig.mk)" "nbproject/Makefile-local-CANOpenScreenConfig.mk"
include nbproject/Makefile-local-CANOpenScreenConfig.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=CANOpenScreenConfig
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../Microchip_Lib/LCDlib.c ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/system/int/src/sys_int_pic32.c ../src/ScreenIO.c ../src/CANOpenClient.c ../src/CANOpenMaster.c ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon.c ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/CANOpenScreenConfig/framework/system/ports/src/sys_ports_static.c ../src/system_config/CANOpenScreenConfig/system_init.c ../src/system_config/CANOpenScreenConfig/system_interrupt.c ../src/system_config/CANOpenScreenConfig/system_exceptions.c ../src/main.c ../src/system_config/CANOpenScreenConfig/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/924784810/LCDlib.o ${OBJECTDIR}/_ext/260780012/drv_tmr.o ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o ${OBJECTDIR}/_ext/1360937237/ScreenIO.o ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o ${OBJECTDIR}/_ext/168969331/sys_devcon.o ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/856956406/sys_ports_static.o ${OBJECTDIR}/_ext/202655407/system_init.o ${OBJECTDIR}/_ext/202655407/system_interrupt.o ${OBJECTDIR}/_ext/202655407/system_exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/202655407/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/924784810/LCDlib.o.d ${OBJECTDIR}/_ext/260780012/drv_tmr.o.d ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1360937237/ScreenIO.o.d ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o.d ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o.d ${OBJECTDIR}/_ext/168969331/sys_devcon.o.d ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/856956406/sys_ports_static.o.d ${OBJECTDIR}/_ext/202655407/system_init.o.d ${OBJECTDIR}/_ext/202655407/system_interrupt.o.d ${OBJECTDIR}/_ext/202655407/system_exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/202655407/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/924784810/LCDlib.o ${OBJECTDIR}/_ext/260780012/drv_tmr.o ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o ${OBJECTDIR}/_ext/1360937237/ScreenIO.o ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o ${OBJECTDIR}/_ext/168969331/sys_devcon.o ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/856956406/sys_ports_static.o ${OBJECTDIR}/_ext/202655407/system_init.o ${OBJECTDIR}/_ext/202655407/system_interrupt.o ${OBJECTDIR}/_ext/202655407/system_exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/202655407/system_tasks.o

# Source Files
SOURCEFILES=../../../../Microchip_Lib/LCDlib.c ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/system/int/src/sys_int_pic32.c ../src/ScreenIO.c ../src/CANOpenClient.c ../src/CANOpenMaster.c ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon.c ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/CANOpenScreenConfig/framework/system/ports/src/sys_ports_static.c ../src/system_config/CANOpenScreenConfig/system_init.c ../src/system_config/CANOpenScreenConfig/system_interrupt.c ../src/system_config/CANOpenScreenConfig/system_exceptions.c ../src/main.c ../src/system_config/CANOpenScreenConfig/system_tasks.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-CANOpenScreenConfig.mk dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX575F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/924784810/LCDlib.o: ../../../../Microchip_Lib/LCDlib.c  .generated_files/62c1be1ff2970bee33f6ab2b3e0c4462aabefef7.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/924784810" 
	@${RM} ${OBJECTDIR}/_ext/924784810/LCDlib.o.d 
	@${RM} ${OBJECTDIR}/_ext/924784810/LCDlib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/924784810/LCDlib.o.d" -o ${OBJECTDIR}/_ext/924784810/LCDlib.o ../../../../Microchip_Lib/LCDlib.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/260780012/drv_tmr.o: ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/5ef4c9291ba38b670f70e2c9fc9aaf15d38e6a95.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/260780012" 
	@${RM} ${OBJECTDIR}/_ext/260780012/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/260780012/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/260780012/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/260780012/drv_tmr.o ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o: ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/system/int/src/sys_int_pic32.c  .generated_files/a5c6300fc3abfdb17df5d4ded837782fae863982.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2072819137" 
	@${RM} ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/system/int/src/sys_int_pic32.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ScreenIO.o: ../src/ScreenIO.c  .generated_files/88463f0649d4b9d6ede61d7ca682c759cbb37dfb.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ScreenIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ScreenIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ScreenIO.o.d" -o ${OBJECTDIR}/_ext/1360937237/ScreenIO.o ../src/ScreenIO.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CANOpenClient.o: ../src/CANOpenClient.c  .generated_files/383d6b5bfdcbcce4ec2f809c2368f7bf096af569.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CANOpenClient.o.d" -o ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o ../src/CANOpenClient.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o: ../src/CANOpenMaster.c  .generated_files/ca3e471f57a295b98aa0ea2ede61a27c3c1a12cf.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o.d" -o ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o ../src/CANOpenMaster.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/168969331/sys_devcon.o: ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon.c  .generated_files/9d30b67e8ac000f4645ae3aeca00bc7dc54db324.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/168969331" 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/168969331/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/168969331/sys_devcon.o ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o: ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/218cd4b32146ce1a93ded9151a393f68ba43fe4c.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/168969331" 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/856956406/sys_ports_static.o: ../src/system_config/CANOpenScreenConfig/framework/system/ports/src/sys_ports_static.c  .generated_files/307f0ff26407c1b34bd562d35ba0e002246c75ed.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856956406" 
	@${RM} ${OBJECTDIR}/_ext/856956406/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/856956406/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/856956406/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/856956406/sys_ports_static.o ../src/system_config/CANOpenScreenConfig/framework/system/ports/src/sys_ports_static.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_init.o: ../src/system_config/CANOpenScreenConfig/system_init.c  .generated_files/b729f26c866da273203f5d75351ee70bd5fded10.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_init.o.d" -o ${OBJECTDIR}/_ext/202655407/system_init.o ../src/system_config/CANOpenScreenConfig/system_init.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_interrupt.o: ../src/system_config/CANOpenScreenConfig/system_interrupt.c  .generated_files/752b2db6b85295b5fc6ac2c7caeee61f38e01c28.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/202655407/system_interrupt.o ../src/system_config/CANOpenScreenConfig/system_interrupt.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_exceptions.o: ../src/system_config/CANOpenScreenConfig/system_exceptions.c  .generated_files/4252dd09129af4c26dcc5868c4251887cc5c7192.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/202655407/system_exceptions.o ../src/system_config/CANOpenScreenConfig/system_exceptions.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/3ba3da80836d40be3357f897e41bb916c444ac3.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_tasks.o: ../src/system_config/CANOpenScreenConfig/system_tasks.c  .generated_files/ade2105fe6e1e25795490fbcd402cbefae431b63.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_tasks.o.d" -o ${OBJECTDIR}/_ext/202655407/system_tasks.o ../src/system_config/CANOpenScreenConfig/system_tasks.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/924784810/LCDlib.o: ../../../../Microchip_Lib/LCDlib.c  .generated_files/12a0dc390a744b9ab1aca190348e6735e1679b68.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/924784810" 
	@${RM} ${OBJECTDIR}/_ext/924784810/LCDlib.o.d 
	@${RM} ${OBJECTDIR}/_ext/924784810/LCDlib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/924784810/LCDlib.o.d" -o ${OBJECTDIR}/_ext/924784810/LCDlib.o ../../../../Microchip_Lib/LCDlib.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/260780012/drv_tmr.o: ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/5c0ee2c616185d23c348cd277d10c12f6cf3c54e.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/260780012" 
	@${RM} ${OBJECTDIR}/_ext/260780012/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/260780012/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/260780012/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/260780012/drv_tmr.o ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o: ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/system/int/src/sys_int_pic32.c  .generated_files/691b8ea4d263090ec98b6a748c7a99b53c5fbd3d.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2072819137" 
	@${RM} ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/2072819137/sys_int_pic32.o ../../../../../../Programfiles/Microchip/harmony/v2_04/framework/system/int/src/sys_int_pic32.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ScreenIO.o: ../src/ScreenIO.c  .generated_files/cdaf5a74e6e7c2963d4a786a1dc1ebd9bd19cb8a.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ScreenIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ScreenIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ScreenIO.o.d" -o ${OBJECTDIR}/_ext/1360937237/ScreenIO.o ../src/ScreenIO.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CANOpenClient.o: ../src/CANOpenClient.c  .generated_files/5d54152d71106d063009c687e79c98d8519dacd6.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CANOpenClient.o.d" -o ${OBJECTDIR}/_ext/1360937237/CANOpenClient.o ../src/CANOpenClient.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o: ../src/CANOpenMaster.c  .generated_files/c14bb835c0ae9357d06a933e7165d51fc38fcbee.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o.d" -o ${OBJECTDIR}/_ext/1360937237/CANOpenMaster.o ../src/CANOpenMaster.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/168969331/sys_devcon.o: ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon.c  .generated_files/fd79cdca0d48debd1a815e02f5ba3bfd8561f293.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/168969331" 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/168969331/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/168969331/sys_devcon.o ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o: ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/3b660f166880a76435d55825effc42afbcebd33d.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/168969331" 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/168969331/sys_devcon_pic32mx.o ../src/system_config/CANOpenScreenConfig/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/856956406/sys_ports_static.o: ../src/system_config/CANOpenScreenConfig/framework/system/ports/src/sys_ports_static.c  .generated_files/b8f139f0a3a64a952fbe4aa8e3eb29de8f092ce.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856956406" 
	@${RM} ${OBJECTDIR}/_ext/856956406/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/856956406/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/856956406/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/856956406/sys_ports_static.o ../src/system_config/CANOpenScreenConfig/framework/system/ports/src/sys_ports_static.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_init.o: ../src/system_config/CANOpenScreenConfig/system_init.c  .generated_files/c920d2b4ba42499ad38b6858949c8d843db08f20.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_init.o.d" -o ${OBJECTDIR}/_ext/202655407/system_init.o ../src/system_config/CANOpenScreenConfig/system_init.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_interrupt.o: ../src/system_config/CANOpenScreenConfig/system_interrupt.c  .generated_files/9e08680c1481af99821b8109618c45c36fb6f69b.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/202655407/system_interrupt.o ../src/system_config/CANOpenScreenConfig/system_interrupt.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_exceptions.o: ../src/system_config/CANOpenScreenConfig/system_exceptions.c  .generated_files/925f457750c7862ca293ae2be374a907035b9b4f.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/202655407/system_exceptions.o ../src/system_config/CANOpenScreenConfig/system_exceptions.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/e7cefbe4701b2fbcdef1abbb6fc867b1b5cf82e5.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/202655407/system_tasks.o: ../src/system_config/CANOpenScreenConfig/system_tasks.c  .generated_files/4688b4ebc261ce3c29fcf7b9e2ec5c2949b6d3e4.flag .generated_files/50be64e1b5598e355e5cea58873028c1afee257.flag
	@${MKDIR} "${OBJECTDIR}/_ext/202655407" 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/202655407/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/CANOpenScreenConfig" -I"../src/CANOpenScreenConfig" -I"../../../../../../Programfiles/Microchip/harmony/v2_04/framework" -I"../src/system_config/CANOpenScreenConfig/framework" -MP -MMD -MF "${OBJECTDIR}/_ext/202655407/system_tasks.o.d" -o ${OBJECTDIR}/_ext/202655407/system_tasks.o ../src/system_config/CANOpenScreenConfig/system_tasks.c    -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../Programfiles/Microchip/harmony/v2_04/bin/framework/peripheral/PIC32MX575F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\Programfiles\Microchip\harmony\v2_04\bin\framework\peripheral\PIC32MX575F512L_peripherals.a      -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../Programfiles/Microchip/harmony/v2_04/bin/framework/peripheral/PIC32MX575F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\Programfiles\Microchip\harmony\v2_04\bin\framework\peripheral\PIC32MX575F512L_peripherals.a      -DXPRJ_CANOpenScreenConfig=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/template.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/CANOpenScreenConfig
	${RM} -r dist/CANOpenScreenConfig

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
