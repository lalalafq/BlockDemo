//
//  ViewController2.m
//  BlockDemo
//
//  Created by lifeng on 17/1/11.
//  Copyright © 2017年 fq. All rights reserved.
//

#import "QFPerson.h"
#import "ViewController2.h"

@interface ViewController2 ()

@property (nonatomic,strong)QFPerson * person;

@end

@implementation ViewController2

- (void)dealloc
{
    NSLog(@"ViewController2 dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
     [btn setTitle:@"Click" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 30);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clikc) forControlEvents:UIControlEventTouchUpInside];

    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
     [btn2 setTitle:@"Click" forState:UIControlStateNormal];
    btn2.frame = CGRectMake(200, 100, 100, 30);
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(clikc2) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clikc
{
    self.person = [[QFPerson alloc] init];
    CGRect rect1 = {1, 2, 3, 4};
    self.person.chain_nickname(@"aa").chain_age(10).chain_name(@"fuqi").chain_nickname(@"bb").chain_nickname(@"cc").chain_frame(rect1).chain_school_blk(@"余杭中学");
    NSLog(@"person name:%@,ago:%ld,nickName:%@,rect:%@,school:%@",self.person.name,(long)self.person.age,self.person.nickname,NSStringFromCGRect(self.person.frame),self.person.school);
    PrintValueForPath(self.person,nickname);
}

- (void)clikc2
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
