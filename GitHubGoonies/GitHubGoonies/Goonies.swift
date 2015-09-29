import Foundation



let API_ROOT = "https://api.github.com" // Global Constants defined

let myProfileURL = API_ROOT + "/users/paulvagner"


var users: [[String:AnyObject?]] = [
    [
        "login": "PaulVagner",
        "id": 14568315,
        "avatar_url": "https://avatars.githubusercontent.com/u/14568315?v=3",
        "gravatar_id": "",
        "url": "https://api.github.com/users/PaulVagner",
        "html_url": "https://github.com/PaulVagner",
        "followers_url": "https://api.github.com/users/PaulVagner/followers",
        "following_url": "https://api.github.com/users/PaulVagner/following{/other_user}",
        "gists_url": "https://api.github.com/users/PaulVagner/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/PaulVagner/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/PaulVagner/subscriptions",
        "organizations_url": "https://api.github.com/users/PaulVagner/orgs",
        "repos_url": "https://api.github.com/users/PaulVagner/repos",
        "events_url": "https://api.github.com/users/PaulVagner/events{/privacy}",
        "received_events_url": "https://api.github.com/users/PaulVagner/received_events",
        "type": "User",
        "site_admin": false,
        "name": nil,
        "company": nil,
        "blog": nil,
        "location": nil,
        "email": nil,
        "hireable": nil,
        "bio": nil,
        "public_repos": 1,
        "public_gists": 0,
        "followers": 1,
        "following": 1,
        "created_at": "2015-09-21T13:22:31Z",
        "updated_at": "2015-09-21T13:40:24Z"
        
        
    ]
]

class GitHubRequest: NSObject {

    class func requestUserInfo(username: String, completion: (responseInfo: AnyObject?) -> ()) {
      
        let userURL = API_ROOT + "/users/" + username //string object of URL
        
        print(userURL)
    
        if let url = NSURL(string: userURL) {
         
            let request = NSURLRequest(URL: url) // like putting an address on an envelope but not send it out.
            
           let task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            
            
            
            
            if let data = data {
            
                
                do {
                    
                
              let info = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)
                   
                completion(responseInfo: info)
                    
                    
                    print(info)
            
                } catch {
                
                   // print(data)

                
                }
            }
            
            
            
           
           
           }) // "{" "}" represent CLOSURE or BLOCK
            
            task.resume()
            
            
        }
        
        
    }
    
  // This line pulls the information from a server...
    class func request(info: [String:AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
        
       
        
        
        
        
        
        
    }
    
    
    
}