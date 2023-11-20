//
//  ScannerView.swift
//  Barcode_Scanner
//
//  Created by عامر خان on 13/11/23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scanneerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate{
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }

        func didSurface(error: CameraError) {
            switch error{
            case .invalidDeviceInput:scannerView.alertItem = ALertContext.invalidDeviceInput
            case .invalidScanValue:scannerView.alertItem = ALertContext.invalidScannedType
            }
        }
    }
}


//#Preview {
//    ScannerView(scannedCode: .constant("1234567"), alertItem: <#Binding<AlertItem?>#> )
//}
