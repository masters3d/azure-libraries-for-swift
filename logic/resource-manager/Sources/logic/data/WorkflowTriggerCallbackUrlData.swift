// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WorkflowTriggerCallbackUrlData : WorkflowTriggerCallbackUrlProtocol {
    public var value: String?
    public var method: String?
    public var basePath: String?
    public var relativePath: String?
    public var relativePathParameters: [String]?
    public var queries: WorkflowTriggerListCallbackUrlQueriesProtocol?

        enum CodingKeys: String, CodingKey {case value = "value"
        case method = "method"
        case basePath = "basePath"
        case relativePath = "relativePath"
        case relativePathParameters = "relativePathParameters"
        case queries = "queries"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.value) {
        self.value = try container.decode(String?.self, forKey: .value)
    }
    if container.contains(.method) {
        self.method = try container.decode(String?.self, forKey: .method)
    }
    if container.contains(.basePath) {
        self.basePath = try container.decode(String?.self, forKey: .basePath)
    }
    if container.contains(.relativePath) {
        self.relativePath = try container.decode(String?.self, forKey: .relativePath)
    }
    if container.contains(.relativePathParameters) {
        self.relativePathParameters = try container.decode([String]?.self, forKey: .relativePathParameters)
    }
    if container.contains(.queries) {
        self.queries = try container.decode(WorkflowTriggerListCallbackUrlQueriesData?.self, forKey: .queries)
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
    if self.value != nil { try container.encode(self.value, forKey: .value) }
    if self.method != nil { try container.encode(self.method, forKey: .method) }
    if self.basePath != nil { try container.encode(self.basePath, forKey: .basePath) }
    if self.relativePath != nil { try container.encode(self.relativePath, forKey: .relativePath) }
    if self.relativePathParameters != nil { try container.encode(self.relativePathParameters as! [String]?, forKey: .relativePathParameters) }
    if self.queries != nil { try container.encode(self.queries as! WorkflowTriggerListCallbackUrlQueriesData?, forKey: .queries) }
  }
}

extension DataFactory {
  public static func createWorkflowTriggerCallbackUrlProtocol() -> WorkflowTriggerCallbackUrlProtocol {
    return WorkflowTriggerCallbackUrlData()
  }
}
