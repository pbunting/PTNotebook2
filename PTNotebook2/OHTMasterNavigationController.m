//
//  OHTMasterNavigationController.m
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import "OHTMasterNavigationController.h"

#import "OHTTraineesViewController.h"

@interface OHTMasterNavigationController ()

@end

@implementation OHTMasterNavigationController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark OHTMainMenuOptionHandler
- (void) showTrainees
{
    [self.detailNavigationController.topViewController performSegueWithIdentifier:@"showTrainees" sender:self];
}

#pragma mark OHTDetailHandler
- (void) selectTrainee:(NSManagedObject *)trainee
{
    [self.detailNavigationController.topViewController performSegueWithIdentifier:@"showTrainee" sender:self];
//    [self.currentViewController push ]
}

@end
