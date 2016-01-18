//
//  RewardsViewController.m
//  TreasureHunt
//
//  
//
//

#import "RewardsViewController.h"

@interface RewardsViewController ()

@end

@implementation RewardsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btn_get.layer.cornerRadius = 4.0f;
    _btn_get.clipsToBounds = YES;
    _btn_get.layer.borderWidth = 1.0f;
    _btn_get.layer.borderColor = [UIColor colorWithRed:150.0f/225.0f green:150.0f/225.0f blue:150.0f/225.0f alpha:1.0f].CGColor;

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
    if(_isfromMainScreen){
        [self dismissViewControllerAnimated:YES completion:nil];

    }else{
        [[[[[self presentingViewController] presentingViewController] presentingViewController] presentingViewController]dismissViewControllerAnimated:YES completion:nil];
    }

}
@end
