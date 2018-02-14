// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SiteConfigurationSnapshotInfoCollectionProtocol is collection of metadata for the app configuration snapshots that
// can be restored.
public protocol SiteConfigurationSnapshotInfoCollectionProtocol : Codable {
     var value: [SiteConfigurationSnapshotInfoProtocol] { get set }
     var _nextLink: String? { get set }
}
