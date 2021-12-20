//
//  File.swift
//  Health
//
//  Created by Abdulaziz on 03/05/1443 AH.
//

import UIKit
import MapKit
class Maps: UIViewController{
    
    @IBOutlet weak var MapsView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        18.228019, 42.542675
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 18.228019, longitude: 42.542675)
        annotation.title = "Golds Gym"
        annotation.subtitle = "Gym Club"
        MapsView.addAnnotation (annotation)
        
//        18.219572, 42.528305
        
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 18.219572, longitude: 42.528305)
        annotation1.title = "58road"
        annotation1.subtitle = "Healthy Food"
        MapsView.addAnnotation (annotation1)
        
//        18.216957, 42.521782
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 18.216957, longitude: 42.521782)
        annotation2.title = "Fit Kitchen"
        annotation2.subtitle = "Healthy Food"
        MapsView.addAnnotation (annotation2)
       
//         18.216992, 42.479332
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 18.216992, longitude: 42.479332)
        annotation3.title = "Fitness Time"
        annotation3.subtitle = "Gym Club"
        MapsView.addAnnotation (annotation3)
        
//        18.220036, 42.500171
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 18.220036, longitude: 42.500171)
        annotation4.title = "Body Masters"
        annotation4.subtitle = "Gym Club"
        MapsView.addAnnotation (annotation4)
//        18.833091,42.037746
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 18.220036, longitude: 42.500171)
        annotation5.title = "Diet Station"
        annotation5.subtitle = "Healthy Food"
        MapsView.addAnnotation (annotation5)
        
        let region = MKCoordinateRegion(center: annotation2.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        MapsView.setRegion(region, animated: true)
    }
    

}



