//
//  ViewController.swift
//  hyperkycsample
//
//  Created by Jishin Dev on 15/03/22.
//

import UIKit
import HyperKYC

class ViewController: UIViewController {

//    @IBOutlet var btnStartWorkflow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func onStartWorkflow(){
        startWorkflow()
    }

    func startWorkflow(){
        let workFlow = [HyperKycFlow.document(), HyperKycFlow.face()]
        let hyperKycConfig = HyperKycConfig(
            accessToken: "<access-token>", // get accessToken as shown here
            workFlow: workFlow,
            transactionId: "<transaction-id>"
        )
        
        HyperKyc.launch(self, hyperKycConfig: hyperKycConfig) { hyperKycResult in
            print("hyperKycResult: \(hyperKycResult)")
            // Handle final result here
        }
    }
}

