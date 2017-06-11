//
//  FirstViewController.m
//  AppSettings
//
//  Created by Vasilii on 10.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)refreshFields {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.usernameLabel.text = [defaults objectForKey:kUsernameKey];
    self.passwordLabel.text = [defaults objectForKey:kPasswordKey];
    self.protocolLabel.text = [defaults objectForKey:kProtocolKey];
    self.warpDriveLabel.text = [defaults objectForKey:kWarpDriveKey] ? @"Engaged" : @"Disabled";
    self.warpFactorLabel.text = [[defaults objectForKey:kWarpDriveKey] stringValue];//параметр, хранимый ползунком, возвращается в виде объ- екта типа NSNumber, поэтому мы и вызываем для него метод stringValue, чтобы получить строковое представление значения, которое он содержит.
    self.favoriteTeaLabel.text = [defaults objectForKey:kFavoriteTeaKey];
    self.favoriteCandyLabel.text = [defaults objectForKey:kFavoriteCandyKey];
    self.favoriteGameLabel.text = [defaults objectForKey:kFavoriteGameKey];
    self.favoriteExcuseLabel.text = [defaults objectForKey:kFavoriteExcuseKey];
    self.favoriteSinLabel.text = [defaults objectForKey:kFavoriteSinKey];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self refreshFields];//!!!
}

- (void)viewWillAppear:(BOOL)animated { [super viewWillAppear:animated];
    UIApplication *app = [UIApplication sharedApplication]; [[NSNotificationCenter defaultCenter] addObserver:self
                                                                                                     selector:@selector(applicationWillEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:app];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:(BOOL)animated]; [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//!!!
- (void)secondViewControllerDidFinish:(SecondViewController *)controller {
    [self refreshFields];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)applicationWillEnterForeground:(NSNotification *)notification { NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults]; [defaults synchronize];
    [self refreshFields];
}

@end
