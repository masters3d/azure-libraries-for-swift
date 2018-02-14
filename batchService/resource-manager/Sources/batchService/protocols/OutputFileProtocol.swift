// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OutputFileProtocol is
public protocol OutputFileProtocol : Codable {
     var filePattern: String { get set }
     var destination: OutputFileDestinationProtocol { get set }
     var uploadOptions: OutputFileUploadOptionsProtocol { get set }
}
