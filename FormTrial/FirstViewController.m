//
//  FirstViewController.m
//  FormTrial

#import "FirstViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface FirstViewController ()
@end

@implementation FirstViewController
@synthesize formBackgroundView = _formBackgroundView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    self.title = NSLocalizedString(@"First", @"First");
    self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
  [super viewDidLoad];
//  self.formBackgroundView.backgroundColor = [UIColor grayColor];
//  self.formBackgroundView.layer.cornerRadius = 4;
}

- (void)viewDidUnload
{
  [self setFormBackgroundView:nil];
  [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return YES;
}

@end
