// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct BlobPropertiesData : BlobPropertiesProtocol {
    public var lastModified: Date?
    public var etag: String?
    public var contentLength: Int32?
    public var contentType: String?
    public var contentEncoding: String?
    public var contentLanguage: String?
    public var contentMD5: String?
    public var contentDisposition: String?
    public var cacheControl: String?
    public var xMsBlobSequenceNumber: String?
    public var blobType: String?
    public var leaseStatus: LeaseStatusType?
    public var leaseState: LeaseStateType?
    public var leaseDuration: LeaseDurationType?
    public var copyId: String?
    public var copyStatus: CopyStatusType?
    public var copySource: String?
    public var copyProgress: String?
    public var copyCompletionTime: Date?
    public var copyStatusDescription: String?
    public var serverEncrypted: Bool?
    public var incrementalCopy: Bool?

    enum CodingKeys: String, CodingKey {
        case lastModified = "Last-Modified"
        case etag = "Etag"
        case contentLength = "Content-Length"
        case contentType = "Content-Type"
        case contentEncoding = "Content-Encoding"
        case contentLanguage = "Content-Language"
        case contentMD5 = "Content-MD5"
        case contentDisposition = "Content-Disposition"
        case cacheControl = "Cache-Control"
        case xMsBlobSequenceNumber = "x-ms-blob-sequence-number"
        case blobType = "BlobType"
        case leaseStatus = "LeaseStatus"
        case leaseState = "LeaseState"
        case leaseDuration = "LeaseDuration"
        case copyId = "CopyId"
        case copyStatus = "CopyStatus"
        case copySource = "CopySource"
        case copyProgress = "CopyProgress"
        case copyCompletionTime = "CopyCompletionTime"
        case copyStatusDescription = "CopyStatusDescription"
        case serverEncrypted = "ServerEncrypted"
        case incrementalCopy = "IncrementalCopy"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.lastModified) {
        lastModified = try container.decode(Date?.self, forKey: .lastModified)
    }
    if container.contains(.etag) {
        etag = try container.decode(String?.self, forKey: .etag)
    }
    if container.contains(.contentLength) {
        contentLength = try container.decode(Int32?.self, forKey: .contentLength)
    }
    if container.contains(.contentType) {
        contentType = try container.decode(String?.self, forKey: .contentType)
    }
    if container.contains(.contentEncoding) {
        contentEncoding = try container.decode(String?.self, forKey: .contentEncoding)
    }
    if container.contains(.contentLanguage) {
        contentLanguage = try container.decode(String?.self, forKey: .contentLanguage)
    }
    if container.contains(.contentMD5) {
        contentMD5 = try container.decode(String?.self, forKey: .contentMD5)
    }
    if container.contains(.contentDisposition) {
        contentDisposition = try container.decode(String?.self, forKey: .contentDisposition)
    }
    if container.contains(.cacheControl) {
        cacheControl = try container.decode(String?.self, forKey: .cacheControl)
    }
    if container.contains(.xMsBlobSequenceNumber) {
        xMsBlobSequenceNumber = try container.decode(String?.self, forKey: .xMsBlobSequenceNumber)
    }
    if container.contains(.blobType) {
        blobType = try container.decode(String?.self, forKey: .blobType)
    }
    if container.contains(.leaseStatus) {
        leaseStatus = try container.decode(LeaseStatusType?.self, forKey: .leaseStatus)
    }
    if container.contains(.leaseState) {
        leaseState = try container.decode(LeaseStateType?.self, forKey: .leaseState)
    }
    if container.contains(.leaseDuration) {
        leaseDuration = try container.decode(LeaseDurationType?.self, forKey: .leaseDuration)
    }
    if container.contains(.copyId) {
        copyId = try container.decode(String?.self, forKey: .copyId)
    }
    if container.contains(.copyStatus) {
        copyStatus = try container.decode(CopyStatusType?.self, forKey: .copyStatus)
    }
    if container.contains(.copySource) {
        copySource = try container.decode(String?.self, forKey: .copySource)
    }
    if container.contains(.copyProgress) {
        copyProgress = try container.decode(String?.self, forKey: .copyProgress)
    }
    if container.contains(.copyCompletionTime) {
        copyCompletionTime = try container.decode(Date?.self, forKey: .copyCompletionTime)
    }
    if container.contains(.copyStatusDescription) {
        copyStatusDescription = try container.decode(String?.self, forKey: .copyStatusDescription)
    }
    if container.contains(.serverEncrypted) {
        serverEncrypted = try container.decode(Bool?.self, forKey: .serverEncrypted)
    }
    if container.contains(.incrementalCopy) {
        incrementalCopy = try container.decode(Bool?.self, forKey: .incrementalCopy)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.lastModified != nil { try container.encode(lastModified, forKey: .lastModified) }
    if self.etag != nil { try container.encode(etag, forKey: .etag) }
    if self.contentLength != nil { try container.encode(contentLength, forKey: .contentLength) }
    if self.contentType != nil { try container.encode(contentType, forKey: .contentType) }
    if self.contentEncoding != nil { try container.encode(contentEncoding, forKey: .contentEncoding) }
    if self.contentLanguage != nil { try container.encode(contentLanguage, forKey: .contentLanguage) }
    if self.contentMD5 != nil { try container.encode(contentMD5, forKey: .contentMD5) }
    if self.contentDisposition != nil { try container.encode(contentDisposition, forKey: .contentDisposition) }
    if self.cacheControl != nil { try container.encode(cacheControl, forKey: .cacheControl) }
    if self.xMsBlobSequenceNumber != nil { try container.encode(xMsBlobSequenceNumber, forKey: .xMsBlobSequenceNumber) }
    if self.blobType != nil { try container.encode(blobType, forKey: .blobType) }
    if self.leaseStatus != nil { try container.encode(leaseStatus, forKey: .leaseStatus) }
    if self.leaseState != nil { try container.encode(leaseState, forKey: .leaseState) }
    if self.leaseDuration != nil { try container.encode(leaseDuration, forKey: .leaseDuration) }
    if self.copyId != nil { try container.encode(copyId, forKey: .copyId) }
    if self.copyStatus != nil { try container.encode(copyStatus, forKey: .copyStatus) }
    if self.copySource != nil { try container.encode(copySource, forKey: .copySource) }
    if self.copyProgress != nil { try container.encode(copyProgress, forKey: .copyProgress) }
    if self.copyCompletionTime != nil { try container.encode(copyCompletionTime, forKey: .copyCompletionTime) }
    if self.copyStatusDescription != nil { try container.encode(copyStatusDescription, forKey: .copyStatusDescription) }
    if self.serverEncrypted != nil { try container.encode(serverEncrypted, forKey: .serverEncrypted) }
    if self.incrementalCopy != nil { try container.encode(incrementalCopy, forKey: .incrementalCopy) }
  }
}

extension DataFactory {
  public static func createBlobPropertiesProtocol() -> BlobPropertiesProtocol {
    return BlobPropertiesData()
  }
}
