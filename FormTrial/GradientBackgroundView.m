//
//  GradientBackgroundView.m
//  FormTrial

#import "GradientBackgroundView.h"

@implementation GradientBackgroundView

- (void)drawRect:(CGRect)rect
{
  //// General Declarations
  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
  CGContextRef context = UIGraphicsGetCurrentContext();

  //// Color Declarations
  UIColor* lightGray = [UIColor colorWithRed: 0.84 green: 0.84 blue: 0.84 alpha: 1];
  CGFloat lightGrayRGBA[4];
  [lightGray getRed: &lightGrayRGBA[0] green: &lightGrayRGBA[1] blue: &lightGrayRGBA[2] alpha: &lightGrayRGBA[3]];

  UIColor* lighterGray = [UIColor colorWithRed: (lightGrayRGBA[0] * 0.4 + 0.6) green: (lightGrayRGBA[1] * 0.4 + 0.6) blue: (lightGrayRGBA[2] * 0.4 + 0.6) alpha: (lightGrayRGBA[3] * 0.4 + 0.6)];

  //// Gradient Declarations
  NSArray* grayGradientColors = [NSArray arrayWithObjects:
                                 (id)lightGray.CGColor,
                                 (id)lighterGray.CGColor, nil];
  CGFloat grayGradientLocations[] = {0, 1};
  CGGradientRef grayGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)grayGradientColors, grayGradientLocations);


  //// Rounded Rectangle Drawing
  UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(2, 2, 380, 232) cornerRadius: 10];
  CGContextSaveGState(context);
  [roundedRectanglePath addClip];
  CGContextDrawLinearGradient(context, grayGradient, CGPointMake(192, 2), CGPointMake(192, 234), 0);
  CGContextRestoreGState(context);

  [lightGray setStroke];
  roundedRectanglePath.lineWidth = 4;
  [roundedRectanglePath stroke];
  
  //// Cleanup
  CGGradientRelease(grayGradient);
  CGColorSpaceRelease(colorSpace);
}


@end
