//
//  LeerNoticias.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import Foundation


class LeerNoticias{


    func getNoticias(termino:@escaping(_ datos:[String])->()){
      let liga = "https://api.nytimes.com/svc/topstories/v2/home.json?api-key=kg2DeMrOkm7cdoHLQ3ImXsGL1xotiEj8"
      let url = URL(string: liga)!
        URLSession.shared.dataTask(with: url as URL) { (dato:Data?, respuesta:URLResponse?, error:Error?) in
            var titulos:[String] = []
            do{
                let resultado = try JSONSerialization.jsonObject(with: dato!, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary
            
                for valor in resultado["results"] as! [NSDictionary]{
                  titulos.append(valor["title"] as! String)
                }
                DispatchQueue.main.async {
                    termino(titulos)
             }
            }catch{
              print("Error en lectura")
            }
        }.resume()
        }
    }



