//
//  UIView+BCHAlert.h
//  BCHAlertView
//
//  Created by 白成慧 on 16/9/21.
//  Copyright © 2016年 coder_bai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BCHAlertBlock)(id sender,NSUInteger buttonIndex);

@interface UIView (BCHAlert)

@property (nonatomic,strong) BCHAlertBlock bch_alertBlock; 

+(void)bch_showWithTitle:(NSString *)title
                         message:(NSString *)message
                    buttonTitles:(NSArray *)buttonTitles 
                           callback:(BCHAlertBlock)callback;

@end
