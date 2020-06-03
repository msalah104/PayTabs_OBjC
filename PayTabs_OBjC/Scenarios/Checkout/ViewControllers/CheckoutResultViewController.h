//
//  CheckoutResultViewController.h
//  PayTabs_OBjC
//
//  Created by Mohammed Salah on 03/06/2020.
//  Copyright © 2020 MSalah. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CheckoutResultViewController : UIViewController

@property (nonatomic) NSString *code;
@property (nonatomic) NSString *result;
@property (nonatomic) NSString *email;
@property (nonatomic) NSString *pass;
@property (nonatomic) NSString *token;

- (IBAction) didPressDone:(id)sender ;

@end

NS_ASSUME_NONNULL_END
