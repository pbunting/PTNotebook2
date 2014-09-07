//
//  OHTDetailNavigationController.h
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "OHTTraineesViewController.h"
#import "OHTDetailViewController.h"

@protocol OHTDetailHandler <NSObject>

- (void) focusOnTrainee:(NSManagedObject*) trainee;

@end

@interface OHTDetailNavigationController : UINavigationController <OHTTraineesViewControllerSelect, OHTDetailViewFlowDelegate>

@property (weak, nonatomic) IBOutlet UIViewController* currentViewController;

@property (strong, nonatomic) id <OHTDetailHandler> detailHandlerDelegate;

@end
