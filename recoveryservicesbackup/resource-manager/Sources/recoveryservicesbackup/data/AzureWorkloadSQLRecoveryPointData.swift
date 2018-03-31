// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureWorkloadSQLRecoveryPointData : AzureWorkloadSQLRecoveryPointProtocol, AzureWorkloadRecoveryPointProtocol, RecoveryPointProtocol {
    public var recoveryPointTimeInUTC: Date?
    public var type: RestorePointTypeEnum?
    public var extendedInfo: AzureWorkloadSQLRecoveryPointExtendedInfoProtocol?

        enum CodingKeys: String, CodingKey {case recoveryPointTimeInUTC = "recoveryPointTimeInUTC"
        case type = "type"
        case extendedInfo = "extendedInfo"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryPointTimeInUTC) {
        self.recoveryPointTimeInUTC = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .recoveryPointTimeInUTC)), format: .dateTime)
    }
    if container.contains(.type) {
        self.type = try container.decode(RestorePointTypeEnum?.self, forKey: .type)
    }
    if container.contains(.extendedInfo) {
        self.extendedInfo = try container.decode(AzureWorkloadSQLRecoveryPointExtendedInfoData?.self, forKey: .extendedInfo)
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
    if self.recoveryPointTimeInUTC != nil {
        try container.encode(DateConverter.toString(date: self.recoveryPointTimeInUTC!, format: .dateTime), forKey: .recoveryPointTimeInUTC)
    }
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.extendedInfo != nil {try container.encode(self.extendedInfo as! AzureWorkloadSQLRecoveryPointExtendedInfoData?, forKey: .extendedInfo)}
  }
}

extension DataFactory {
  public static func createAzureWorkloadSQLRecoveryPointProtocol() -> AzureWorkloadSQLRecoveryPointProtocol {
    return AzureWorkloadSQLRecoveryPointData()
  }
}
