//
//  ViewController.swift
//  assignment-20
//
//  Created by Gaurav Bisht on 31/10/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var myMap: MKMapView!
    
    let locationArray = [
        ["title": "Ghantaghar, Dehradun", "latitude": 30.3244, "longitude": 78.0418],
        ["title": "Yamuna Colony, Dehradun", "latitude": 30.3285, "longitude": 78.0260],
        ["title": "Kishan Nagar, Dehradun", "latitude": 30.3335, "longitude": 78.0266],
        ["title": "Prince Chowk, Dehradun", "latitude": 30.3153, "longitude": 78.0374],
        ["title": "Cross Road Mall, Dehradun", "latitude": 30.3325, "longitude": 78.0536]
    ]

    let doonCoordinate = CLLocationCoordinate2D(latitude: 30.3165, longitude: 78.0322)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMap.delegate = self
        myMap.showsTraffic = true
        myMap.showsUserLocation = true
        myMap.isZoomEnabled = true
        myMap.showsScale = true
        myMap.setRegion(MKCoordinateRegion(center: doonCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)), animated: false)
        
        createAnnotations(locations: locationArray)
        drawLineBetweenTwoAnnotations()
        createOverlays()
    }
    
    func createAnnotations(locations: [[String : Any]]) {
        
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            myMap.addAnnotation(annotation)
        }
        
    }
    
    func drawLineBetweenTwoAnnotations() {
        let sourceC = CLLocationCoordinate2D(latitude: 30.3285, longitude: 78.0260)
        let destC = CLLocationCoordinate2D(latitude: 30.3325, longitude: 78.0536)
        
        let sourcePlacemark = MKPlacemark(coordinate: sourceC)
        let destPlacemark = MKPlacemark(coordinate: destC)
        
        let requestForDirection = MKDirections.Request()
        requestForDirection.source =  MKMapItem(placemark: sourcePlacemark)
        requestForDirection.destination = MKMapItem(placemark: destPlacemark)
        requestForDirection.transportType = .automobile
        
        let directions = MKDirections(request: requestForDirection)
        directions.calculate { ( response, error) in
            guard let directionResponse = response else {
                if let error = error {
                    print("We have an issue in response. (\(error.localizedDescription))")
                }
                 return
            }
//            print(directionResponse.routes)
            let route = directionResponse.routes[0]
            self.myMap.addOverlay(route.polyline, level: .aboveRoads)
            
            
//            let rect = route.polyline.boundingMapRect
//            self.myMap.setRegion(MKCoordinateRegion(rect), animated: true)
            
        }
    }
    
    func createOverlays() {
        let sourceC = CLLocationCoordinate2D(latitude: 30.3285, longitude: 78.0260)
        let destC = CLLocationCoordinate2D(latitude: 30.3325, longitude: 78.0536)
        let overlay1 = MKCircle(center: sourceC, radius: 10)
        let overlay2 = MKCircle(center: destC, radius: 10)
        myMap.addOverlay(overlay1)
        myMap.addOverlay(overlay2)
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay.isKind(of: MKCircle.self) {
            let circleRenderer = MKCircleRenderer(overlay: overlay)
            circleRenderer.fillColor = .systemTeal
            circleRenderer.strokeColor = .systemTeal
            circleRenderer.lineWidth = 7
            return circleRenderer
        }
//        return MKCircleRenderer(overlay: overlay)
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 4.0

        return renderer
    }

}

extension ViewController {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MKPointAnnotation else { return nil }
        let identifier = "Annotation"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
            let btn = UIButton(type: .detailDisclosure)
            annotationView?.rightCalloutAccessoryView = btn

        } else {
            annotationView!.annotation = annotation
        }
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {

        let myVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as? VC2
        self.navigationController?.pushViewController(myVC!, animated: true)
    }
    
}
