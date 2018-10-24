//
//  ScheduleTableViewController.swift
//  ScheduleApp
//
//  Created by Shashank Sharma on 10/24/18.
//  Copyright © 2018 RU Angry. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {
    
    struct scheduledClass {
        var buildingImage: UIImage
        var time: String
        var className: String
    }

    static var tillet: UIImage = #imageLiteral(resourceName: "Tillet")
    static var bbuilding: UIImage = #imageLiteral(resourceName: "Business Building")
    static var hillCenter: UIImage = #imageLiteral(resourceName: "Hill Centers")
    
    static var calc2: scheduledClass = .init(buildingImage: tillet, time: "1:00PM", className: "Calc 2")
    static var cs205: scheduledClass = .init(buildingImage: bbuilding, time: "4:00PM", className: "CS205")
    static var cs111: scheduledClass = .init(buildingImage: hillCenter, time: "3:00PM", className: "CS111")
    static var cs214: scheduledClass = .init(buildingImage: tillet, time: "6:00PM", className: "CS214")
    static var rumad: scheduledClass = .init(buildingImage: hillCenter, time: "9:00PM", className: "iOS")
    
    var days: [String] = [
        "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"
    ]
    
    var schedule: [String: [scheduledClass]] = [
        "Monday": [calc2, cs205],
        "Tuesday": [cs111, cs214],
        "Wednesday": [calc2, cs205, rumad],
        "Thursday" : [cs111, cs214],
        "Friday": []
    ]
    
//    var schedule: [String] = ["Calc 2", "CS111", "CS205", "RUMAD iOS meeting"]
//
//
//    var schedule: [String: [scheduledClass]] = [
//        "Monday": ["Calc 2", "CS205"],
//        "Tuesday": ["CS111", "CS214"],
//        "Wednesday": ["Calc 2", "CS205", "Accelerator Meeting"],
//        "Thursday" : ["CS111", "CS214"],
//        "Friday": []
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return days.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let currentDay = days[section]
        guard let currentSchedule = schedule[currentDay] else { return 0 }
        return currentSchedule.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:  "scheduleCell", for: indexPath) as? ScheduleTableViewCell else {
            return UITableViewCell()
        }

        let currentDay = days[indexPath.section]
        guard let currentSchedule = schedule[currentDay] else { return UITableViewCell() }
        
        let currentClass = currentSchedule[indexPath.row]
        cell.setUpCell(className: currentClass.className,
                       buildingImage: currentClass.buildingImage,
                       time: currentClass.time)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return days[section]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
