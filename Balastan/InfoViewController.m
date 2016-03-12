//
//  InfoViewController.m
//  Balastan
//
//  Created by Avaz on 04.03.16.
//  Copyright © 2016 Balastan. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)balastanButtonAction:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.balastan.kg"]];
}
- (IBAction)facebookButtonAction:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/Balastan/"]];
}
- (IBAction)youtubeButtonAction:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.youtube.com/channel/UCjulMUZ3uXNzhPDY6nxM6Vg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
