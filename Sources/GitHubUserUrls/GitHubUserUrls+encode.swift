import Foundation

extension GitHubUserUrls: Encodable {
    
    public func encode(to encoder: Encoder) throws {
       
        var container = encoder.container(keyedBy: GitHubUserUrlKeys.self)
        try container.encode(url, forKey: .url)
        try container.encode(avatar, forKey: .avatar)
        try container.encode(html, forKey: .html)
        try container.encode(followers, forKey: .followers)
        try container.encode(following, forKey: .following)
        try container.encode(gists, forKey: .gists)
        try container.encode(repos, forKey: .repos)
    
    }
}