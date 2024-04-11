//
//  VideoPlayerView.swift
//  checking
//
//  Created by Devansh Agarwal on 04/02/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    var videoFileName: String
    
       var videoFileExtension: String
       var alpha: CGFloat

       func makeUIViewController(context: UIViewControllerRepresentableContext<VideoPlayerView>) -> AVPlayerViewController {
           let playerViewController = AVPlayerViewController()

           if let videoURL = Bundle.main.url(forResource: videoFileName, withExtension: videoFileExtension) {
               playerViewController.player = AVPlayer(url: videoURL)
           }

           // Set transparency
           playerViewController.view.alpha = alpha

           return playerViewController
       }

       func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<VideoPlayerView>) {
           // Update if needed
       }
    }
    

