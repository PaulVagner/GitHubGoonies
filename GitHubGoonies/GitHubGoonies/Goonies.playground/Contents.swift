//: Playground - noun: a place where people can play

import UIKit



let API_ROOT = "https://api.github.com" // Global Constants defined


class GitHubRequest: NSObject {
    
    class func requestUserInfo(username: String, completion: (responseInfo: AnyObject?) -> ()) {
        
        let userURL = API_ROOT + "/users/" + username //string object of URL
        print(userURL)
        
        if let url = NSURL(string: userURL) {
            
            let request = NSURLRequest(URL: url) // like putting an address on an envelope but not send it out.
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
                
                print(data)
                
                
            }) // "{" "}" represent CLOSURE or BLOCK
            
            task.resume()
            
            
            
            
        }
        
        
    }
    
    // This line pulls the information from a server...
    class func request(info: [String:AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
        
        
        
        
        
        
        
        
    }
    
    
    
}



GitHubRequest.requestUserInfo("PaulVagner") { (responseInfo)  -> () in

    
    
    
}