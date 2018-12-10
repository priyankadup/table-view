//
//  ViewController.swift
//  table view
//
//  Created by Student 06 on 14/09/18.
//  Copyright © 2018 Student 06. All rights reserved.
//

import UIKit
var nameArray = [String]()
var nameArray1 = [String]()
//var nameArrayImage = []
//var nameArray1Image = []

class ViewController: UIViewController ,UITableViewDataSource{

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameArray = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
       
        nameArray1 = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
        
       var nameArrayImage = [ UIImage(named: "1.jpeg"),UIImage(named: "2.jpeg"),UIImage(named: "3.jpeg"),UIImage(named: "4.jpeg"),UIImage(named: "5.jpeg"),UIImage(named: "6.jpeg"),UIImage(named: "7.jpeg")]
 
       var  nameArray1Image = [ UIImage(named: "8.jpeg"),UIImage(named: "9.jpeg"),UIImage(named: "10.jpeg"),UIImage(named: "11.jpeg"),UIImage(named: "12.jpeg"),UIImage(named: "13.jpeg"),UIImage(named: "14.jpeg")]

        //var image: [String] = ["1","2","3","4","5","6","7"]
        myTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
 {
    if section == 0
    {
    return nameArray.count
    }
    else
    {
        return nameArray1.count
    }
}
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
   {
    let cell =  UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cell")
    if(indexPath.section == 0)
    {
    cell.textLabel?.text = nameArray[indexPath.row]
    cell.detailTextLabel?.text = "nameArray"
        cell.imageView?.image = nameArrayImage[indexPath.row]
        
    }
    else
    {
        cell.textLabel?.text = nameArray1[indexPath.row]
        cell.detailTextLabel?.text = "nameArray1"
        cell.imageView?.image = nameArray1Image[indexPath.row]
    }
    //cell.imageView?.image = UIImage(named: "download.jpeg")
    return cell
    }

    
    func numberOfSections(in tableView: UITableView) -> Int // Default is 1 if not implemented
    {
        return 2;
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

