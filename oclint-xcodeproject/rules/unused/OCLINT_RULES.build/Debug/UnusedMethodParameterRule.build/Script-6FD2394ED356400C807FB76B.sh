#!/bin/sh
make -C /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/unused -f /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/unused/CMakeScripts/UnusedMethodParameterRule_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
