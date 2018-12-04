//
//  NoteEditorViewController.swift
//  NotesApp
//
//  Created by Salman Fakhri on 12/3/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit

protocol NotesDelegate {
    func newNoteAdded(note: String)
}

struct NotesData: Codable {
    let notes: [String]
}

struct NewNote: Codable {
    let newNote: String
}

class NoteEditorViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var delegate: NotesDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func createNoteButtonPressed(_ sender: Any) {
        delegate?.newNoteAdded(note: "new note haha")
        navigationController?.popViewController(animated: true)
        postNote {
            print("sadfa")
        }
    }
    
    let urlString = "https://88afe0cc.ngrok.io/salman/notes"
    
    func postNote(completion: @escaping ()->())  {
        guard let url = URL(string: urlString) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        let postString = "newNote=hello"
        request.httpBody = postString.data(using: .utf8)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: request) { (data, response, error) in
            if let jsonData = data {
                do {
                    let decoder = JSONDecoder()
                    let notes = try decoder.decode(NotesData.self, from: jsonData)
                    print(notes)
                } catch {
                    print(error)
                }
            } else {
                print("something went wrong")
            }
            
        }
        task.resume()
    }

}
