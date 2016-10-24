//
//  UIAlertController+BCHHelperKitUIKit.h
//  BCHAlertView
//
//  Created by 白成慧 on 16/9/21.
//  Copyright © 2016年 coder_bai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BCHAlertControllerClickedButtonBlock)(UIAlertAction *action,NSUInteger buttonIndex);

@interface UIAlertController (BCHHelperKitUIKit)

@property (nonatomic,strong) NSMutableArray *actionArray;

+(instancetype)bch_showWithTitle:(NSString *)title
                         message:(NSString *)message
                    buttonTitles:(NSArray *)buttonTitles
                  preferredStyle:(UIAlertControllerStyle)preferredStyle
                           block:(BCHAlertControllerClickedButtonBlock)block;
@end
