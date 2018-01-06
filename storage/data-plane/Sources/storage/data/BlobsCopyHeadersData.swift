// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct BlobsCopyHeadersData : BlobsCopyHeadersProtocol {
    public var eTag: String?
    public var lastModified: String?
    public var requestId: String?
    public var version: String?
    public var date: Date?
    public var copyId: String?
    public var copyStatus: CopyStatusType?

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case lastModified = "Last-Modified"
        case requestId = "x-ms-request-id"
        case version = "x-ms-version"
        case date = "Date"
        case copyId = "x-ms-copy-id"
        case copyStatus = "x-ms-copy-status"
    }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.eTag) {
        eTag = try container.decode(String.self, forKey: .eTag)
    }
    if container.contains(.lastModified) {
        lastModified = try container.decode(String.self, forKey: .lastModified)
    }
    if container.contains(.requestId) {
        requestId = try container.decode(String.self, forKey: .requestId)
    }
    if container.contains(.version) {
        version = try container.decode(String.self, forKey: .version)
    }
    if container.contains(.date) {
        date = try container.decode(Date.self, forKey: .date)
    }
    if container.contains(.copyId) {
        copyId = try container.decode(String.self, forKey: .copyId)
    }
    if container.contains(.copyStatus) {
        copyStatus = try container.decode(CopyStatusType?.self, forKey: .copyStatus)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.eTag != nil {try container.encode(eTag, forKey: .eTag)}
    if self.lastModified != nil {try container.encode(lastModified, forKey: .lastModified)}
    if self.requestId != nil {try container.encode(requestId, forKey: .requestId)}
    if self.version != nil {try container.encode(version, forKey: .version)}
    if self.date != nil {try container.encode(date, forKey: .date)}
    if self.copyId != nil {try container.encode(copyId, forKey: .copyId)}
    if self.copyStatus != nil {try container.encode(copyStatus, forKey: .copyStatus)}
  }
}

extension DataFactory {
  public static func createBlobsCopyHeadersProtocol() -> BlobsCopyHeadersProtocol {
    return BlobsCopyHeadersData()
  }
}