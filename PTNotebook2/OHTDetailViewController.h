//
//  OHTDetailViewController.h
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OHTDetailViewFlowDelegate <NSObject>

- (void) prepareController:(UIViewController*)controller ForSegue:(UIStoryboardSegue *)segue;

@end

@interface OHTDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id <OHTDetailViewFlowDelegate> flowDelegate;

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
