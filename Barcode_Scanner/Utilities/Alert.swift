//
//  Alert.swift
//  Barcode_Scanner
//
//  Created by عامر خان on 20/11/23.
//

import SwiftUI 


struct AlertItem: Identifiable{
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct ALertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the Camera. We are not able to capture", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "The scanned value is not valid. This app scans EAN-8 and EAN-13", dismissButton: .default(Text("Ok")))
}
