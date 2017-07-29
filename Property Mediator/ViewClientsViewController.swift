//
//  AddClientViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 13/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class ViewClientsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var clientTableView: UITableView!
    
    var contact = [Contacts]()
    @IBAction func addAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddClientViewController") as! AddClientViewController
        navigationController?.pushViewController(vc,animated: true)

    }
   
    
    @IBAction func backButton(_ sender: Any) {
      _ = navigationController?.popViewController(animated: true)
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        clientTableView.delegate = self
        clientTableView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.loadClients()
    }
    
    
    func loadClients()  {
        contact.removeAll()
        let contactHelper = ContactsDBHelper()
        let result = contactHelper.getContacts()
        for element in result {
            let object = Contacts()
            object.phone = element.phone
            object.name = element.name
            contact.append(object)
        }
        self.clientTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ContactTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ContactTableViewCell
        let item = contact[indexPath.row]
        cell.name.text = item.name
        cell.phone.text = item.phone
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }


}
