import Foundation

class Model {
    var contents: String?
    init(contents: String) {
        self.contents = contents
    }
    
    // 메모 리스트 셀에 표시할 데이터들의 배열
    static var contentsArr = [
        Model(contents: "첫번째 셀"),
        Model(contents: "두번째 셀")
    ]
}
