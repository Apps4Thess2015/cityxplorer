//
//  Task2ViewController.m
//  TreasureHunt
//
//  Created by epek on 1/12/16.
//  Copyright © 2016 epke carver. All rights reserved.
//

#import "Task2ViewController.h"
#import "QRscanViewController.h"

@interface Task2ViewController ()

@end

@implementation Task2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)scan:(id)sender {
    QRscanViewController* photoView = [[QRscanViewController alloc] initWithNibName:@"QRscanViewController" bundle:nil];
    [photoView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:photoView animated: YES completion:nil];

}
@end
