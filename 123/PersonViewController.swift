//
//  PersonViewController.swift
//  123
//
//  Created by jiju on 15/11/20.
//

import UIKit

class PersonViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var namee = ""
    let elements = ["Sachin","Ganguly","Kohli","Dhoni","Dravid"]
    let image = ["download1","download2","download3","download4","download5"]
    let emails = ["sachin@gmail.com","ganguly@gmail.com","kohli@gmail.com","dhoni@gmail.com","dravid@gmail.com"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()

    
    }

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! PersonTableViewCell
        
        cell.personName.text = elements[indexPath.row]
        cell.personEmail.text = emails[indexPath.row]
        cell.personImage.image = UIImage(named: image[indexPath.row] )
        
        
        return cell
    }
//    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        var namee = elements[indexPath.row]
//        print(elements[indexPath.row])
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(elements[indexPath.row])
       namee = elements[indexPath.row]
    }
    @IBAction func backbuttonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
