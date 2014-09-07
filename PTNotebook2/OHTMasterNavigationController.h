//
//  OHTMasterNavigationController.h
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "OHTMainMenu.h"
#import "OHTDetailNavigationController.h"

@interface OHTMasterNavigationController : UINavigationController <OHTMainMenuOptionHandler, OHTDetailHandler>

@property (weak, nonatomic) IBOutlet UIViewController* currentViewController;

@property (weak, nonatomic) UINavigationController* detailNavigationController;

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
