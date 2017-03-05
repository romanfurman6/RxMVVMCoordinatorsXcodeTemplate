//
//  uninstall.swift
//  InstallMVVMTemplate
//
//  Created by Roman Dmitrieivich on 17/02/17.
//  Copyright © 2017 Roman Dmitrieivich. All rights reserved.
//

import Foundation

let templateName = "MVVM.xctemplate"
let destinationPath = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"

func printInConsole(_ message:Any){
    print("====================================")
    print("\(message)")
    print("====================================")
}

func removeTemplate(){
    
    let fileManager = FileManager.default
    
    do {
        if fileManager.fileExists(atPath:"\(destinationPath)/\(templateName)"){
            
            try fileManager.removeItem(atPath: "\(destinationPath)/\(templateName)")
            
            printInConsole("Template uninstalled succesfully.")
            
        }else{
            printInConsole("Need to install firstly try 'sudo swift install.swift'")
        }
    }
    catch let error as NSError {
        printInConsole("Ooops! Something went wrong: \(error.localizedFailureReason!)")
    }
}

removeTemplate()
