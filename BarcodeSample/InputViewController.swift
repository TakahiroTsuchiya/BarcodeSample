//
//  InputViewController.swift
//  BarcodeSample
//
//  Created by other on 2017/11/06.
//  Copyright © 2017 TakahiroTsuchiya. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!

    @IBOutlet weak var outputImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func generateBarcodeImage(_ sender: Any) {

        guard let code = inputTextField.text else {
            return
        }

        print("[input code] " + code)

        self.outputImageView.image = Barcode().generateBarcode(code)

    }
}
