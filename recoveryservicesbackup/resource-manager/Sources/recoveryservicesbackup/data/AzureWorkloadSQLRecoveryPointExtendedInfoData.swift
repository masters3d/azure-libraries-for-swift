// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureWorkloadSQLRecoveryPointExtendedInfoData : AzureWorkloadSQLRecoveryPointExtendedInfoProtocol {
    public var dataDirectoryTimeInUTC: Date?
    public var dataDirectoryPaths: [SQLDataDirectoryProtocol?]?

        enum CodingKeys: String, CodingKey {case dataDirectoryTimeInUTC = "dataDirectoryTimeInUTC"
        case dataDirectoryPaths = "dataDirectoryPaths"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dataDirectoryTimeInUTC) {
        self.dataDirectoryTimeInUTC = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .dataDirectoryTimeInUTC)), format: .dateTime)
    }
    if container.contains(.dataDirectoryPaths) {
        self.dataDirectoryPaths = try container.decode([SQLDataDirectoryData?]?.self, forKey: .dataDirectoryPaths)
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
    if self.dataDirectoryTimeInUTC != nil {
        try container.encode(DateConverter.toString(date: self.dataDirectoryTimeInUTC!, format: .dateTime), forKey: .dataDirectoryTimeInUTC)
    }
    if self.dataDirectoryPaths != nil {try container.encode(self.dataDirectoryPaths as! [SQLDataDirectoryData?]?, forKey: .dataDirectoryPaths)}
  }
}

extension DataFactory {
  public static func createAzureWorkloadSQLRecoveryPointExtendedInfoProtocol() -> AzureWorkloadSQLRecoveryPointExtendedInfoProtocol {
    return AzureWorkloadSQLRecoveryPointExtendedInfoData()
  }
}
