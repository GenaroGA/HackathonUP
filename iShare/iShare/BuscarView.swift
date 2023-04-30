//
//  BuscarView.swift
//  iShare
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI
import MapboxMaps

struct BuscarView: View
{
    @State private var searchText = ""
    
    var body: some View
    {
        NavigationView()
        {
            ZStack
            {
                MapViewFile()
                Image("")
                    .searchable(text: $searchText)
                
                    
            }
        }
    }
}

struct BuscarView_Previews: PreviewProvider {
    static var previews: some View {
        BuscarView()
    }
}


struct MapViewFile: View {
    @State private var searchText:String = ""
    var body: some View {
        ZStack {
            MapContentView()
        }.ignoresSafeArea()
    }
}

/// Creamos el 'struct' que dará vida a nuestro mapa
struct MapContentView: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> some UIViewController {
            return ViewMapController()
        }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context){}
}

/**
La librería MapboxMaps no se encuentra disponible para SwiftUI, en su lugar se trabaja como UIKit y se hace una especie de 'port' a Swift UI
 **/

class ViewMapController: UIViewController{
    
    internal var mapView: MapView!
    
    private let public_token:String = "pk.eyJ1IjoicmhvZHd1bGYiLCJhIjoiY2xoMnFsYWEyMWY2NjNncG1nYzJqdjYzdiJ9.LS2oppcl1UHL0qHK9KX9Cg"
    
    // Función que se llamará cuando la pantalle cargue
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let MyCameraOptions = CameraOptions (
            center: CLLocationCoordinate2D (
                latitude: 19.434442483113873,
                longitude: -99.13304606767227
            ),
            zoom: 15
        )
        
        // Opciones de recursos
        let MyResourceOptions = ResourceOptions (
            accessToken: public_token
        )
        
        // Opciones de como inicializar el mapa
        let myMapInitOption = MapInitOptions (
            resourceOptions: MyResourceOptions,
            cameraOptions: MyCameraOptions
        )
        
        mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOption)
        
        mapView.autoresizingMask = [
            .flexibleWidth,
            .flexibleWidth
        ]
        self.view.addSubview(mapView)
        
    }
}
