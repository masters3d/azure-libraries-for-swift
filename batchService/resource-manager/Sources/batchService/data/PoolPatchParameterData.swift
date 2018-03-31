// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PoolPatchParameterData : PoolPatchParameterProtocol {
    public var startTask: StartTaskProtocol?
    public var certificateReferences: [CertificateReferenceProtocol?]?
    public var applicationPackageReferences: [ApplicationPackageReferenceProtocol?]?
    public var metadata: [MetadataItemProtocol?]?

        enum CodingKeys: String, CodingKey {case startTask = "startTask"
        case certificateReferences = "certificateReferences"
        case applicationPackageReferences = "applicationPackageReferences"
        case metadata = "metadata"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.startTask) {
        self.startTask = try container.decode(StartTaskData?.self, forKey: .startTask)
    }
    if container.contains(.certificateReferences) {
        self.certificateReferences = try container.decode([CertificateReferenceData?]?.self, forKey: .certificateReferences)
    }
    if container.contains(.applicationPackageReferences) {
        self.applicationPackageReferences = try container.decode([ApplicationPackageReferenceData?]?.self, forKey: .applicationPackageReferences)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([MetadataItemData?]?.self, forKey: .metadata)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.startTask != nil {try container.encode(self.startTask as! StartTaskData?, forKey: .startTask)}
    if self.certificateReferences != nil {try container.encode(self.certificateReferences as! [CertificateReferenceData?]?, forKey: .certificateReferences)}
    if self.applicationPackageReferences != nil {try container.encode(self.applicationPackageReferences as! [ApplicationPackageReferenceData?]?, forKey: .applicationPackageReferences)}
    if self.metadata != nil {try container.encode(self.metadata as! [MetadataItemData?]?, forKey: .metadata)}
  }
}

extension DataFactory {
  public static func createPoolPatchParameterProtocol() -> PoolPatchParameterProtocol {
    return PoolPatchParameterData()
  }
}
