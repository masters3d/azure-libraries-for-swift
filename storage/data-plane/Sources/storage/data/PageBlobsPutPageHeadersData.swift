// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct PageBlobsPutPageHeadersData : PageBlobsPutPageHeadersProtocol {
    public var eTag: String?
    public var lastModified: String?
    public var contentMD5: String?
    public var blobContentLength: Int32?
    public var requestId: String?
    public var version: String?
    public var date: Date?
    public var isServerEncrypted: Bool?

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case lastModified = "Last-Modified"
        case contentMD5 = "Content-MD5"
        case blobContentLength = "x-ms-blob-content-length"
        case requestId = "x-ms-request-id"
        case version = "x-ms-version"
        case date = "Date"
        case isServerEncrypted = "x-ms-request-server-encrypted"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.eTag) {
        eTag = try container.decode(String.self, forKey: .eTag)
    }
    if container.contains(.lastModified) {
        lastModified = try container.decode(String.self, forKey: .lastModified)
    }
    if container.contains(.contentMD5) {
        contentMD5 = try container.decode(String.self, forKey: .contentMD5)
    }
    if container.contains(.blobContentLength) {
        blobContentLength = try container.decode(Int32.self, forKey: .blobContentLength)
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
    if container.contains(.isServerEncrypted) {
        isServerEncrypted = try container.decode(Bool.self, forKey: .isServerEncrypted)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.eTag != nil { try container.encode(eTag, forKey: .eTag) }
    if self.lastModified != nil { try container.encode(lastModified, forKey: .lastModified) }
    if self.contentMD5 != nil { try container.encode(contentMD5, forKey: .contentMD5) }
    if self.blobContentLength != nil { try container.encode(blobContentLength, forKey: .blobContentLength) }
    if self.requestId != nil { try container.encode(requestId, forKey: .requestId) }
    if self.version != nil { try container.encode(version, forKey: .version) }
    if self.date != nil { try container.encode(date, forKey: .date) }
    if self.isServerEncrypted != nil { try container.encode(isServerEncrypted, forKey: .isServerEncrypted) }
  }
}

extension DataFactory {
  public static func createPageBlobsPutPageHeadersProtocol() -> PageBlobsPutPageHeadersProtocol {
    return PageBlobsPutPageHeadersData()
  }
}
