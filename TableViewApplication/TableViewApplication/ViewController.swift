//
//  ViewController.swift
//  TableViewApplication
//
//  Created by Kuliza-334 on 19/01/17.
//  Copyright © 2017 Kuliza-334. All rights reserved.
//

import UIKit

struct cell1Data {
    let image: UIImage!
    let name: String!
    let post: String!
}
struct cell2Data {
    
    let que: String!
    let ans: String!
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var mtable: UITableView!
    var arrayofCell1Data = [cell1Data]()
    var arrayofCell2Data = [cell2Data]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayofCell1Data.count * 2 + arrayofCell2Data.count * 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        // mtable.rowHeight = UITableViewAutomaticDimension
        if (indexPath.row + 1) % 4 != 0{
            let index = indexPath.row % 3
            let cell1 = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell1.myimage.image = arrayofCell1Data[index].image
            cell1.name.text = arrayofCell1Data[index].name
            cell1.post.text = arrayofCell1Data[index].post
            return cell1
        }else{
            let index = indexPath.row % 3
           // let cell2 = mtable.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as!TableViewCell2
            let cell2 = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell2.l1?.text = arrayofCell2Data[index].que
            cell2.l2?.text = arrayofCell2Data[index].ans
             return cell2
        }
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        arrayofCell1Data = [cell1Data(image: #imageLiteral(resourceName: "pic1"), name: "Pushpendra Khandelwal", post: "Ios Intern"),
                            cell1Data(image: #imageLiteral(resourceName: "pic1"), name: "Pushpendra Khandelwal", post: "Intern "),
                            cell1Data(image: #imageLiteral(resourceName: "image1"), name: "Puru", post: "Intern")]
        
        arrayofCell2Data = [cell2Data(que:
            "What is a category and when is it used?",ans: "A category is a way of adding additional methods to a class without extending it."),
                            cell2Data(que:"How are you?",ans: "I am Fine")]
        mtable.delegate = self
        mtable.dataSource = self
        mtable.register(TableViewCell1.self, forCellReuseIdentifier: "cell1")
        mtable.register(TableViewCell2.self, forCellReuseIdentifier: "cell2")
        mtable.rowHeight = UITableViewAutomaticDimension
        mtable.estimatedRowHeight = 140 // or estimated height
       
        
    }

}

