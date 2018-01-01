// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct StorageAccountRegenerateKeyParametersData : StorageAccountRegenerateKeyParametersProtocol {
    public var keyName: String

    enum CodingKeys: String, CodingKey {
        case keyName = "keyName"
    }

  public init(keyName: String)  {
    self.keyName = keyName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    keyName = try container.decode(String.self, forKey: .keyName)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(keyName, forKey: .keyName)
  }
}

extension DataFactory {
  public static func createStorageAccountRegenerateKeyParametersProtocol(keyName: String) -> StorageAccountRegenerateKeyParametersProtocol {
    return StorageAccountRegenerateKeyParametersData(keyName: keyName)
  }
}
