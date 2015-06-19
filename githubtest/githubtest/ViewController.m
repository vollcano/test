//
//  ViewController.m
//  githubtest
//
//  Created by AppleBar on 15/6/18.
//  Copyright (c) 2015年 oyn. All rights reserved.
//

#import "ViewController.h"
typedef enum{
    kMovingDirUp = 10,
    kMovingDirBottom,
    kMovingDirLeft,
    kMovingDirRight,
    }kMovingDir;
#define kMovingDelta 20.0f

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *icon;




@end
@implementation ViewController
- (IBAction)move:(UIButton *)sender {
    CGRect frame = self.icon.frame;
    switch (sender.tag) {
        case kMovingDirUp:
            frame.origin.y -= kMovingDelta;
            break;
        case kMovingDirBottom:
            frame.origin.y += kMovingDelta;
            break;
        case kMovingDirLeft:
            frame.origin.x -= kMovingDelta;
            break;
        case kMovingDirRight:
            frame.origin.x += kMovingDelta;
            break;
            
        default:
            break;
    }
    self.icon.frame = frame;
    
}

- (IBAction)zoom:(UIButton *)sender {
    CGRect bounds = self.icon.bounds;
    if (sender.tag ) {
        bounds.size.width += kMovingDelta;
        bounds.size.height += kMovingDelta;
    }else {
        bounds.size.width -= kMovingDelta;
        bounds.size.height -= kMovingDelta;
    }
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    self.icon.bounds = bounds;
    [UIView commitAnimations];
    
}



@end
