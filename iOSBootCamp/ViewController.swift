//
//  ViewController.swift
//  iOSBootCamp
//
//  Created by Stefano Zanetti on 06/06/15.
//  Copyright (c) 2015 #pragmamark. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let person: Person = Person()
    
    let elements: [UIImage?] = [
        UIImage(named: "image_01"),
        UIImage(named: "image_02"),
        UIImage(named: "image_03"),
        UIImage(named: "image_04"),
        UIImage(named: "image_05")
    ]
    
    // MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        person.firstname = "#Pragma"
        person.lastname = "Mark"
        
        println(person.fullName())
    }
    
    override func viewWillAppear(animated: Bool) {

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as! DetailViewController
        
        if let selected = tableView.indexPathForSelectedRow() {

            controller.image = elements[selected.row]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ImageCell") as! ImageCell
        
        cell.cellImageView.image = elements[indexPath.row]
        
        return cell
    }

}

