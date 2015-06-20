//
//  ViewController.m
//  githubtest
//
//  Created by AppleBar on 15/6/18.
//  Copyright (c) 2015年 oyn. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic,strong)UILabel *noLabel;
@property (nonatomic,strong)UIImageView *imageView;
@property (nonatomic,strong)UIButton *leftButton;
@property (nonatomic,strong)UIButton *rightButton;
@property (nonatomic,strong)UILabel *descLabel;

@end

@implementation ViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.noLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 40)];
    self.noLabel.text = @"1/5";
    self.noLabel.textColor = [UIColor blueColor];
    self.noLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.noLabel];
    
}

@end
