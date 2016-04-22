//
//  ViewController.m
//  输出字符串长度
//
//  Created by 零碎 on 16/4/14.
//  Copyright © 2016年 Happy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",[self longth:@123456 with:3]);
}

- (NSString *)longth:(NSNumber *)number with:(NSInteger)width {
    NSString *str = [number stringValue];
    if (str.length < width) {
        for (NSInteger i = str.length; i < width; i ++) {
            str = [NSString stringWithFormat:@"0%@",str];
        }
        return str;
    }else {
        NSString *str1 = @"";
        for (NSInteger i = 0; i < width; i ++) {
            unichar ch = [str characterAtIndex:str.length - 1 - i];
            str1 = [NSString stringWithFormat:@"%c%@",ch,str1];
        }
        return str1;
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
