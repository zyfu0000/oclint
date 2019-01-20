//
//  TestViewModel.m
//  OCLintTest
//
//  Created by 杨萧玉 on 2019/1/19.
//  Copyright © 2019 杨萧玉. All rights reserved.
//

#import "TestViewModel.h"

@interface TestViewModel ()

@property (nonatomic, strong) NSObject *fuck;

@end

@implementation TestViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fuck = nil;
    }
    return self;
}

@end
