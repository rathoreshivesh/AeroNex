//
//  dataManager.swift
//  Aeronex
//
//  Created by Devansh Agarwal on 27/02/24.
//

import SwiftUI
import Firebase
class DataManager:ObservableObject{
    @Published var pilots:[pilotFields] = []
    
    init(){
        fetchPilots()
    }
    func fetchPilots(){
        pilots.removeAll()
        let db =  Firestore.firestore()
        let ref = db.collection("PilotProfile")
        ref.getDocuments{ snapshot,error in
            guard error ==  nil else{
                print(error!.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents{
                    let data = document.data()
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let email = data["email"] as? String ?? ""
                    let password = data["password"] as? String ?? ""
                    let phNO = data["phNO"] as? String ?? ""
                    let experience = data["experience"] as? String ?? ""
                    let charges = data["charges"] as? String ?? ""
                    let pilot = pilotFields(id: id, name: name,email: email,phNO:phNO, password: password,experience: experience,charges:charges)
                    self.pilots.append(pilot)
                    
                }
            }
        }
        
    }
}
