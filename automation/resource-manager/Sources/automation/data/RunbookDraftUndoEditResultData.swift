// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunbookDraftUndoEditResultData : RunbookDraftUndoEditResultProtocol {
    public var statusCode: HttpStatusCodeEnum?
    public var requestId: String?

        enum CodingKeys: String, CodingKey {case statusCode = "statusCode"
        case requestId = "requestId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.statusCode) {
        self.statusCode = try container.decode(HttpStatusCodeEnum?.self, forKey: .statusCode)
    }
    if container.contains(.requestId) {
        self.requestId = try container.decode(String?.self, forKey: .requestId)
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
    if self.statusCode != nil {try container.encode(self.statusCode, forKey: .statusCode)}
    if self.requestId != nil {try container.encode(self.requestId, forKey: .requestId)}
  }
}

extension DataFactory {
  public static func createRunbookDraftUndoEditResultProtocol() -> RunbookDraftUndoEditResultProtocol {
    return RunbookDraftUndoEditResultData()
  }
}
