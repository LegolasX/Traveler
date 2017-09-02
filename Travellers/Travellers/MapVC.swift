//
//  MapVC.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/21.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit
import MapKit
import AVFoundation
class MapVC: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate{
    @IBOutlet weak var mapView: MKMapView!
    var searchText: String?
    var locManager: CLLocationManager? = nil
    var coordinates : [CLLocationCoordinate2D] = [
        CLLocationCoordinate2D(latitude: 40.089223602280249, longitude: 116.30935108165684),
        CLLocationCoordinate2D(latitude: 40.090556688659895, longitude: 116.30853984035923),
        CLLocationCoordinate2D(latitude: 40.087988099037062, longitude: 116.30977631086118),
        CLLocationCoordinate2D(latitude: 40.088706845804012, longitude: 116.31133049004812),
        CLLocationCoordinate2D(latitude: 40.091505632312,    longitude: 116.31373327837102),
        CLLocationCoordinate2D(latitude: 40.089497238356714, longitude: 116.30868970380365),
        CLLocationCoordinate2D(latitude: 40.093134404281678, longitude: 116.31238564727869),
        CLLocationCoordinate2D(latitude: 40.088239091227173, longitude: 116.30742716235503),
        CLLocationCoordinate2D(latitude: 40.088337605402387, longitude: 116.30761308356121),
        CLLocationCoordinate2D(latitude: 40.091805439238712, longitude: 116.30926985492545),
        CLLocationCoordinate2D(latitude: 40.089102972483481, longitude: 116.30803011755395),
        CLLocationCoordinate2D(latitude: 40.089863411299248, longitude: 116.30965382990632),
        CLLocationCoordinate2D(latitude: 40.092066115810411, longitude: 116.31548948139333)]
    var annotationNames = ["图书馆","教一","教三","教四","教五","小花园","蓝房子","主楼","主礼","校医院","雕塑","操场","篮球场"]
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        segment.removeAllSegments()
        //        segment.segment
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways,.authorizedWhenInUse:
            locManager = CLLocationManager()
            locManager!.distanceFilter = 1
            locManager!.delegate = self
            locManager!.desiredAccuracy = kCLLocationAccuracyBest
            mapView.showsUserLocation = true
            mapView.delegate = self
            mapView.userTrackingMode = .follow
        case .notDetermined:
            locManager = CLLocationManager()
            locManager!.requestWhenInUseAuthorization()
        case .denied: break
        case .restricted: break
        default: break
        }
        for (index,coordinate) in coordinates.enumerated(){
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = annotationNames[index]
            self.mapView.addAnnotation(annotation)
        }
        
        let geoCoder = CLGeocoder()
        if let searchText = self.searchText {
            geoCoder.geocodeAddressString(searchText, completionHandler: { (placeMarks, error) in
                if  (error != nil || (placeMarks?.count == 0)) {
                    //                    self.detailAddressLabel.text = "您输入的地址找不到!";
                }else{
                    //编码成功（找到了具体的位置信息),打印输出查询到的所有地标信息
                    for placeMark in placeMarks!{
                        print("name = \(String(describing: placeMark.name)),country = \(String(describing: placeMark.locality)),postalCode = \(String(describing: placeMark.postalCode)),ISOcountryCode = \(String(describing: placeMark.isoCountryCode))")
                        let annotation = MKPointAnnotation()
                        annotation.coordinate = (placeMark.location?.coordinate)!
                        annotation.title = placeMark.name
                        self.mapView.addAnnotation(annotation)
                    }
                    
                }
            })
            // Do any additional setup after loading the view.
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var played = false
    var sound:AVAudioPlayer = AVAudioPlayer()
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let title = view.annotation?.title {
            let  path = NSURL.fileURL(withPath: Bundle.main.path(forResource: title!, ofType: "mp3")!)  //NSURL.fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"1" ofType:@"mp3"]];
            //                Bundle.main.url(forResource: "4", withExtension: "mp3") {
            do {
                try sound =  AVAudioPlayer(contentsOf: path)
                if sound.isPlaying {
                    sound.pause()
                }else {
                    sound.prepareToPlay()
                }
                //                    sound.play()
                sound.volume = 1.0
                _ = Timer.scheduledTimer(timeInterval: 1,
                                         target:self,selector:#selector(MapVC.play),
                                         userInfo:nil,repeats:false)
                print("played")
            } catch {
                print("error")
                // couldn't load file :(
            }
            
        }
        
    }
    @IBAction func hh(_ sender: UIButton) {
        print(sound.play())
    }
    func play() {
        print("2s later")
        if played == false {
            sound.play()
            played = true
        } else {
            played = false
            sound.pause()
        }
        
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
