// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct EncryptionServicesData : EncryptionServicesProtocol {
    public var blob: EncryptionServiceProtocol?
    public var file: EncryptionServiceProtocol?
    public var table: EncryptionServiceProtocol?
    public var queue: EncryptionServiceProtocol?

    enum CodingKeys: String, CodingKey {
        case blob = "blob"
        case file = "file"
        case table = "table"
        case queue = "queue"
    }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.blob) {
        blob = try container.decode(EncryptionServiceData?.self, forKey: .blob)
    }
    if container.contains(.file) {
        file = try container.decode(EncryptionServiceData?.self, forKey: .file)
    }
    if container.contains(.table) {
        table = try container.decode(EncryptionServiceData?.self, forKey: .table)
    }
    if container.contains(.queue) {
        queue = try container.decode(EncryptionServiceData?.self, forKey: .queue)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.blob != nil {try container.encode(blob as! EncryptionServiceData?, forKey: .blob)}
    if self.file != nil {try container.encode(file as! EncryptionServiceData?, forKey: .file)}
    if self.table != nil {try container.encode(table as! EncryptionServiceData?, forKey: .table)}
    if self.queue != nil {try container.encode(queue as! EncryptionServiceData?, forKey: .queue)}
  }
}

extension DataFactory {
  public static func createEncryptionServicesProtocol() -> EncryptionServicesProtocol {
    return EncryptionServicesData()
  }
}
