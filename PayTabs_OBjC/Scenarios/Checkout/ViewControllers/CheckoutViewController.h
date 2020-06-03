//
//  ChechoutViewController.h
//  PayTabs_OBjC
//
//  Created by Mohammed Salah on 03/06/2020.
//  Copyright © 2020 MSalah. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CheckoutViewController : UIViewController

@property (nonatomic) NSString *customerName;
@property (nonatomic) NSString *currencyCode;
@property (nonatomic) float taxAmount;
@property (nonatomic) float amount;
@property (nonatomic) NSString *sdkLanguage;
@property (nonatomic) NSString *shippingAddress;
@property (nonatomic) NSString *shippingCity;
@property (nonatomic) NSString *shippingCountry;
@property (nonatomic) NSString *shippingState;
@property (nonatomic) NSString *shippingZIPCode;
@property (nonatomic) NSString *billingAddress;
@property (nonatomic) NSString *billingCity;
@property (nonatomic) NSString *billingCountry;
@property (nonatomic) NSString *billingState;
@property (nonatomic) NSString *billingZIPCode;
@property (nonatomic) NSString *orderID;
@property (nonatomic) NSString *phoneNumber;
@property (nonatomic) NSString *customerEmail;
@property (nonatomic) NSString *assigneeCode;

@end

NS_ASSUME_NONNULL_END
