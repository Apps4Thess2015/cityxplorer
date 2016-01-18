//
//  Task3ViewController.m
//  TreasureHunt
//
//
//
//

#import "Task3ViewController.h"
#import "PhotoViewController.h"

@interface Task3ViewController ()

@end

@implementation Task3ViewController

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

- (IBAction)camera:(id)sender {
    PhotoViewController* photoView = [[PhotoViewController alloc] initWithNibName:@"PhotoViewController" bundle:nil];
    [photoView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:photoView animated: YES completion:nil];
}
@end
