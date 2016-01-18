//
//  SideMenuViewController.m
//  TreasureHunt
//
//  
//
//

#import "SideMenuViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _img_face.layer.cornerRadius = _img_face.frame.size.width/2;
    _img_face.clipsToBounds = YES;
    _img_face.layer.borderWidth = 2.0f;
    _img_face.layer.borderColor = [UIColor colorWithRed:220.0f/225.0f green:85.0f/225.0f blue:98.0f/225.0f alpha:1.0f].CGColor;
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

@end
