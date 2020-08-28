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
    var pairs: [String] = []
    
    //MARK:CRUD
    func createMembers(){
    }
    
    func deleteMembers(){
        
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
