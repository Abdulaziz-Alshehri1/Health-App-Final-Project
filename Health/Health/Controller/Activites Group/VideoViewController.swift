//
//  ViewController.swift
//  videoo
//
//  Created by Abdulaziz on 22/04/1443 AH.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var videos: [Video] = Video.fetchVideos()
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "Image-26")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at: 0)
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Vcell", for: indexPath) as! VideoCell
        let video = videos[indexPath.row]
        
        cell.video = video
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        playVideo(at: indexPath)
    }
    
    func playVideo(at indexPath: IndexPath){
        let selectedVideo = videos[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.thumbnailFileName, ofType: "MOV")
        let videoPathURL = URL(fileURLWithPath: videoPath ?? "")
        
        player = AVPlayer(url: videoPathURL)
        playerViewController.player = player
        
        self.present(playerViewController, animated: true, completion: nil)
    }
}




