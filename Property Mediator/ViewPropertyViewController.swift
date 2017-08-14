//
//  AddPhotoViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 11/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class ViewPropertyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var propertyTableVIew: UITableView!
    var propertyList = [Property]()


    @IBAction func back(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)        
    }
    @IBAction func bjbb(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddPropertyViewController") as! AddPropertyViewController
        navigationController?.pushViewController(vc,animated: true)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        propertyTableVIew.delegate = self
        propertyTableVIew.dataSource = self

    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.loadProperty()
    }
    
    
    func loadProperty()  {
        propertyList.removeAll()
        let propertyHelper = PropertyDBHelper()
        let result = propertyHelper.getProperty()
        for element in result {
            let object = Property()
            object.ownername = element.ownername
            object.email = element.email
            object.id = element.id
            object.phone = element.phone
            propertyList.append(object)
        }
        self.propertyTableVIew.reloadData()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return propertyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PropertyTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PropertyTableViewCell
        let item = propertyList[indexPath.row]
        cell.ownerName.text = item.ownername
        cell.phoneNumber.text = "Ph No : "+item.phone
        cell.propertyType.text = (item.propertyType == 1 ? "HOME" : "LAND")
        let documentsUrl =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let dataPath = documentsUrl.appendingPathComponent(item.folderId)
        let directoryContents = try!FileManager.default.contentsOfDirectory(at: dataPath, includingPropertiesForKeys: nil, options: FileManager.DirectoryEnumerationOptions.skipsSubdirectoryDescendants)
        cell.imageCount.text = String(directoryContents.count)  + " Images"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    

}
