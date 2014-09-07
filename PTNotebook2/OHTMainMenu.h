//
//  OHTMainMenu.h
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OHTMainMenuOptionHandler <NSObject>

- (void) showTrainees;

@end

@interface OHTMainMenu : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id <OHTMainMenuOptionHandler> delegate;

@end
