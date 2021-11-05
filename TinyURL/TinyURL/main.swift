// [Encode and Decode TinyURL](https://leetcode.com/problems/encode-and-decode-tinyurl/)

class Codec {
    var storage: [String: String] = [:]

    func encode(_ longUrl: String) -> String {
        let hash = longUrl.hashValue
        let newNumString = String(hash % 73)
        storage[newNumString] = longUrl
        return newNumString
    }

    func decode(_ shortUrl: String) -> String {
        if let result = storage[shortUrl] {
            return result
        } else {
            return ""
        }
    }
}

let urlString = "https://leetcode.com/problems/design-tinyurl"

let obj = Codec()
let s = obj.encode(urlString)
let ans = obj.decode(s)
assert(urlString == ans)

print("Tests passed!")

/*
 Input: url = "https://leetcode.com/problems/design-tinyurl"
 Output: "https://leetcode.com/problems/design-tinyurl"

 Explanation:
 Solution obj = new Solution();
 string tiny = obj.encode(url); // returns the encoded tiny url.
 string ans = obj.decode(tiny); // returns the original url after deconding it.
 */
