#!/bin/sh
make -C /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/cocoa -f /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/cocoa/CMakeScripts/ObjCVerifyProtectedMethodRule_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
