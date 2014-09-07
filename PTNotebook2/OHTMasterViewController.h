//
//  OHTMasterViewController.h
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OHTDetailViewController;

#import <CoreData/CoreData.h>

#import "OHTMainMenu.h"

@interface OHTMasterViewController : UITableViewController

@property(strong, nonatomic) OHTMainMenu* menu;

//@property (strong, nonatomic) OHTDetailViewController *detailViewController;
//

@end
