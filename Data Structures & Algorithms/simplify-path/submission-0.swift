class Solution {
    func simplifyPath(_ path: String) -> String {
var paths = path.split(separator: "/")
var stack: [String] = []

for path in paths {
    let part = String(path)
    if part == ".." {
        if !stack.isEmpty {
            stack.removeLast()
        }
    } else if part != "." && part != "" {
        stack.append(part)
    }
}
return "/" + stack.joined(separator: "/")

    }
}
