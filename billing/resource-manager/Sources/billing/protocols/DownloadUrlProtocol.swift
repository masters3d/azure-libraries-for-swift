// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DownloadUrlProtocol is a secure URL that can be used to download a PDF invoice until the URL expires.
public protocol DownloadUrlProtocol : Codable {
     var expiryTime: Date? { get set }
     var url: String? { get set }
}
