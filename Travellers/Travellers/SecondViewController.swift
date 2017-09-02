//
//  SecondViewController.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/2/8.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit
import MapKit
import UserNotifications
class SecondViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate{
    
//    @IBOutlet weak var mapV: MKMapView!
//    var locManager: CLLocationManager? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
//        switch CLLocationManager.authorizationStatus() {
//        case .authorizedAlways,.authorizedWhenInUse:
//            locManager = CLLocationManager()
//            print(locManager)
//            locManager!.distanceFilter = 1
//            locManager!.delegate = self
//            locManager!.desiredAccuracy = kCLLocationAccuracyBest
//            mapV.showsUserLocation = true
//            mapV.delegate = self
//            mapV.userTrackingMode = .follow
//            print(locManager?.delegate)
//            print("did i set the delegate?")
//        case .notDetermined:
//            locManager = CLLocationManager()
//            locManager!.requestWhenInUseAuthorization()
//        case .denied: break
//        case .restricted: break
//        default: break
//        }
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func showUser(_ sender: UIBarButtonItem) {
//        mapV.showsUserLocation = true
//        mapV.userTrackingMode = .follow
//    }
//    
//    @IBAction func goto(_ sender: UIBarButtonItem) {
//        print(locManager)
//        let centerCoordinate = CLLocationCoordinate2DMake(30.283307, 120.115352);
//        let span = MKCoordinateSpanMake(0.005, 0.005);
//        let region = MKCoordinateRegionMake(centerCoordinate, span);
//        self.mapV.region = region;
//    }
//    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
//        print(region)
//    }
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let alertController = UIAlertController(title: "标题", message: locations[locations.count].altitude.description, preferredStyle: UIAlertControllerStyle.alert)
//        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
//        let okAction = UIAlertAction(title: "好的", style: UIAlertActionStyle.default, handler: nil)
//        alertController.addAction(cancelAction)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//        print(locations)
//    }
//    
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//    @IBAction func notify(_ sender: UIBarButtonItem) {
//        let alertController = UIAlertController(title: "标题", message: "这个是UIAlertController的默认样式", preferredStyle: UIAlertControllerStyle.alert)
//        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
//        let okAction = UIAlertAction(title: "好的", style: UIAlertActionStyle.default, handler: nil)
//        alertController.addAction(cancelAction)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//    
//    }
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
}
