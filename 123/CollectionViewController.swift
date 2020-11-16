//
//  CollectionViewController.swift
//  123
//
//  Created by jiju on 16/11/20.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let elements = ["Sachin","Ganguly","Kohli","Dhoni","Dravid"]
    let image = ["download1","download2","download3","download4","download5"]
    var nameee:PersonViewController = PersonViewController()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        print(nameee.namee)
        nameLabel.text = nameee.namee
    

    }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 5
            
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customcellcol", for:  indexPath as IndexPath) as! CollectionViewCell
        cell.nameLabel.text = elements[indexPath.row]
        cell.imgLabel.image = UIImage(named: image[indexPath.row] )
        
        return cell
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    


}
