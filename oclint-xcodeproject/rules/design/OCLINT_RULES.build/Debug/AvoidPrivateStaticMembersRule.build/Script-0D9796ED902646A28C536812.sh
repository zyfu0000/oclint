#!/bin/sh
make -C /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/design -f /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/design/CMakeScripts/AvoidPrivateStaticMembersRule_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
