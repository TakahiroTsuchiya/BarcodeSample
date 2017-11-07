//
//  Barcode.swift
//  BarcodeSample
//
//  Created by other on 2017/11/06.
//  Copyright © 2017 TakahiroTsuchiya. All rights reserved.
//

import UIKit
import CoreImage

class Barcode: NSObject {

    func generateBarcode(_ code: String) -> UIImage? {

        guard let data = code.data(using: .utf8) else {
            return nil
        }

        guard let filter = CIFilter(name: "CICode128BarcodeGenerator") else {
            return nil
        }

        filter.setDefaults()
        filter.setValue(data, forKey: "inputMessage")

        guard let output = filter.outputImage else {
            return nil
        }

        let context = CIContext(options: nil)

        guard let cgImage = context.createCGImage(output, from: output.extent) else {
            return nil
        }

        let image = UIImage(cgImage: cgImage, scale: 1.0, orientation: UIImageOrientation.up)

        return image
    }
}
