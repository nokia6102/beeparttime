import UIKit
import MapKit    //此行若省略可以從Capbitilites頁面開啟此功能

class MapViewController: UIViewController,MKMapViewDelegate {   //引入地圖協定 (以更改大頭針外型）

    
    @IBOutlet weak var myMap: MKMapView!
    let  locationManager = CLLocationManager()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        
        myMap.delegate = self
        
        myMap.showsUserLocation = true
        
        
        //初始化預設大頭針物件1
        var annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 24.990239, longitude: 121.311862)
        annotation.title = "職訓中心"
        annotation.subtitle = "$200/H,月領"
        myMap.addAnnotation(annotation)
        
        //初始化預設大頭針物件2
        annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 24.989219, longitude: 121.313456)
        annotation.title = "桃園火車站"
        annotation.subtitle = "$150/H,日領"
        myMap.addAnnotation(annotation)
        
        
        
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
