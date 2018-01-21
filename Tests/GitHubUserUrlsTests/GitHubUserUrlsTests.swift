import XCTest
import Foundation

@testable import GitHubUserUrls

class GitHubUserUrlsTests: XCTestCase {
   
    func testEncode() {

        let urls = GitHubUserUrls(
                url: "url" , 
                avatar: "avator" , 
                html: "html" , 
                followers: "followers",
                following: "following",
                gists: "gists",
                repos: "repos"
                )

        do {

            let encoder = JSONEncoder()
            let _ = try encoder.encode(urls)

        } catch {
            XCTFail("it should not come here")
        }

    }

     func testDecode() {

        let jsonString = """
        {
            "url" : "url",
            "avatar_url": "avatar",
            "html_url": "html",
            "followers_url": "followers",
            "following_url": "following",
            "gists_url": "gists",
            "repos_url": "repos" 
        }
        """.data(using: .utf8)!

        do {

            let decoder = JSONDecoder()
            let _ = try decoder.decode(GitHubUserUrls.self , from: jsonString)

        } catch {
            XCTFail("it should not come here")
        }

    }


    static var allTests = [
        ("testEncode", testEncode),
        ("testDecode" , testDecode)
    ]
}
