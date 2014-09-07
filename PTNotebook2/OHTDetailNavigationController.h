//
//  OHTDetailNavigationController.h
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "OHTTraineesViewController.h"

@protocol OHTDetailHandler <NSObject>

- (void) selectTrainee:(NSManagedObject*) trainee;

@end

@interface OHTDetailNavigationController : UINavigationController <OHTTraineesViewControllerSelect>

@property (weak, nonatomic) IBOutlet UIViewController* currentViewController;

@end
