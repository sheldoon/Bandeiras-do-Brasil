//
//  ViewController.swift
//  BrandeirasDoBrasil
//
//  Created by user220797 on 8/7/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4 : UIButton!
    
    var estados = [String]()
    var score = 0
    var correctAnswer = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        estados.append("Acre")
        estados.append("Alagoas")
        estados.append("Amapa")
        estados.append("Amazonas")
        estados.append("Bahia")
        estados.append("Ceara")
        estados.append("Distrito Federal")
        estados.append("Espirito Santo")
        estados.append("Goias")
        estados.append("Maranhao")
        estados.append("Mato Grosso")
        estados.append("Mato Grosso do Sul")
        estados.append("Minas Gerais")
        estados.append("Para")
        estados.append("Paraiba")
        estados.append("Parana")
        estados.append("Pernambuco")
        estados.append("Piaui")
        estados.append("Rio de Janeiro")
        estados.append("Rio Grande do Norte")
        estados.append("Rio Grande do Sul")
        estados.append("Rondonia")
        estados.append("Roraima")
        estados.append("Santa Catarina")
        estados.append("Sao Paulo")
        estados.append("Sergipe")
        estados.append("Tocantins")
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        button4.layer.borderWidth = 1
        
        
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        button4.layer.borderColor = UIColor.lightGray.cgColor
        title = " teste"
        
       
        askQuestion()
        // Do any additional setup after loading the view.
    }
    
    func askQuestion(action: UIAlertAction! = nil){
        estados.shuffle()
        button1.setImage(UIImage(named: estados[0]), for: .normal)
        button2.setImage(UIImage(named: estados[1]), for: .normal)
        button3.setImage(UIImage(named: estados[2]), for: .normal)
        button4.setImage(UIImage(named: estados[3]), for: .normal)
        correctAnswer = Int.random(in: 0...3)
        title = estados[correctAnswer].uppercased()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        if sender.tag == correctAnswer{
            title = "Correct"
            score += 1
        } else{
            title = "Wrong"
            score -= 1
        }
        let ac = UIAlertController(title : title, message: "Your score is \(score).",preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: " Continue",style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
    
}

