import UIKit
import MapKit    //此行若省略可以從Capbitilites頁面開啟此功能

class MapViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {   //MKMapViewDelegate引入地圖協定 (以更改大頭針外型）

    
    @IBOutlet weak var myMap: MKMapView!
    let  locationManager = CLLocationManager()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //Step3.向使用者要求定位授權（必須配合Info.plist的設定）
        locationManager.requestWhenInUseAuthorization()
        //Step4.指定定位管理員的代理人
        locationManager.delegate = self
        //指定地圖的代理人
        myMap.delegate = self
        //讓地圖顯示目前位置
        myMap.showsUserLocation = true
        //初始化大頭針陣列
        var arrAnnotation = [MKPointAnnotation]()
        
        //初始化預設大頭針物件1
        var annotation = MKPointAnnotation()
      

        annotation.coordinate = CLLocationCoordinate2D(latitude: 24.990239, longitude: 121.311862)
        annotation.title = "職訓中心"
        annotation.subtitle = "$200/H,月領"
        arrAnnotation.append(annotation)
        

        //初始化預設大頭針物件2
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 24.989219, longitude: 121.313456)
        annotation.title = "桃園火車站"
        annotation.subtitle = "$150/H,日領"
        arrAnnotation.append(annotation)
  
        //初始化預設大頭針物件3  24.989059, 121.314536
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 24.989059, longitude: 121.314536)
        annotation.title = "台鐵便當"
        annotation.subtitle = "$80/H,日領"
        arrAnnotation.append(annotation)
        
        
        myMap.addAnnotations(arrAnnotation)
        
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Step5_1.開始定位（觸發定位完成的代理事件～locationManager(_:didUpdateLocations:)，一定要先實作Step6，以下的程式碼才能正常）
        locationManager.startUpdatingLocation()
        //Step5_2.設定地圖的顯示範圍（參數一：以目前使用者的GPS位置為中心點，參數二和三：以中心點來擴張的公尺為範圍）
        let viewRegion = MKCoordinateRegionMakeWithDistance(myMap.userLocation.coordinate,500,500)
        //Step5_3.將地圖調整到設定範圍
        myMap.setRegion(viewRegion, animated: true)
        //以下兩行取代上一行，為別人的範例
        //        let adjustRegion = myMap.regionThatFits(viewRegion)
        //        myMap.setRegion(adjustRegion, animated: true)
        
        //開始偵測設備前端的方位
        locationManager.startUpdatingHeading()
    }
    
    
    //MARK: CLLocationManagerDelegate
    //Step6.定位管理員完成定位時
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        //Step6_1.取得第一個定位資訊
        let aLocation = locations.first //locations[0]
        //Step6_2.把地圖的中心點設定到目前位置
        myMap.centerCoordinate = aLocation!.coordinate
        
//        lblLatitude.text = "\(aLocation!.coordinate.latitude)"
//        lblLongitude.text = "\(aLocation!.coordinate.longitude)"
//        lblAltitude.text = "\(aLocation!.altitude)"  //單位為公尺
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
