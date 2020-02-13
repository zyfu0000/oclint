#!/bin/sh
make -C /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/migration -f /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/migration/CMakeScripts/ObjCObjectSubscriptingRule_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
