// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StorageContainerListResultProtocol is the list of blob containers associated with the storage account attached to
// the Data Lake Analytics account.
public protocol StorageContainerListResultProtocol : Codable {
     var value: [StorageContainerProtocol?]? { get set }
     var _nextLink: String? { get set }
}