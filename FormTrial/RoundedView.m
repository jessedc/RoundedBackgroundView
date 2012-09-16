
#import "RoundedView.h"
#import <QuartzCore/QuartzCore.h>

@implementation RoundedView

- (id)initWithFrame:(CGRect)frame
{
  if ((self = [super initWithFrame:frame])) {
    self.backgroundColor = [UIColor grayColor];
    self.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    self.layer.cornerRadius = 10;
  }
  return self;
}

@end
