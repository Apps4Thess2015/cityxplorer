//
//  MainViewController.m
//  TreasureHunt
//
//  
//
//
#import "MainViewController.h"
#import "RewardsViewController.h"
#import "EventsViewController.h"
#import "ChatViewController.h"
#import "AnswerQuestionTableViewCell.h"
#import "MFSideMenu.h"

#import "Task1ViewController.h"
#import "Task2ViewController.h"
#import "Task3ViewController.h"
#import "Task4ViewController.h"
#import "Task5ViewController.h"

@interface MainViewController ()

@end

static NSString* CellTabelIdentifier = @"taskListCell";

@implementation MainViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}
- (void) viewWillAppear:(BOOL)animated {
    UINavigationBar* navBar = [[self navigationController] navigationBar];
    [navBar setHidden:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    if(!self.title) self.title = @"CityXplorer";
    
    float ratio = 1.72;
    if ([UIScreen mainScreen].bounds.size.height == 568) {
        ratio = 2;
    }else if ([UIScreen mainScreen].bounds.size.height == 667) {
        ratio = 1.72;
    }else{
        ratio = 1.5;
    }
    
    _img_face.layer.cornerRadius = _img_face.frame.size.height/ratio;
    _img_face.clipsToBounds = YES;
    _img_face.layer.borderWidth = 4.0f;
    _img_face.layer.borderColor = [UIColor darkGrayColor].CGColor;
    
    _backgroundImage.layer.cornerRadius = _backgroundImage.frame.size.height/ratio;
    _backgroundImage.clipsToBounds = YES;
    _backgroundImage.layer.borderWidth = 3.0f;
    _backgroundImage.layer.borderColor = [UIColor colorWithRed:220.0f/225.0f green:85.0f/225.0f blue:98.0f/225.0f alpha:1.0f].CGColor;
    
    
    [self setupMenuBarButtonItems];

    //** initialize imageview of face **
   
    
    //** register tableview **
    UITableView* tableview = (id)[self.view viewWithTag:1];
    tableview.rowHeight = 50;
    UINib *nib= [UINib nibWithNibName:@"AnswerQuestionTableViewCell" bundle:nil];
    [tableview registerNib:nib forCellReuseIdentifier:CellTabelIdentifier];
    
    UIEdgeInsets contentInset = tableview.contentInset;
    contentInset.top= 10;
    contentInset.bottom = 10;
    [tableview setContentInset:contentInset];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark -
#pragma mark - UIBarButtonItems

- (void)setupMenuBarButtonItems {
    
    if(self.menuContainerViewController.menuState == MFSideMenuStateClosed &&
       ![[self.navigationController.viewControllers objectAtIndex:0] isEqual:self]) {
        self.navigationItem.leftBarButtonItem = [self backBarButtonItem];
    } else {
        self.navigationItem.leftBarButtonItem = [self leftMenuBarButtonItem];
    }
}

- (UIBarButtonItem *)leftMenuBarButtonItem {
    return _item_menu;
}

- (UIBarButtonItem *)backBarButtonItem {
    return [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"backarrow"]
                                            style:UIBarButtonItemStyleBordered
                                           target:self
                                           action:@selector(backButtonPressed:)];
}


#pragma mark -
#pragma mark - UIBarButtonItem Callbacks

- (void)backButtonPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)leftSideMenuButtonPressed:(id)sender {
    
}

- (void)rightSideMenuButtonPressed:(id)sender {
    [self.menuContainerViewController toggleRightSideMenuCompletion:^{
        [self setupMenuBarButtonItems];
    }];
}


#pragma mark -
#pragma mark - IBActions
- (IBAction)sideBarItem:(id)sender {
    [self.menuContainerViewController toggleLeftSideMenuCompletion:^{
        [self setupMenuBarButtonItems];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AnswerQuestionTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CellTabelIdentifier forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:
            cell.header.image = [UIImage imageNamed:@"answer.png"];
            cell.tailer.image = [UIImage imageNamed:@"20.png"];
            cell.label_title.text = @"Question:";
            cell.label_content.text = @"                   Which is the name of the most famous square?";
            //NSLog(@"%ld", (long)indexPath.row);
            break;
        case 1:
            cell.header.image = [UIImage imageNamed:@"QR.png"];
            cell.tailer.image = [UIImage imageNamed:@"40.png"];
            cell.label_title.text = @"find the QR:";
            cell.label_content.text = @"                        Move towards the white tower and scan it";

            break;
        case 2:
            cell.header.image = [UIImage imageNamed:@"takephoto.png"];
            cell.tailer.image = [UIImage imageNamed:@"50.png"];
            cell.label_title.text = @"Take a photo:";
            cell.label_content.text = @"                          Time for a selfie next to the statue of the ... ";

            break;
        case 3:
            cell.header.image = [UIImage imageNamed:@"checkin.png"];
            cell.tailer.image = [UIImage imageNamed:@"20.png"];
            cell.label_title.text = @"Check in:";
            cell.label_content.text = @"                   Check in to the Arch 'Kamara' and share it .. ";

            break;
        case 4:
            cell.header.image = [UIImage imageNamed:@"asklocal.png"];
            cell.tailer.image = [UIImage imageNamed:@"20.png"];
            cell.label_title.text = @"Ask a local";
            cell.label_content.text = @"                       Find a local and ask the name of the ..";

            break;
        default:
            break;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Task1ViewController* task1View = [[Task1ViewController alloc] initWithNibName:@"Task1ViewController" bundle:nil];
    Task2ViewController* task2View = [[Task2ViewController alloc] initWithNibName:@"Task2ViewController" bundle:nil];
    Task3ViewController* task3View = [[Task3ViewController alloc] initWithNibName:@"Task3ViewController" bundle:nil];
    Task4ViewController* task4View = [[Task4ViewController alloc] initWithNibName:@"Task4ViewController" bundle:nil];
    Task5ViewController* task5View = [[Task5ViewController alloc] initWithNibName:@"Task5ViewController" bundle:nil];
    switch (indexPath.row) {
        case 0:
            [task1View setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
            [self presentViewController:task1View animated: YES completion:nil];
            break;
        case 1:
            [task2View setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
            [self presentViewController:task2View animated: YES completion:nil];
            break;
        case 2:
            [task3View setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
            [self presentViewController:task3View animated: YES completion:nil];
            break;
        case 3:
            [task4View setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
            [self presentViewController:task4View animated: YES completion:nil];
            break;
        case 4:
            [task5View setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
            [self presentViewController:task5View animated: YES completion:nil];
            break;
        default:
            break;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)rewrds:(id)sender {
    RewardsViewController* rewardsView = [[RewardsViewController alloc] initWithNibName:@"RewardsViewController" bundle:nil];
    rewardsView.isfromMainScreen = YES;
    [rewardsView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:rewardsView animated: YES completion:nil];
}

- (IBAction)events:(id)sender {
    EventsViewController* eventsView = [[EventsViewController alloc] initWithNibName:@"EventsViewController" bundle:nil];
    [eventsView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:eventsView animated: YES completion:nil];
}

- (IBAction)chat:(id)sender {
    ChatViewController* chatView = [[ChatViewController alloc] initWithNibName:@"ChatViewController" bundle:nil];
    [chatView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:chatView animated: YES completion:nil];
}
@end
