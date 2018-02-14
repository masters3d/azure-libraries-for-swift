// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FileSystemHttpLogsConfigProtocol is http logs to file system configuration.
public protocol FileSystemHttpLogsConfigProtocol : Codable {
     var retentionInMb: Int32? { get set }
     var retentionInDays: Int32? { get set }
     var enabled: Bool? { get set }
}
