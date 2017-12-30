import Foundation

let templateName = "MVVM.xctemplate"
let destinationPath = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates"
let oldTemplatePath = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"

func moveTemplate(){

  let fileManager = FileManager.default

  do {
    if fileManager.fileExists(atPath:"\(oldTemplatePath)/\(templateName)"){
      try fileManager.removeItem(atPath: "\(oldTemplatePath)/\(templateName)")
      print("Remove old template")
    }
  } catch let error as NSError {
    print("Oops! Something went wrong :( error: \(error.localizedFailureReason!)")
  }

  do {
    if !fileManager.fileExists(atPath:"\(destinationPath)/\(templateName)"){

      try fileManager.copyItem(atPath: templateName, toPath: "\(destinationPath)/\(templateName)")
      
      print("Template installed succesfully. Enjoy it")

    }else{
      print("Template already exists")
    }
  } catch let error as NSError {
    print("Ooops! Something went wrong: \(error.localizedFailureReason!)")
  }
}

moveTemplate()




