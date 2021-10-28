//
//  ques3.swift
//  AutoLayout2
//
//  Created by Gaurav Bisht on 13/10/21.
//

import UIKit

class ques3: UIViewController {

    @IBOutlet weak var spidermanImg: UIImageView!
    @IBOutlet weak var ironmanImg: UIImageView!
    @IBOutlet weak var jerryImg: UIImageView!
    @IBOutlet weak var tomImg: UIImageView!
    
    @IBOutlet weak var ironmanLbl: UILabel!
    @IBOutlet weak var spidermanLbl: UILabel!
    @IBOutlet weak var jerryLbl: UILabel!
    @IBOutlet weak var tomLbl: UILabel!
    
    
    
    @IBOutlet weak var spidermanView: UIView!
    @IBOutlet weak var tomView: UIView!
    @IBOutlet weak var jerryView: UIView!
    @IBOutlet weak var ironmanView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spidermanImg.translatesAutoresizingMaskIntoConstraints = false
        ironmanImg.translatesAutoresizingMaskIntoConstraints = false
        jerryImg.translatesAutoresizingMaskIntoConstraints = false
        tomImg.translatesAutoresizingMaskIntoConstraints = false
        ironmanLbl.translatesAutoresizingMaskIntoConstraints = false
        spidermanLbl.translatesAutoresizingMaskIntoConstraints = false
        jerryLbl.translatesAutoresizingMaskIntoConstraints = false
        tomLbl.translatesAutoresizingMaskIntoConstraints = false
       
        spidermanImgContraintsSet()
        ironmanImgContraintsSet()
        jerryImgContraintsSet()
        tomImgContraintsSet()
        ironmanLblContraintsSet()
        spidermanLblContraintsSet()
        jerryLblContraintsSet()
        tomLblContraintsSet()

    }
    private func spidermanImgContraintsSet(){
        
        NSLayoutConstraint.activate([
            spidermanImg.topAnchor.constraint(equalTo: spidermanView.topAnchor, constant: 40),
            spidermanImg.leadingAnchor.constraint(equalTo: spidermanView.leadingAnchor, constant: 30),
            spidermanImg.bottomAnchor.constraint(equalTo: spidermanView.bottomAnchor, constant: -40),
            spidermanImg.trailingAnchor.constraint(equalTo: spidermanView.trailingAnchor, constant: -30)
        ])
        
    }
    
    
    private func ironmanImgContraintsSet(){
        
        NSLayoutConstraint.activate([
            ironmanImg.topAnchor.constraint(equalTo: ironmanView.topAnchor, constant: 40),
            ironmanImg.leadingAnchor.constraint(equalTo: ironmanView.leadingAnchor, constant: 30),
            ironmanImg.bottomAnchor.constraint(equalTo: ironmanView.bottomAnchor, constant: -40),
            ironmanImg.trailingAnchor.constraint(equalTo: ironmanView.trailingAnchor, constant: -30)
        ])

    }
    
    
    private func jerryImgContraintsSet(){
        
        NSLayoutConstraint.activate([
            jerryImg.topAnchor.constraint(equalTo: jerryView.topAnchor, constant: 40),
            jerryImg.leadingAnchor.constraint(equalTo: jerryView.leadingAnchor, constant: 30),
            jerryImg.bottomAnchor.constraint(equalTo: jerryView.bottomAnchor, constant: -40),
            jerryImg.trailingAnchor.constraint(equalTo: jerryView.trailingAnchor, constant: -30)
        ])
        
    }
    
    private func tomImgContraintsSet(){
 
        NSLayoutConstraint.activate([
            tomImg.topAnchor.constraint(equalTo: tomView.topAnchor, constant: 40),
            tomImg.leadingAnchor.constraint(equalTo: tomView.leadingAnchor, constant: 30),
            tomImg.bottomAnchor.constraint(equalTo: tomView.bottomAnchor, constant: -40),
            tomImg.trailingAnchor.constraint(equalTo: tomView.trailingAnchor, constant: -30)
        ])

    }
    
    private func ironmanLblContraintsSet(){
        
        NSLayoutConstraint.activate([
            ironmanLbl.topAnchor.constraint(equalTo: ironmanImg.bottomAnchor, constant: 5),
            ironmanLbl.leadingAnchor.constraint(equalTo: ironmanImg.leadingAnchor),
            ironmanLbl.trailingAnchor.constraint(equalTo: ironmanImg.trailingAnchor)
        ])
        
    }
    
    
    private func spidermanLblContraintsSet(){
        
        NSLayoutConstraint.activate([
            spidermanLbl.topAnchor.constraint(equalTo: spidermanImg.bottomAnchor, constant: 5),
            spidermanLbl.leadingAnchor.constraint(equalTo: spidermanImg.leadingAnchor),
            spidermanLbl.trailingAnchor.constraint(equalTo: spidermanImg.trailingAnchor)
        ])
        
    }
    
    private func jerryLblContraintsSet(){
        
        NSLayoutConstraint.activate([
            jerryLbl.topAnchor.constraint(equalTo: jerryImg.bottomAnchor, constant: 5),
            jerryLbl.leadingAnchor.constraint(equalTo: jerryImg.leadingAnchor),
            jerryLbl.trailingAnchor.constraint(equalTo: jerryImg.trailingAnchor)
        ])
        
    }
    
    private func tomLblContraintsSet(){
        
        NSLayoutConstraint.activate([
            tomLbl.topAnchor.constraint(equalTo: tomImg.bottomAnchor, constant: 5),
            tomLbl.leadingAnchor.constraint(equalTo: tomImg.leadingAnchor),
            tomLbl.trailingAnchor.constraint(equalTo: tomImg.trailingAnchor)
        ])
        
    }

}
