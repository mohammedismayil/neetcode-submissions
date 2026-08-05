class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
for i in 0..<board.count {
        var seen: Set<Character> = []
        for j in 0..<board.count {
            if seen.contains(board[i][j]) {
                return false
            }
            if board[i][j] != "." {
                seen.insert(board[i][j])
            }
            
        }
    }
    
    for i in 0..<board.count {
        var seen: Set<Character> = []
        for j in 0..<board.count {
            if seen.contains(board[j][i]) {
                return false
            }
            if board[j][i] != "." {
                seen.insert(board[j][i])
            }
            
        }
    }
    for i in 0..<board.count {
        var seen: Set<Character> = []
        for j in 0..<3 {
            for k in 0..<3 {
                let row = (i / 3) * 3 + j
                let column = (i % 3) * 3 + k
                if seen.contains(board[row][column]) {
                    return false
                }
                if board[row][column] != "." {
                    seen.insert(board[row][column])
                }
            }
        }
    }
    return true
    }
}
