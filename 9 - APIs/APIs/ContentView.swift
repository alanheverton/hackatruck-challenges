

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
                
        ZStack{
            Color.fundo
                .ignoresSafeArea()
                .frame(width:410, height:800)
                .scaledToFit()
            VStack{
                AsyncImage(url: URL(string: "https://tm.ibxk.com.br/2021/04/19/19165615261383.jpg")){ result in
                    result.image?
                        .resizable()
                        .frame(width:420, height: 250)
                        .ignoresSafeArea()
                }
                
                ScrollView(.vertical){
   
                    ForEach (viewModel.chars) { index in
                        HStack{
                            AsyncImage(url: URL(string: index.image!)){ img in
                                img.image?
                                    .resizable()
                                    .frame(width: 100, height: 140)
                                    .clipShape(Circle())
                                    .scaledToFit()
                                    .offset(x:20)
                            
                            }
                            
                            Text(index.name!)
                                .foregroundStyle(.white)
                                .offset(x:20)
                            
                            Spacer()
                            
                        }
                        
                    }
                    
                }
            }
        }
            .padding()
            .onAppear(){
                viewModel.fetch()
            }
        }
}
    
#Preview {
    ContentView()
}
