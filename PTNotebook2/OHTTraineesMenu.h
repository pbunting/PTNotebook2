//
//  OHTTraineesMenu.h
//  PTNotebook2
//
//  Created by Paul Bunting on 7/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OHTTraineesMenuOptionHandler <NSObject>

- (void) showDetails;

- (void) showMeasurements;

- (void) showObservations;

@end

@interface OHTTraineesMenu : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) id <OHTTraineesMenuOptionHandler> delegate;

@end
