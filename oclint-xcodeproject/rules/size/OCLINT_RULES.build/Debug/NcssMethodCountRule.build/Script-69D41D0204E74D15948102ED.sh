#!/bin/sh
make -C /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/size -f /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/size/CMakeScripts/NcssMethodCountRule_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
