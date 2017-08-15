//
//  AddRemainderViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 15/08/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit
import EventKit

class AddRemainderViewController: UIViewController {

    @IBOutlet weak var dueDateTime: UITextField!
    @IBOutlet weak var remainderDescription: UITextView!
    
    @IBAction func cancel(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)

    }
    var eventStore = EKEventStore()
    var datePicker: UIDatePicker!
    
    
    @IBAction func saveRemainder(_ sender: Any) {
        let reminder = EKReminder(eventStore: self.eventStore)
        reminder.title = remainderDescription.text
        reminder.calendar = eventStore.defaultCalendarForNewReminders()
        let timezoneLK = NSTimeZone(forSecondsFromGMT: 19800)
        let components = NSCalendar.current.dateComponents(in: timezoneLK as TimeZone, from: self.datePicker.date)
        reminder.dueDateComponents = components
        do {
            try eventStore.save(reminder,
                                commit: true)
        } catch let error {
            print("Reminder failed with error \(error.localizedDescription)")
        }
        _ = navigationController?.popViewController(animated: true)

      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker.addTarget(self, action: #selector(AddRemainderViewController.addDate), for: UIControlEvents.valueChanged)
        
        datePicker.datePickerMode = UIDatePickerMode.dateAndTime
        dueDateTime.inputView = datePicker
        remainderDescription.becomeFirstResponder()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addDate(){
        self.dueDateTime.text = self.datePicker.date.description
    }

   
}
