//
//  QFPerson.h
//  BlockDemo
//
//  Created by lifeng on 17/1/11.
//  Copyright © 2017年 fq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define MAAX(A,B) ({__type__(A) __az=(A);__type__(B) __bz=(B);__az>__bz?__az:__bz;})

#define CHAIN_FUN(ClassName,Type,PropName) -(ClassName(^)(Type))chain_##PropName

#define CHAIN_FUN_IMP(ClassName,PropType,PropName) CHAIN_FUN(ClassName,PropType,PropName)\
{\
    ClassName (^block)(PropType) = ^ClassName(PropType prop){\
        self.PropName = prop;\
        return self;\
    };\
    return block;\
}

#define PrintValueForPath(TARGET,KEYPATH)\
    [(QFPerson*)(TARGET) printValue:@keypath(TARGET,KEYPATH)];

#define keypath(OBJ, PATH) \
(((void)(NO && ((void)OBJ.PATH, NO)), # PATH))

@interface QFPerson : NSObject


@property (nonatomic,copy)NSString * name;
- (QFPerson * (^)(NSString * ))chain_name;


@property (nonatomic,copy)NSString * nickname;
CHAIN_FUN(QFPerson *, NSString *, nickname);

@property (nonatomic)NSInteger age;
CHAIN_FUN(QFPerson *, NSInteger, age);

@property (nonatomic)CGRect frame;
CHAIN_FUN(QFPerson *, CGRect, frame);

@property (nonatomic,copy)NSString * school;
@property (nonatomic,copy)QFPerson * (^chain_school_blk)(NSString *);

@property (nonatomic,copy)NSString * sex;
- (QFPerson * (^)(NSString * ))ssex;

@property (nonatomic,copy)NSString * language;
- (QFPerson * (^)(NSString * ,NSString *))chain_language;

- (void)printValue:(NSString *)path;






@property (nonatomic)int iResult;
- (QFPerson *(^)(int))add;
//计算
+ (int)makeCaculators:(void(^)(QFPerson *make))caculatorMaker;


@property (nonatomic,strong)void (^persionBlock)(void);

@end
