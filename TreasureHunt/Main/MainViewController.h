//
//  MainViewController.h
//  TreasureHunt
//
//  
//
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *img_face;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *item_menu;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@end
