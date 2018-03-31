// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InMageDisableProtectionProviderSpecificInputData : InMageDisableProtectionProviderSpecificInputProtocol, DisableProtectionProviderSpecificInputProtocol {
    public var replicaVmDeletionStatus: String?

        enum CodingKeys: String, CodingKey {case replicaVmDeletionStatus = "replicaVmDeletionStatus"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.replicaVmDeletionStatus) {
        self.replicaVmDeletionStatus = try container.decode(String?.self, forKey: .replicaVmDeletionStatus)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.replicaVmDeletionStatus != nil { try container.encode(self.replicaVmDeletionStatus, forKey: .replicaVmDeletionStatus) }
  }
}

extension DataFactory {
  public static func createInMageDisableProtectionProviderSpecificInputProtocol() -> InMageDisableProtectionProviderSpecificInputProtocol {
    return InMageDisableProtectionProviderSpecificInputData()
  }
}
