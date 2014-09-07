//
//  OHTDetailNavigationController.m
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import "OHTDetailNavigationController.h"

@interface OHTDetailNavigationController ()

@end

@implementation OHTDetailNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"OHTDetailNavigationController.prepareForSegue -> %@", [segue identifier]);
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark OHTTraineesViewControllerSelect
- (void) traineeSelectionMade
{
    // Update Master with Trainee Person entity to focus on
    NSLog(@"OHTDetailNavigationController.traineeSelectionMade");
    [self.detailHandlerDelegate focusOnTrainee:nil];
}

#pragma mark OHTDetailViewFlowDelegate
- (void) prepareController:(UIViewController *)controller ForSegue:(UIStoryboardSegue *)segue
{
    NSString* segueId = [segue identifier];
    NSLog(@"OHTDetailNavigationController.prepareController:ForSegue -> %@", segueId);
    if ([segueId isEqualToString:@"showTrainees"])
    {
        OHTTraineesViewController* traineesViewController = [segue destinationViewController];
        traineesViewController.flowDelegate = self;
    }
}

@end
