//
//  GameView.swift
//  BigSmallGame
//
//  Created by SHIH-YING PAN on 2021/5/17.
//

import SwiftUI

struct GameView: View {
   
    @StateObject var gameViewModel = GameViewModel()

    var body: some View {
        VStack {
            
            HStack(spacing: 100.0) {
                VStack {
                    Text("Player")
                    Text(gameViewModel.playerCard?.suit.rawValue ?? "?")
                }
                VStack {
                    Text("Computer")
                    Text(gameViewModel.computerCard?.suit.rawValue ?? "?")
                }
            }
            if let result = gameViewModel.result {
                Text(result == .win ? "Win " : "  " )
                    .font(.system(size: 100))
                
                Text(result == .lose ? "Lose " : "  " )
                    .font(.system(size: 100))
                
                Text(result == .draw ? "Draw " : "  " )
                    .font(.system(size: 100))
            }
            
            Button(action: {
                gameViewModel.play()
            }, label: {
                Text("Play")
            })
            
        }
        .font(.largeTitle)
        
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
