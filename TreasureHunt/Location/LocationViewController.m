//
//  LocationViewController.m
//  TreasureHunt
//
//  
//
//

#import "LocationViewController.h"

@interface LocationViewController ()
    
@end

@implementation LocationViewController

- (void)viewDidLoad {
    _Label_head.layer.cornerRadius = _Label_head.frame.size.height/2;
    _btn_get.layer.cornerRadius = _btn_get.frame.size.height/2;
    _Label_head.clipsToBounds = YES;
    _btn_get.clipsToBounds = YES;
    
    // ** Initialize locationManager **
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >=8.0) {
        [locationManager requestAlwaysAuthorization];
    }
    
    [locationManager startUpdatingLocation];
    
    // ** ** Initialize geocoder **
    geocoder= [[CLGeocoder alloc] init];
    
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

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"didFailWithError: %@", error);
    
    UIAlertView* errorAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Failed to get your location" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [errorAlert show];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation{
    
    CLLocation* currentLocation = newLocation;
    _label_longitude.text = [NSString stringWithFormat:@"%.8f", currentLocation.coordinate.longitude];
    _label_latitude.text = [NSString stringWithFormat:@"%.8f", currentLocation.coordinate.latitude];
    
    [geocoder reverseGeocodeLocation:currentLocation completionHandler:^(NSArray* placemarks, NSError* error) {
        if (error == nil && [placemarks count] > 0) {
            placemark = [placemarks lastObject];
            
            _label_address.text = [NSString stringWithFormat:@"%@ %@\n%@ %@\n%@\n%@",
                                   placemark.subThoroughfare, placemark.thoroughfare,
                                   placemark.postalCode, placemark.locality,
                                   placemark.administrativeArea,
                                   placemark.country];
        } else {
            NSLog(@"%@", error.debugDescription);
        }
    }];
}

- (IBAction)getLocation:(id)sender {
    
}
@end
