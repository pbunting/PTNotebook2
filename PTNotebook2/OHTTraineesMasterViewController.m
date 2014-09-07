//
//  OHTTraineesMasterViewController.m
//  PTNotebook2
//
//  Created by Paul Bunting on 7/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import "OHTTraineesMasterViewController.h"

@interface OHTTraineesMasterViewController ()

@end

@implementation OHTTraineesMasterViewController

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
    self.tableView.delegate = self.menu;
    self.tableView.dataSource = self.menu;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"OHTTraineesMasterViewController.prepareForSegue -> %@", [segue identifier]);
}

@end
