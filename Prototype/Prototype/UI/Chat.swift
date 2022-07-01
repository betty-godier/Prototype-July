//
//      2022  Betty.dev 
//

import SwiftUI

struct Chat: View {
    @StateObject var chatManager = ChatManager()

    var body: some View {
        VStack(spacing: 10) {
            imageChat
            testChat
            buttonStartChat
        }
        .padding(.all)
    }
    
    @ViewBuilder
    private var imageChat: some View {
        Image(systemName: "bubble.left.and.bubble.right.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(alignment: .center)
            .padding(40)
    }
    
    @ViewBuilder
    private var testChat: some View {
        Text("Take a live-chat, messaging, and bots for customer service to your customers wherever they are.")
            .font(.title2)
            .multilineTextAlignment(.center)
            .padding(.all)
    }
    
    @ViewBuilder
    private var buttonStartChat: some View {
        Button("Start chat support") { chatManager.startChat() }
            .padding(.all)
            .font(.title2)
            .buttonStyle(.borderedProminent)
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
