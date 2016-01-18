//
//  ViewController.m
//  TreasureHunt
//
//  
//
//

#import "ViewController.h"
#import "MainViewController.h"
#import "SideMenuViewController.h"
#include "MFSideMenuContainerViewController.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated{

    [_txt_name setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    _txt_name.layer.borderWidth = 1.0f;
    _txt_name.layer.borderColor = [UIColor colorWithRed:154.0f/225.0f green:157.0f/225.0f blue:171.0f/225.0f alpha:1.0f].CGColor;
    
    [_txt_pass setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    _txt_pass.layer.borderWidth = 1.0f;
    _txt_pass.layer.borderColor = [UIColor colorWithRed:154.0f/225.0f green:157.0f/225.0f blue:171.0f/225.0f alpha:1.0f].CGColor;
    
    
    UIView *paddingViewName = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    _txt_name.leftView = paddingViewName;
    _txt_name.leftViewMode = UITextFieldViewModeAlways;
    
    UIView *paddingViewPass = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    _txt_pass.leftView = paddingViewPass;
    _txt_pass.leftViewMode = UITextFieldViewModeAlways;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (MainViewController *)demoController {
    return [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
}
- (UINavigationController *)navigationController {
    return [[UINavigationController alloc]
            initWithRootViewController:[self demoController]];
}

- (IBAction)login:(id)sender {
    
    // ** create sidebar container
    SideMenuViewController *leftMenuViewController = [[SideMenuViewController alloc] init];
    MFSideMenuContainerViewController *container = [MFSideMenuContainerViewController
                                                    containerWithCenterViewController:[self navigationController]
                                                    leftMenuViewController:leftMenuViewController
                                                    rightMenuViewController:nil];
    //===============
    [self presentViewController:container animated: YES completion:nil];
    /*
    MainViewController* mainView = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    [mainView setModalTransitionStyle:UIModalTransitionStylePartialCurl];
    [self presentViewController:mainView animated: YES completion:nil];*/
}
@end
