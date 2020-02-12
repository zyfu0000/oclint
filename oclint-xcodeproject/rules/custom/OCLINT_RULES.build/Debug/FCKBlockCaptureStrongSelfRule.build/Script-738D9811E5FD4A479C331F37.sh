#!/bin/sh
make -C /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/custom -f /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules/custom/CMakeScripts/FCKBlockCaptureStrongSelfRule_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all

cp /Users/zhiyangfu/Workspace/iOS/projects/oclint/oclint-xcodeproject/rules.dl/Debug/libFCKBlockCaptureStrongSelfRule.dylib /Users/zhiyangfu/Workspace/iOS/projects/oclint/build/oclint-release/lib/oclint/rules/libFCKBlockCaptureStrongSelfRule.dylib

