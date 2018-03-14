//
//  ViewController.m
//  NavigationBar
//
//  Created by PatrickY on 2018/3/14.
//  Copyright © 2018年 PatrickY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    UILabel                         *_label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGFloat navigationBarHeight = 44;
    
    //创建navigationBar
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 40, screen.size.width, navigationBarHeight)];
    
    UIBarButtonItem *saveButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(save)];
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add)];
    
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:@"测试"];
    navigationItem.leftBarButtonItem = saveButtonItem;
    navigationItem.rightBarButtonItem = addButtonItem;
    //添加到navigation上
    navigationBar.items = @[navigationItem];
    [self.view addSubview:navigationBar];
    
    CGFloat labelWidth = 130;
    CGFloat labelHeigth = 21;
    CGFloat labelTopView = 198;
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake((screen.size.width- labelWidth) / 2, labelTopView, labelWidth, labelHeigth)];
    _label.text = @"Label";
    _label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:_label];
    
}

- (void)save {
    _label.text = @"点击了save";
}


-(void)add {
    _label.text = @"点击了add";
}

@end
