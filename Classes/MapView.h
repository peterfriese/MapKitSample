//
//  MapView.h
//  MapKit
//
//  Created by Peter Friese on 16.02.11.
//  Copyright 2011 itemis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapView : UIViewController {
	MKMapView *mapView;
}

@property (nonatomic, retain)MKMapView *mapView;

@end
