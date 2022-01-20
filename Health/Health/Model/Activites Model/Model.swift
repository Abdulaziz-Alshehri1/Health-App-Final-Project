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
    let v11 = Video(thumbnailFileName: "v11", thumbImage: "v11")
    let v12 = Video(thumbnailFileName: "v12", thumbImage: "v12")
    let v13 = Video(thumbnailFileName: "v13", thumbImage: "v13")
    let v14 = Video(thumbnailFileName: "v14", thumbImage: "v14")
    let v15 = Video(thumbnailFileName: "v15", thumbImage: "v15")
    let v16 = Video(thumbnailFileName: "v16", thumbImage: "v16")
    let v17 = Video(thumbnailFileName: "v17", thumbImage: "v17")
    let v18 = Video(thumbnailFileName: "v18", thumbImage: "v18")
    let v19 = Video(thumbnailFileName: "v19", thumbImage: "v19")
    let v20 = Video(thumbnailFileName: "v20", thumbImage: "v20")
    let v21 = Video(thumbnailFileName: "v21", thumbImage: "v21")
    return [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13,v14,v15, v16, v17, v18, v19, v20, v21]
}
}
