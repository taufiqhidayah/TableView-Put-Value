//
//  ViewController.swift
//  LatihanPutGet
//
//  Created by Nando Septian Husni on 12/4/16.
//  Copyright © 2016 IMA STUDIO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var numberOfItem : Int = 0
    @IBOutlet weak var tableVIew: UITableView!
    var kota: [String] = ["Bandung", "Jakarta","Makasar","Semarang","Surabaya"]
    var gambar: [String] = ["bandung.jpeg", "jakarta.jpeg","makasar.jpeg","semarang.jpeg","surabaya.jpeg"]
    var detail: [String] = ["Kota Bandung (Sunda: ᮊᮧᮒ ᮘᮔ᮪ᮓᮥᮀ) merupakan kota metropolitan terbesar di Provinsi Jawa Barat, sekaligus menjadi ibu kota provinsi tersebut. Kota ini terletak 140 km sebelah tenggara Jakarta, dan merupakan kota terbesar ketiga di Indonesia setelah Jakarta dan Surabaya menurut jumlah penduduk. Selain itu, Kota Bandung juga merupakan kota terbesar di wilayah Pulau Jawa bagian selatan. ","Daerah Khusus Ibukota Jakarta adalah ibu kota negara Republik Indonesia. Jakarta merupakan satu-satunya kota di Indonesia yang memiliki status setingkat provinsi. Jakarta terletak di pesisir bagian barat laut Pulau Jawa.","Kota Makassar adalah ibu kota provinsi Sulawesi Selatan. Makassar merupakan kota metropolitan terbesar di kawasan Indonesia Timur dan pada masa lalu pernah menjadi ibukota Negara Indonesia Timur dan Provinsi Sulawesi. ","Kota Semarang adalah ibukota Provinsi Jawa Tengah, Indonesia sekaligus kota metropolitan terbesar kelima di Indonesia sesudah Jakarta, Surabaya, Bandung, dan Medan","Kota Surabaya adalah ibu kota Provinsi Jawa Timur, Indonesia sekaligus menjadi kota metropolitan terbesar di provinsi tersebut. Surabaya merupakan kota terbesar kedua di Indonesia setelah Jakarta."]
    var data :[[String : String]] = []
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableVIew.dataSource = self
        tableVIew.delegate = self
        
        tableVIew.rowHeight = UITableViewAutomaticDimension
        tableVIew.estimatedRowHeight = 72
    for i in 0..<kota.count {
            data.append(
                [
                    "title": " \(kota[i])" ,
                    "detail": " \(detail[i])"
                ]
            )
        }
       
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailKota" {
            let d = data[numberOfItem]
            let detail = segue.destination as! DetailViewController
            detail.labeljd = d["title"]!
            detail.labeldet = d["detail"]!
        }
    }

}

//Mark  - UI
extension ViewController: UITableViewDataSource  {
    //ini optional
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL_ID", for: indexPath) as! CustomTableViewCell
        
        let d = data[indexPath.row]
        cell.lblJdl?.text = d["title"]
        cell.lblDet?.text = d["detail"]
        
        return cell
        
    }
    
}
extension ViewController: UITableViewDelegate{
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let d = data[indexPath.row]
        let alert = UIAlertController (title: d["title"], message: d["detail"], preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let det  = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: {(action) -> Void in
            print("Tabbed")
        })
        let cancel  = UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel, handler: {(action) -> Void in
            print("Tabbed")
        })
        alert.addAction(cancel)
        alert.addAction(det)
        present(alert, animated: true, completion: nil)
    
   
    
    }
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 1 == 0{
            return 80
        } else {
            return UITableViewAutomaticDimension
        }
    }
}


