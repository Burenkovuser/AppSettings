//
//  FirstViewController.h
//  AppSettings
//
//  Created by Vasilii on 10.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

//ключи для спецификаторов настроек (набор констант. Это значения ключей, ко- торые мы использовали в нашем файле списка свойств для различных видов полей)
#define kUsernameKey       @"username"
#define kPasswordKey       @"password"
#define kProtocolKey       @"protocol"
#define kWarpDriveKey      @"warp"
#define kWarpFactorKey     @"warpFactor"
#define kFavoriteTeaKey    @"favoriteTea"
#define kFavoriteCandyKey  @"favoriteCandy"
#define kFavoriteGameKey   @"favoriteGame"
#define kFavoriteExcuseKey @"favoriteExcuse"
#define kFavoriteSinKey    @"favoriteSin"

//выходы для всех надписей что нам понадобятся
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet UILabel *protocolLabel;
@property (weak, nonatomic) IBOutlet UILabel *warpDriveLabel;
@property (weak, nonatomic) IBOutlet UILabel *warpFactorLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteTeaLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteCandyLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteGameLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteExcuseLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteSinLabel;

//метод, который предназначен для считывания пользовательских настроек и сохранения этих значений в различных надписях
- (void)refreshFields;

@end

