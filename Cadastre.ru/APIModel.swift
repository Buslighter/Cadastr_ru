//
//  APIModel.swift
//  Cadastre.ru
//
//  Created by gleba on 16.11.2022.
//

import Foundation
// MARK: - News
struct News: Codable {
    let request: Request
//    let error: JSONNull?
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let id: String
    let type: Resource
    let title, annotation, date, updated: String
    let color: String
    let url, originalURL: String
    let image, thumbnail: String

    enum CodingKeys: String, CodingKey {
        case id, type, title, annotation, date, updated, color, url
        case originalURL = "originalUrl"
        case image, thumbnail
    }
}

enum Resource: String, Codable {
    case news = "news"
}

// MARK: - Request
struct Request: Codable {
    let version: String
    let resource: Resource
//    let resourceID: JSONNull?
    let method: String
//    let parameters: [JSONAny]
    let userAuthKeyID: String

    enum CodingKeys: String, CodingKey {
        case version, resource
//        case resourceID = "resourceId"
        case method
//        , parameters
        case userAuthKeyID = "userAuthKeyId"
    }
}
