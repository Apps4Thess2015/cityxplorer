//
//  AnswerQuestionTableViewCell.h
//  TreasureHunt
//
//  
//
//

#import <UIKit/UIKit.h>

@interface AnswerQuestionTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *header;
@property (weak, nonatomic) IBOutlet UIImageView *tailer;
@property (weak, nonatomic) IBOutlet UILabel *label_title;
@property (weak, nonatomic) IBOutlet UILabel *label_content;

@end
