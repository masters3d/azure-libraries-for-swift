// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct BlobsAppendBlockHeadersData : BlobsAppendBlockHeadersProtocol {
    public var eTag: String?
    public var lastModified: String?
    public var contentMD5: String?
    public var requestId: String?
    public var version: String?
    public var date: Date?
    public var blobAppendOffset: String?
    public var blobCommittedBlockCount: String?

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case lastModified = "Last-Modified"
        case contentMD5 = "Content-MD5"
        case requestId = "x-ms-request-id"
        case version = "x-ms-version"
        case date = "Date"
        case blobAppendOffset = "x-ms-blob-append-offset"
        case blobCommittedBlockCount = "x-ms-blob-committed-block-count"
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
    if container.contains(.contentMD5) {
        contentMD5 = try container.decode(String.self, forKey: .contentMD5)
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
    if container.contains(.blobAppendOffset) {
        blobAppendOffset = try container.decode(String.self, forKey: .blobAppendOffset)
    }
    if container.contains(.blobCommittedBlockCount) {
        blobCommittedBlockCount = try container.decode(String.self, forKey: .blobCommittedBlockCount)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.eTag != nil {try container.encode(eTag, forKey: .eTag)}
    if self.lastModified != nil {try container.encode(lastModified, forKey: .lastModified)}
    if self.contentMD5 != nil {try container.encode(contentMD5, forKey: .contentMD5)}
    if self.requestId != nil {try container.encode(requestId, forKey: .requestId)}
    if self.version != nil {try container.encode(version, forKey: .version)}
    if self.date != nil {try container.encode(date, forKey: .date)}
    if self.blobAppendOffset != nil {try container.encode(blobAppendOffset, forKey: .blobAppendOffset)}
    if self.blobCommittedBlockCount != nil {try container.encode(blobCommittedBlockCount, forKey: .blobCommittedBlockCount)}
  }
}

extension DataFactory {
  public static func createBlobsAppendBlockHeadersProtocol() -> BlobsAppendBlockHeadersProtocol {
    return BlobsAppendBlockHeadersData()
  }
}
