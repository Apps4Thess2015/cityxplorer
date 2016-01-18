//
//  CompleteViewController.m
//  TreasureHunt
//
//  
//
//

#import "CompleteViewController.h"
#import "RewardsViewController.h"

@interface CompleteViewController ()

@end

@implementation CompleteViewController

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
- (IBAction)finish:(id)sender {
    RewardsViewController* rewardsView = [[RewardsViewController alloc] initWithNibName:@"RewardsViewController" bundle:nil];
    [rewardsView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:rewardsView animated: YES completion:nil];
}

- (IBAction)doneClicked:(id)sender {
    [[[[self presentingViewController] presentingViewController] presentingViewController]dismissViewControllerAnimated:YES completion:nil];
}
@end
