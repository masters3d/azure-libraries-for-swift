// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct BlockData : BlockProtocol {
    public var name: String?
    public var size: Int32?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case size = "size"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.name) {
        name = try container.decode(String.self, forKey: .name)
    }
    if container.contains(.size) {
        size = try container.decode(Int32.self, forKey: .size)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.name != nil { try container.encode(name, forKey: .name) }
    if self.size != nil { try container.encode(size, forKey: .size) }
  }
}

extension DataFactory {
  public static func createBlockProtocol() -> BlockProtocol {
    return BlockData()
  }
}
