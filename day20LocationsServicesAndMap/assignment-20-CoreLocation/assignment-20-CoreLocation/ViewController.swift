//
//  ViewController.swift
//  assignment-20-CoreLocation
//
//  Created by Gaurav Bisht on 01/11/21.
//

import UIKit
import MapKit
import CoreLocation
import SDWebImage

//My Current Location - 30.31004051112743, 77.9476896424495
//US - 38.745471551436545, -106.81626052139438

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var showImage: UIButton!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myMap.delegate = self
        locationManager.delegate = self
        showImage.layer.cornerRadius = 8
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        privacySetup()
        mapSetup()
        myCurrentLocation()
    }
    
    func privacySetup() {
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
    }
    
    func mapSetup() {
        myMap.showsUserLocation = true
        myMap.showsCompass = true
        myMap.showsScale = true
        myMap.mapType = .standard
        myMap.showsBuildings = true
        myMap.showsTraffic = true
//        myMap.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(
//            latitude: 30.321204873743127, longitude: 78.02811142621638),
//            latitudinalMeters: 10000, longitudinalMeters: 10000),
//            animated: true)
    }
    
    func myCurrentLocation() {
        if #available(iOS 11.0, *) {
            locationManager.showsBackgroundLocationIndicator = true
        }
        locationManager.startUpdatingLocation()
    }
    
    func geocode(latitude: Double, longitude: Double)  {
        CLGeocoder().reverseGeocodeLocation(CLLocation(latitude: latitude, longitude: longitude)) { placemark, error in
            guard let placemark = placemark, error == nil else {
                return
            }
            print(placemark)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last! as CLLocation
        let currentLocation = location.coordinate
        let currentAnnotation = MKPointAnnotation()
        currentAnnotation.title = "Current Location"
        currentAnnotation.coordinate = currentLocation
        myMap.addAnnotation(currentAnnotation)
        self.geocode(latitude: currentLocation.latitude, longitude: currentLocation.longitude)
        
        let coordinateRegion = MKCoordinateRegion(center: currentLocation, latitudinalMeters: 5000, longitudinalMeters: 5000)
        myMap.setRegion(coordinateRegion, animated: true)

        locationManager.stopUpdatingLocation()
    }
    
    @IBAction func showImageButton(_ sender: UIButton) {
        if CLLocationManager.locationServicesEnabled() {
            switch locationManager.authorizationStatus.rawValue {
            case 3:
                let countryCode = Locale.current.regionCode
                switch countryCode {
                case "US":
                    let imageURL = URL(string: "https://picsum.photos/200")
                    if let url = imageURL {
                        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
                            guard let data = data else {
                                return
                            }
                            DispatchQueue.main.async {
                                self.imageView.image = UIImage(data: data)
                            }
                        }
                        task.resume()
                    }
                default:
                    print("Some error!")
                }
            default:
                let alertController = UIAlertController(title: "Not in US?", message: "This feature is not supported in your country.", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                    self.present(alertController, animated: true, completion: nil)
            }
        }
//        print("Authorization Status: \(locationManager.authorizationStatus.rawValue)")
    }
    
}
