//
//  ViewController.m
//  MPMoviePlayerControllerProject
//
//  Created by Elean on 16/1/9.
//  Copyright (c) 2016年 Elean. All rights reserved.
//

#import "ViewController.h"
#import "PlayViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    
    btn.layer.borderWidth = 5;
    btn.layer.borderColor = [UIColor colorWithRed:125/255.0 green:85/255.0 blue:86/255.0 alpha:1].CGColor;
    btn.layer.cornerRadius = 8;
    
    btn.center = self.view.center;
    
    [btn addTarget:self action:@selector(playMV:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn setTitle:@"跳转播放" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
}

#pragma mark -- button点击事件

- (void)playMV:(UIButton *)btn{

    
    //希望实现的功能是点击button 将一个视频的资源路径传到第二个界面去 第二个界面专门用于视频的播放
    
    PlayViewController *playView = [[PlayViewController alloc]init];
    
    playView.filePath = [[NSBundle mainBundle]pathForResource:@"积木屋的回忆._标清" ofType:@"mp4"];
    
    [self.navigationController pushViewController:playView animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
