//
//  OnlineLayerViewController.m
//  MapBox Example
//
//  Created by Justin Miller on 3/27/12.
//  Copyright (c) 2012 MapBox / Development Seed. All rights reserved.
//

#import "OnlineLayerViewController.h"

#import "MapBox.h"

#define kNormalMapID @"twobits.map-3d0nv2aq"
#define kRetinaMapID @"twobits.map-vo1rdevh"

@implementation OnlineLayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    RMMapboxSource *onlineSource = [[RMMapboxSource alloc] initWithMapID:(([[UIScreen mainScreen] scale] > 1.0) ? kRetinaMapID : kNormalMapID)];

    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:onlineSource];
    
    mapView.zoom = 2;
//	mapView.adjustTilesForRetinaDisplay = ([UIScreen mainScreen].scale > 1.0) ? YES : NO;
	onlineSource.cacheable = NO;
	mapView.missingTilesDepth = 6;
    
    mapView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:mapView];
}

@end