#!/bin/sh
make -C /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/convention -f /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/convention/CMakeScripts/InvertedLogicRule_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
