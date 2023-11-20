//
//  BarcodeScannerViewModel.swift
//  Barcode_Scanner
//
//  Created by عامر خان on 20/11/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{

    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String{
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color{
        scannedCode.isEmpty ? .red : .green
    }
}
