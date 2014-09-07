//
//  OHTTraineesViewController.h
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OHTTraineesViewControllerSelect <NSObject>

- (void) selectTrainee;

@end

@interface OHTTraineesViewController : UIViewController

@property (nonatomic, weak) id <OHTTraineesViewControllerSelect> flowDelegate;

- (void) makeSelection;

@end
