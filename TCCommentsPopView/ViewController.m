//
//  ViewController.m
//  SmoothSliding
//
//  Created by XianCheng Wang on 2019/12/20.
//  Copyright © 2019 XianCheng Wang. All rights reserved.
//

#import "ViewController.h"
#import "TCCommentsPopView.h"
#import "MyCommentView.h"
@interface ViewController ()<MyCommentViewDelegate>
@property (nonatomic, strong) TCCommentsPopView *popView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"打开评论" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(open) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)open {
    MyCommentView *commentView = [[MyCommentView alloc]init];
    commentView.delegate = self;
    self.popView = [TCCommentsPopView commentsPopViewWithFrame:[UIScreen mainScreen].bounds commentBackView:commentView];
    [self.popView showToView:self.view];
}

#pragma mark - MyCommentViewDelegate
- (void)closeComment {
    [self.popView dismiss];
}

@end
