// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct PageBlobsGetPageRangesHeadersData : PageBlobsGetPageRangesHeadersProtocol {
    public var lastModified: String?
    public var eTag: String?
    public var blobContentLength: Int32?
    public var requestId: String?
    public var version: String?
    public var date: Date?

    enum CodingKeys: String, CodingKey {
        case lastModified = "Last-Modified"
        case eTag = "ETag"
        case blobContentLength = "x-ms-blob-content-length"
        case requestId = "x-ms-request-id"
        case version = "x-ms-version"
        case date = "Date"
    }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.lastModified) {
        lastModified = try container.decode(String.self, forKey: .lastModified)
    }
    if container.contains(.eTag) {
        eTag = try container.decode(String.self, forKey: .eTag)
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
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.lastModified != nil {try container.encode(lastModified, forKey: .lastModified)}
    if self.eTag != nil {try container.encode(eTag, forKey: .eTag)}
    if self.blobContentLength != nil {try container.encode(blobContentLength, forKey: .blobContentLength)}
    if self.requestId != nil {try container.encode(requestId, forKey: .requestId)}
    if self.version != nil {try container.encode(version, forKey: .version)}
    if self.date != nil {try container.encode(date, forKey: .date)}
  }
}

extension DataFactory {
  public static func createPageBlobsGetPageRangesHeadersProtocol() -> PageBlobsGetPageRangesHeadersProtocol {
    return PageBlobsGetPageRangesHeadersData()
  }
}
