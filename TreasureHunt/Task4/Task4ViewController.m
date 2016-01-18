//
//  Task4ViewController.m
//  TreasureHunt
//
//  
//
//

#import "Task4ViewController.h"
#import "LocationViewController.h"

@interface Task4ViewController ()

@end

@implementation Task4ViewController

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
- (IBAction)checkIn:(id)sender {
    LocationViewController* locView = [[LocationViewController alloc] initWithNibName:@"LocationViewController" bundle:nil];
    [locView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:locView animated: YES completion:nil];

}

@end
