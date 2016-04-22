//
//  ViewController.m
//  数组的增删改查
//
//  Created by 零碎 on 16/3/1.
//  Copyright © 2016年 __dong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    
    
    
    
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    [arr addObject:@"a"];
    [arr addObject:@"b"];
    [arr addObject:@"c"];
    NSLog(@"%@",arr);
    [arr insertObject:@"d" atIndex:1];
    NSLog(@"%@",arr);
    
    [arr replaceObjectAtIndex:1 withObject:@"mao"];
    NSLog(@"%@",arr);
    [arr exchangeObjectAtIndex:0 withObjectAtIndex:2];
    NSLog(@"%@",arr);
    
    NSString *name = [arr objectAtIndex:1];
    NSInteger number = [arr indexOfObject:@"a"];
    NSLog(@"%@---%ld",name,number);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
