//
//  MasterViewController.swift
//  DemoGoogleMaps
//
//  Created by dohien on 13/09/2018.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
import GoogleMaps
class MasterViewController: UIViewController {

    var mapView: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let camera = GMSCameraPosition.camera(withLatitude: 20.990652, longitude: 105.739503, zoom: 15)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        let currentLpcation = CLLocationCoordinate2DMake(20.990652, 105.739503)
        let marker = GMSMarker(position: currentLpcation)
        marker.title = "La Duong"
        marker.map = mapView
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextView))
        // Do any additional setup after loading the view.
    }
    @objc func nextView() {
        let nextLocation = CLLocationCoordinate2DMake(20.998844, 105.813105)
        mapView?.camera = GMSCameraPosition.camera(withLatitude: nextLocation.latitude, longitude: nextLocation.longitude, zoom: 15)
        let marker = GMSMarker(position: nextLocation)
        marker.title = "Nguyen trai"
        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
