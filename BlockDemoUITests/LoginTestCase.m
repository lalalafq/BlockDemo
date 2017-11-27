//
//  LoginTestCase.m
//  BlockDemo
//
//  Created by lifeng on 17/2/3.
//  Copyright © 2017年 fq. All rights reserved.
//

#import "LoginTestCase.h"

@implementation LoginTestCase

- (void)beforeAll
{
    
}

- (void)afterEach
{
}



- (void)beforeEach
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self jumpToRegisterPage:tester];
    });
    
}

- (void)jumpToRegisterPage:(KIFUITestActor *)actor
{
    [actor tapViewWithAccessibilityLabel:@"新用户注册"];
}

@end
