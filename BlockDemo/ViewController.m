//
//  ViewController.m
//  BlockDemo
//
//  Created by lifeng on 17/1/11.
//  Copyright © 2017年 fq. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 30);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clikc) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)clikc
{
    ViewController2 * vc = [[ViewController2 alloc] init];
    vc.view.backgroundColor = [UIColor grayColor];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
