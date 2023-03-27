
import SwiftUI

struct ContentView: View {
    
    private let songList: [String] = ["Test1", "Test2", "Test3"]
    private let itemColor = Color("background-300-light")
    
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        ZStack {
            Color("background-default").ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: onMenuButton){
                        Image(systemName: "list.bullet")
                        Text("Menu")
                    }
                    .padding(.trailing, 16)
                    .foregroundColor(itemColor)
                    Text("Soundboard 2")
                        .font(.title).foregroundColor(itemColor)
                    Button(action: onStopAllSounds){
                        HStack(alignment: .center, spacing: 5.0) {
                            Image(systemName: "stop.fill")
                            Text("Stop All")
                        }
                    }
                    .foregroundColor(.red)
                    .padding(.leading, 16)
                }
                Divider()
                List(songList, id: \.self){ song in
                    Button(action: onSongClicked(songTitle: song)){
                        HStack{
                            Image(systemName: "music.note")
                            Text(song)
                        }
                        .listRowBackground(Color("background-300"))
                        .padding(.vertical, 6)
                        .foregroundColor(itemColor)
                    }
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
    
    func onMenuButton(){
        presentSideMenu.toggle()
    }
    
    func onStopAllSounds(){
        
    }
    
    func onSongClicked(songTitle: String) -> () -> (){
        return{
            print("Now playing: \(songTitle)")
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(presentSideMenu: .constant(false))
    }
}

