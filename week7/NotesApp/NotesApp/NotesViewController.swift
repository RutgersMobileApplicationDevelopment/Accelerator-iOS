//
//  ViewController.swift
//  NotesApp
//
//  Created by Salman Fakhri on 12/3/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var notes: [String] = ["note 1", "note 2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func addNoteButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "addNoteSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addNoteSegue" {
            guard let notesEditorVC = segue.destination as? NoteEditorViewController else { return }
            notesEditorVC.delegate = self
        }
    }
    

}

extension NotesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath)
        cell.textLabel?.text = notes[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
}

extension NotesViewController: NotesDelegate {
    func newNoteAdded(note: String) {
        notes.append(note)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

