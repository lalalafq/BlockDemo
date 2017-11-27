//
//  Person.h
//  BlockDemo
//
//  Created by lifeng on 17/1/13.
//  Copyright © 2017年 fq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,copy)NSString * name;

- (Person *)getPersonByName:(NSString *)name;

@end
