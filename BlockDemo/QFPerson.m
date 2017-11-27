//
//  QFPerson.m
//  BlockDemo
//
//  Created by lifeng on 17/1/11.
//  Copyright © 2017年 fq. All rights reserved.
//

#import "QFPerson.h"

@implementation QFPerson

CHAIN_FUN_IMP(QFPerson *, NSString *, nickname);
CHAIN_FUN_IMP(QFPerson *, NSInteger, age);
CHAIN_FUN_IMP(QFPerson *, CGRect, frame);



- (void)dealloc
{
    NSLog(@"QFPerson dealloc");
}

- (QFPerson *(^)(NSString *))chain_name
{
    return ^QFPerson *(NSString * name){
        
        self.name = name;
        NSLog(@"名称：%@",name);
        return self;
    };
}

- (QFPerson *(^)(NSString *))ssex
{
    QFPerson *(^sexBlock)(NSString *) = ^QFPerson *(NSString * sex){
        
        self.sex = sex;
        NSLog(@"性别：%@",sex);
        return self;
    };
    return sexBlock;
}

- (QFPerson *(^)(NSString *, NSString *))chain_language
{
    QFPerson *(^sexBlock)(NSString *,NSString *) = ^QFPerson *(NSString * language,NSString *language2){
        NSLog(@"编程语言：%@,%@",language,language2);
        return self;
    };
    return sexBlock;
}

- (QFPerson *(^)(NSString *))chain_school_blk
{
    QFPerson * (^school_block)(NSString *) = ^QFPerson * (NSString * school){
        self.school = school;
        return self;
    };
    return school_block;
}

- (void)gClassName
{
    [[[[[NSString stringWithFormat:@"%s",__FILE__] componentsSeparatedByString:@"/"] lastObject] componentsSeparatedByString:@"."] firstObject];
}

- (void)printValue:(NSString *)path
{
    NSObject * value = [self valueForKey:path];
    NSLog(@"printValue:%@[%d][%s][%d]",value,__OBJC__,__BASE_FILE__,__OBJC2__);
    
}

- (QFPerson *(^)(int))add
{
    return ^(int value)
    {
        _iResult += value;
        return self;
    };
}
+ (int)makeCaculators:(void(^)(QFPerson *make))block;
{
    QFPerson *mgr = [[QFPerson alloc] init];
    block(mgr);
    return mgr.iResult;
}


@end
