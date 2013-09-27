//
//  SwipeTestViewController.m
//  SwipeTest
//
//  Created by Spencer Congero on 9/24/13.
//  Copyright (c) 2013 Spencer Congero. All rights reserved.
//

#import "SwipeTestViewController.h"

@interface SwipeTestViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UILabel *swipesLabel;
@property (nonatomic) int swipeCount;
@property (strong, nonatomic) UIView *nextView;


@end

@implementation SwipeTestViewController

- (UIView *)nextView
{
    if (!_nextView)
    {
        _nextView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    }
    return _nextView;
}

- (void)setSwipeCount:(int)swipeCount
{
    _swipeCount = swipeCount;
    self.swipesLabel.text = [NSString stringWithFormat:@"Swipes: %d", self.swipeCount];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)swipeUp:(UISwipeGestureRecognizer *)sender
{
    [UIView transitionWithView:self.blueView duration:0.3 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.blueView.center = CGPointMake(160, -300);
    }
                    completion:NULL];
    
    self.swipeCount++;
}
- (IBAction)swipeDown:(UISwipeGestureRecognizer *)sender
{
    
    
    [UIView transitionWithView:self.blueView duration:0.3 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.blueView.center = CGPointMake(160, 900);
    }
                    completion:NULL];
    
    

    
                                
    self.swipeCount--;
}

@end
