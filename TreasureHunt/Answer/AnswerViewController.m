//
//  AnswerViewController.m
//  TreasureHunt
//
//  
//
//

#import "AnswerViewController.h"
#import "CompleteViewController.h"

@interface AnswerViewController ()

@end

@implementation AnswerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _label_qa.layer.cornerRadius = _label_qa.frame.size.height/2;
    _btn_answer.layer.cornerRadius = _btn_answer.frame.size.height/2;
    _label_qa.clipsToBounds = YES;
    _btn_answer.clipsToBounds = YES;
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

- (IBAction)answer:(id)sender {
    CompleteViewController* comView = [[CompleteViewController alloc] initWithNibName:@"CompleteViewController" bundle:nil];
    [comView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:comView animated: YES completion:nil];
}
@end
