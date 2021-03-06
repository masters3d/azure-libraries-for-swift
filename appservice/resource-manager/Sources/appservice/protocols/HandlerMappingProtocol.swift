// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HandlerMappingProtocol is the IIS handler mappings used to define which handler processes HTTP requests with certain
// extension.
// For example, it is used to configure php-cgi.exe process to handle all HTTP requests with *.php extension.
public protocol HandlerMappingProtocol : Codable {
     var _extension: String? { get set }
     var scriptProcessor: String? { get set }
     var arguments: String? { get set }
}
