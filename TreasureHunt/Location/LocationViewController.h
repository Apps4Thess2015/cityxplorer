//
//  LocationViewController.h
//  TreasureHunt
//
//  
//
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationViewController : UIViewController <CLLocationManagerDelegate> {
     CLLocationManager *locationManager;
    CLGeocoder* geocoder;
    CLPlacemark* placemark;
}
@property (weak, nonatomic) IBOutlet UILabel *Label_head;
@property (weak, nonatomic) IBOutlet UIButton *btn_get;

@property (weak, nonatomic) IBOutlet UILabel *label_latitude;
@property (weak, nonatomic) IBOutlet UILabel *label_longitude;
@property (weak, nonatomic) IBOutlet UILabel *label_address;
- (IBAction)getLocation:(id)sender;

@end
