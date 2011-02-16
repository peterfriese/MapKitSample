//
//  MapView.m
//  MapKit
//
//  Created by Peter Friese on 16.02.11.
//  Copyright 2011 itemis. All rights reserved.
//

#import "MapView.h"

@implementation MapView

@synthesize mapView;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
	
	// the following line is essential:
	mapView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
	mapView.showsUserLocation=TRUE;
	mapView.mapType=MKMapTypeStandard;
	[self.view addSubview:mapView];		
}

- (void)dealloc {
	[mapView release];
    [super dealloc];
}

@end
