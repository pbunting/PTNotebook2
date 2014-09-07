//
//  OHTMasterViewController.m
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import "OHTMasterViewController.h"

#import "OHTDetailViewController.h"

@interface OHTMasterViewController ()
@end

@implementation OHTMasterViewController

- (void)awakeFromNib
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
    NSLog(@"OHTMasterViewController.prepareForSegue -> %@", [segue identifier]);
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
//        [[segue destinationViewController] setDetailItem:object];
    }
}



@end
