// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DscReportErrorProtocol is definition of the dsc node report error type.
public protocol DscReportErrorProtocol : Codable {
     var errorSource: String? { get set }
     var resourceId: String? { get set }
     var errorCode: String? { get set }
     var errorMessage: String? { get set }
     var locale: String? { get set }
     var errorDetails: String? { get set }
}
