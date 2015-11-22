//
//  ViewController.m
//  ZTMapSection
//
//  Created by Tong Zhao on 15/11/10.
//  Copyright © 2015年 ZhTg. All rights reserved.
//

#import "ViewController.h"
#import "ParkViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)push:(id)sender {
    ParkViewController* mapView = [ParkViewController new];
    [self presentViewController:mapView animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
