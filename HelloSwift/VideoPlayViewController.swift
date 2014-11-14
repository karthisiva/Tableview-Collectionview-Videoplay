//
//  VideoPlayViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/13/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit
import MediaPlayer
class VideoPlayViewController: UIViewController {
    var moviePlayer:MPMoviePlayerController!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPlayer()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
func setUpPlayer()
{
   
    //presenting MPMoviePlayerViewController
//    var url:NSURL = NSURL(string: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")
//    
//    let myPlayer = MPMoviePlayerViewController(contentURL: url)
//    myPlayer.moviePlayer.repeatMode = .None
//    
//    presentMoviePlayerViewControllerAnimated(myPlayer)
    
    
    //adding MPMoviePlayerController to current viewcontroller

    var url:NSURL = NSURL(string: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")
    moviePlayer = MPMoviePlayerController(contentURL:url)
   moviePlayer.view.frame = UIScreen.mainScreen().bounds
   self.view.addSubview(moviePlayer.view)
   moviePlayer.setFullscreen(true, animated: true)
   moviePlayer.prepareToPlay()
   moviePlayer.play()
   moviePlayer.controlStyle = MPMovieControlStyle.Embedded
   moviePlayer.movieSourceType=MPMovieSourceType.Streaming
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
