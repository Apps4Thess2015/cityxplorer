//
//  QRscanViewController.h
//  TreasureHunt
//
//  
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface QRscanViewController : UIViewController <AVCaptureAudioDataOutputSampleBufferDelegate>
@property (weak, nonatomic) IBOutlet UIView *view_Preview;
@property (weak, nonatomic) IBOutlet UILabel *label_status;
@property (weak, nonatomic) IBOutlet UIButton *btn_start;

@end
