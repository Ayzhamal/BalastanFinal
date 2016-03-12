//
//  ViewController.m
//  Balastan
//
//  Created by AyzhamalKg on 2/19/16.
//  Copyright © 2016 Balastan. All rights reserved.
//

#import "MainMenuViewController.h"
#import "AlphabetMenuViewController.h"
#import "FairyTalesMenuViewController.h"
#import <UIKit/UIKit.h>

static NSString* const keyShowAlphabetMenuSegue  =    @"showAlphabetMenuSegue";
static NSString* const keyInfoSegue              =    @"infoSegue";
static NSString* const keyShowPicturesMenuSegue  =    @"showPicturesMenuSegue";


@interface MainMenuViewController ()
@property (strong, nonatomic) IBOutlet UIButton *alphabetMenuButton;
@property (strong, nonatomic) IBOutlet UIButton *animalsMenuButton;
@property (strong, nonatomic) IBOutlet UIButton *fairyTalesMenuButton;

@end

@implementation MainMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsCompact];
    
    self.navigationController.navigationBar.shadowImage = [UIImage new];

    self.navigationController.navigationBar.tintColor = [UIColor purpleColor];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Артка" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (IBAction)openAnimalsMenuButton:(id)sender {
    
    [self performSegueWithIdentifier:keyShowPicturesMenuSegue
                              sender:nil];
}

- (IBAction)openAlphabetMenuButton:(id)sender {
    
    CGRect rect = self.alphabetMenuButton.frame;
    rect.size.width +=50;
    rect.size.height +=50;
    
    [UIView animateWithDuration:0.1
                          delay:0
                        options:UIViewAnimationOptionLayoutSubviews | UIViewAnimationOptionCurveLinear
                     animations:^
     {
         self.alphabetMenuButton.frame = rect;
     }
                     completion:^(BOOL finished)
     {
         [self performSegueWithIdentifier:keyShowAlphabetMenuSegue
                                   sender:nil];
     }];
}

- (IBAction)openFairyTalesMenuButton:(id)sender {
    
FairyTalesMenuViewController *fairyTaleMenuController = [[self  storyboard]instantiateViewControllerWithIdentifier:@"fairyTaleMenuID"];
    [self.navigationController pushViewController: fairyTaleMenuController animated:YES];
}

- (IBAction)infoButtonAction:(id)sender {
    [self performSegueWithIdentifier:keyInfoSegue
                              sender:nil];
    
}

@end
