import SwiftUI

struct ContentView: View {
    @State private var swift: String = "I want to learn : "
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("🔥")
                    .font(.system(size: 80))
                    .padding(.top, 20)
                
                Text("Hello Learner!")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.top, 20)
                
                Text("This app will help you learn everyday")
                    .font(.subheadline)
                    .foregroundColor(Color("gray b"))
                    .bold()
                
                Text((swift))
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.top, 8)
                
                TextField("swift", text: $swift)
                    .foregroundColor(.gray)
                    .padding(.top, 8)
                
                
                Text("I want to learn it in a ")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.top, 8)
                
                HStack(spacing: 20) {
                    Button(action: {
                        
                    }) {
                        Text("Week")
                            .foregroundColor(.orange)
                            .bold()
                            .padding()
                            .background(Color("gray b"))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Month")
                            .foregroundColor(.orange)
                            .bold()
                            .padding()
                            .background(Color("gray b"))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Year")
                            .foregroundColor(.orange)
                            .bold()
                            .padding()
                            .background(Color("gray b"))
                            .cornerRadius(10)
                    }
                }
                .padding(.top, 20)
                
                Button(action: {
                    
                }) {
                    Text("Start")
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
