//
//  Model.swift
//  videoo
//
//  Created by Abdulaziz on 22/04/1443 AH.
//

import Foundation


struct Video {
    
    let thumbnailFileName: String
    let thumbImage: String



 static func fetchVideos() -> [Video] {
    
    let v1 = Video(thumbnailFileName: "v1", thumbImage: "v1")
    let v2 = Video(thumbnailFileName: "v2", thumbImage: "v2")
    let v3 = Video(thumbnailFileName: "v3", thumbImage: "v3")
    let v4 = Video(thumbnailFileName: "v4", thumbImage: "v4")
    let v5 = Video(thumbnailFileName: "v5", thumbImage: "v5")
    let v6 = Video(thumbnailFileName: "v6", thumbImage: "v6")
    let v7 = Video(thumbnailFileName: "v7", thumbImage: "v7")
    let v8 = Video(thumbnailFileName: "v8", thumbImage: "v8")
    let v9 = Video(thumbnailFileName: "v9", thumbImage: "v9")
    let v10 = Video(thumbnailFileName: "v10", thumbImage: "v10")
     
    
    return [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10]
}
}
