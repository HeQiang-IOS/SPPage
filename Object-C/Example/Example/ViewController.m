//
//  ViewController.m
//  Example
//
//  Created by sparrow on 30/07/2017.
//  Copyright © 2017 tencent. All rights reserved.
//

#import "ViewController.h"
#import "TestCoverSubController.h"

#define CoverHeight 245

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.minYPullUp = 0;

}

- (NSString *)titleForIndex:(NSInteger)index
{
    return [NSString stringWithFormat:@"TAB%zd", index];
}

- (BOOL)needMarkView
{
    return YES;
}

- (UIView *)preferCoverView
{
    UIView *view = [[UIView alloc] initWithFrame:[self preferCoverFrame]];
    view.backgroundColor = [UIColor blackColor];

    return view;
}

- (CGFloat)preferTabY
{
    return CoverHeight;
}

- (CGRect)preferCoverFrame
{
    return CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CoverHeight);
}

- (UIViewController *)controllerAtIndex:(NSInteger)index
{
    TestCoverSubController *coverController = [[TestCoverSubController alloc] init];
    coverController.view.frame = [self preferPageFrame];

    if (index == 0) {
        coverController.view.backgroundColor = [UIColor greenColor];
    } else if (index == 1) {
        coverController.view.backgroundColor = [UIColor orangeColor];
    } else {
        coverController.view.backgroundColor = [UIColor redColor];
    }

    return coverController;

}


- (NSInteger)numberOfControllers
{
    return 8;
}

-(BOOL)isPreLoad {
    return YES;
}



@end
