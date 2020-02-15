//
//  TestBlock.m
//  OCLintTest
//
//  Created by ZhiyangFu on 2020/2/12.
//  Copyright © 2020 4c. All rights reserved.
//

#import "TestBlock.h"

@implementation TestBlock

- (void)testCaptureSelf
{
//    __weak typeof(self) weakSelf = self;
    void (^block)() = ^{
//        __strong typeof(weakSelf) strongSelf = weakSelf;
        NSLog(@"self : %@", self);
    };
    
    block();
}

@end
