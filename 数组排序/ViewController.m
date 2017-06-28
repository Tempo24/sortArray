//
//  ViewController.m
//  数组排序
//
//  Created by Tempo on 2017/6/13.
//  Copyright © 2017年 COM.QUHWA.Tempo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    
    NSMutableArray *arr =  [NSMutableArray arrayWithObjects:
                            [NSNumber numberWithInt:5],
                            [NSNumber numberWithInt:8],
                            [NSNumber numberWithInt:7],
                            [NSNumber numberWithInt:20],
                            [NSNumber numberWithInt:1],
                            [NSNumber numberWithInt:3],
                            [NSNumber numberWithInt:11],
                            [NSNumber numberWithInt:0],
                            [NSNumber numberWithInt:25],
                            [NSNumber numberWithInt:9],
                            [NSNumber numberWithInt:6],
                            [NSNumber numberWithInt:22],
                            [NSNumber numberWithInt:9],
                            [NSNumber numberWithInt:6],
                            [NSNumber numberWithInt:22],
                            nil
                            ];
    
    NSLog(@"排序前：%@",arr);
    //进行从小到大排序
    [self paixuArr:arr];
    NSLog(@"排序后：%@",arr);
    
}

//选择排序
- (void)paixuArr:(NSMutableArray *)arr {
    
    for (int i = 0; i < arr.count-1; i++) {
        for (int j = i+1; j < arr.count; j++) {
            //if ([arr[i] intValue] < [arr[j] intValue])从大到小
            if ([arr[i] intValue] > [arr[j] intValue]) {//从小到大
                
                int temp = [arr[i] intValue];
                arr[i] = arr[j];
                arr[j] = [NSNumber numberWithInt:temp];
                          
                
            }
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
