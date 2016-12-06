//
//  DetailViewController.swift
//  LatihanPutGet
//
//  Created by Nando Septian Husni on 12/4/16.
//  Copyright © 2016 IMA STUDIO. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var labeljd : String = ""
    var labeldet : String = ""
  var imgPiew = UIImage()
    @IBOutlet weak var lblJudul: UILabel!
    @IBOutlet weak var lblDet: UILabel!
 //   @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
lblJudul.text = labeljd
lblDet.text = labeldet
//         imgView.image = imgPiew
        // Do any additional setup after loading the view.
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
