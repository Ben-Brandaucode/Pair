//
//  pairController.swift
//  BensAssesment6
//
//  Created by Ben Brandau Brandau on 8/28/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import Foundation
class PairControllers {

    //Mark: Properties
    static let shared = PairControllers()
    var members: [String] = []
    
    //MARK:CRUD
    func createMembers(with name: String){
        let _ = member(member: name)
        saveToPersistence()
    }
    
    func deleteMembers(member: Members){
        guard let index = members.firstIndex(of: member) else {return}
        members.remove(at: index)
        saveToPersistence()
        
    }
    
    func randomizePairs(){
    }
    
    
    
    //Persistence
    private func fileURL()->URL{
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileName = "BensAssesment6.json"
        let documentsDirectoryURL = urls[0].appendingPathComponent(fileName)
        return documentsDirectoryURL
    }
    
    func saveToPersistence(){
        let encoder = JSONEncoder()
        do{
            let data = try encoder.encode(entries)
            try data.write(to: fileURL())
        } catch let error{
            print("\(error.localizedDescription)")
        }
    }
    
    func loadfromPersistenceStore(){
        let decoder = JSONDecoder()
        do{
            let data = try Data(contentsOf: fileURL())
            let decodedData = try decoder.decode([Entry].self, from: data)
            self.entries = decodedData
        }catch let error{
            print("\(error.localizedDescription)")
        }
    }
    
}//end of class
