//
//  ViewController.swift
//  Click Counter
//
//  Created by Geek on 12/7/18.
//  Copyright © 2018 Geek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count=0
    var labelOne: UILabel!
    var labelTwo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //label
        let labelOne = UILabel()
        labelUI(label: labelOne,x: 150)
        
        let labelTwo = UILabel()
        labelUI(label: labelTwo,x: 200)
        
        self.labelOne = labelOne
        self.labelTwo = labelTwo
        
        let buttonIncrement = UIButton()
        buttonUI(button: buttonIncrement,x:70,textButton: "inc.")
        buttonIncrement.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        let buttonDecrement = UIButton()
        buttonUI(button: buttonDecrement,x:200,textButton: "dec.")
        buttonDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
        let buttonColor = UIButton()
        buttonUI(button: buttonColor,x:330,textButton: "color")
        buttonColor.addTarget(self, action: #selector(ViewController.getRandomColor), for: UIControlEvents.touchUpInside)
    }
    @objc func getRandomColor(){
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        self.view.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func labelUI(label: UILabel,x: Int){
        label.frame = CGRect(x:x,y:150,width:60,height:60)
        label.text = "0"
        view.addSubview(label)
    }
    @objc func buttonUI(button: UIButton,x: Int,textButton: String){
        button.frame = CGRect(x:x,y:250,width:60,height:60)
        button.setTitle(textButton, for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
    }
    @objc func incrementCount(){
        self.count += 1
        self.labelOne.text = "\(self.count)"
        self.labelTwo.text = "\(self.count)"
    }
    @objc func decrementCount(){
        self.count -= 1
        self.labelOne.text = "\(self.count)"
        self.labelTwo.text = "\(self.count)"
    }

}

