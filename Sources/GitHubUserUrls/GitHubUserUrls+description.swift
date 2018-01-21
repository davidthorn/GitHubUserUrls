import Foundation

extension GitHubUserUrls: CustomStringConvertible {

    public var description: String {

        let d = """
            avatar = \(self.avatar)
            url = \(self.url)
            html = \(self.html)
            followers = \(followers)
            following = \(following)
            gists = \(gists)
            repos = \(repos)
        """

        return d

    }

}
