import SwiftUI

struct ContentView: View {
    @State private var swift: String = "  I want to learn : "
    @State private var selectedButton: String? = nil
    @FocusState private var isInputActive: Bool // حالة التركيز لحقل الإدخال

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()

                VStack {
                    VStack(spacing: 0) {
                        ZStack {
                            Circle()
                                .fill(Color("gray b"))
                                .frame(width: 170, height: 200) // Gray circle

                            Text("🔥")
                                .font(.system(size: 80)) // Flame emoji
                        }
                        .padding(.top, 100)

                        VStack(alignment: .leading) {
                            Text("  Hello Learner!")
                                .font(.title)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.top, 20)

                            Text("  This app will help you learn everyday")
                                .font(.system(size: 17))
                                .font(.subheadline)
                                .foregroundColor(Color("gray b"))
                                .bold()

                            Text(swift)
                                .font(.system(size: 20))
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.top, 8)

                            TextField("swift", text: $swift)
                                .foregroundColor(.gray)
                                .padding(.top, 8)
                                .focused($isInputActive)
                                .onAppear {
                                    isInputActive = true
                                }

                            Text("  I want to learn it in a ")
                                .font(.system(size: 20))
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .bold()

                            HStack(spacing: 10) {
                                Button(action: {
                                    selectedButton = "Week"
                                }) {
                                    Text("Week")
                                        .foregroundColor(selectedButton == "Week" ? .black : .orange)
                                        .bold()
                                        .padding()
                                        .background(selectedButton == "Week" ? Color.orange : Color("gray b"))
                                        .cornerRadius(10)
                                }

                                Button(action: {
                                    selectedButton = "Month"
                                }) {
                                    Text("Month")
                                        .foregroundColor(selectedButton == "Month" ? .black : .orange)
                                        .bold()
                                        .padding()
                                        .background(selectedButton == "Month" ? Color.orange : Color("gray b"))
                                        .cornerRadius(10)
                                }

                                Button(action: {
                                    selectedButton = "Year"
                                }) {
                                    Text("Year")
                                        .foregroundColor(selectedButton == "Year" ? .black : .orange)
                                        .bold()
                                        .padding()
                                        .background(selectedButton == "Year" ? Color.orange : Color("gray b"))
                                        .cornerRadius(10)
                                }
                            }
                            .padding(.leading, 20)
                        }
                        .padding(.top, 20)

                        HStack {
                            Spacer()

                            NavigationLink(destination: TryCode().navigationBarBackButtonHidden(true)) {
                                Text("Start")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color.orange)
                                    .cornerRadius(10)
                            }

                            Spacer()
                        }
                        .padding(.top, 20)

                        Spacer()
                    }
                    .padding(.top, -40)
                }
            }
        }
    }
}





///////////////////////////////////////////////////////////////////////////////////////////////////
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TryCode: View {
    @State private var isBrown = false
    @State private var isFrozen = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 175) {
                HStack {
                    Spacer()

                    NavigationLink(destination: SwiftUIView3()) { // رابط لصفحة SwiftUIView3
                        ZStack {
                            Circle()
                                .fill(Color("gray b"))
                                .frame(width: 60, height: 70) // Gray circle
                                .padding(.trailing, 40)

                            Text("🔥      ")
                                .font(.system(size: 30))
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.top, 20)

                VStack {
                    Button(action: {
                        if !isFrozen {
                            isBrown.toggle()
                        }
                    }) {
                        Circle()
                            .fill(isFrozen ? Color("darkblue") : (isBrown ? Color("brownColor") : Color.orange))
                            .frame(width: 400, height: 350)
                            .overlay(
                                Text(isFrozen ? "Day\n Freezed" : (isBrown ? "Learned\n Today" : "Log today \n as a learned"))
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title)
                                    .multilineTextAlignment(.center),
                                alignment: .center
                            )
                    }
                    .disabled(isBrown || isFrozen)
                    .padding()

                    HStack {
                        Spacer()

                        Button(action: {
                            if !isBrown {
                                isFrozen = true
                            }
                        }) {
                            Text("Freeze day")
                                .bold()
                                .padding()
                                .background(Color("baby blue color"))
                                .cornerRadius(10)
                        }
                        .disabled(isBrown || isFrozen)

                        Spacer()
                    }
                    .padding(.top, 20)

                    Spacer()
                }
                .padding()
            }
        }
    }
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct SwiftUIView3: View {
    @State private var swift: String = "I want to learn : "
    @State private var selectedButton: String? = nil // لتتبع الزر المحدد
    @Environment(\.presentationMode) var presentationMode // To manage navigation

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    // Back Button
                    HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss() // Dismiss the view
                        }) {
                            HStack {
                                Image(systemName: "chevron.left") // Apple-like back icon
                                    .foregroundColor(.orange)
                                    .font(.title) // Adjust size for better visibility
                                Text("Back") // Optional text next to the icon
                                    .foregroundColor(.orange)
                            }
                            .padding()
                            .background(Color.black) // Optional background color
                            .cornerRadius(10) // Add corner radius
                        }
                        
                        Spacer() // Add some space between buttons
                                            
                        
                        
                        
                        
                        
                        
                        Button(action: {
                            // Action for Update
                        }) {
                            HStack {
                                Image(systemName: "pencil") // Pencil icon for updating
                                    .foregroundColor(.orange)
                                    .font(.title) // Adjust size for better visibility
                                Text("Update") // Text next to the icon
                                    .foregroundColor(.orange)
                            }
                            .padding()
                            .cornerRadius(10) // Add corner radius
                        }
                    }
                    .padding(.bottom, 20) // Add some padding to the bottom
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("I want to learn:")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .bold()
                            
                            TextField("swift", text: $swift)
                                .foregroundColor(.gray)
                                .padding(.top, 1)
                        }
                    }
                    .padding()
                    
                    Text("I want to learn it in a ?")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    
                    HStack(spacing:10) {
                        Button(action: {
                            selectedButton = "Week" // تعيين الزر المحدد
                        }) {
                            Text("Week")
                                .foregroundColor(selectedButton == "Week" ? .black : .orange) // تغيير اللون حسب الحالة
                                .bold()
                                .padding()
                                .background(selectedButton == "Week" ? Color.orange : Color("gray b")) // تغيير الخلفية
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            selectedButton = "Month" // تعيين الزر المحدد
                        }) {
                            Text("Month")
                                .foregroundColor(selectedButton == "Month" ? .black : .orange) // تغيير اللون حسب الحالة
                                .bold()
                                .padding()
                                .background(selectedButton == "Month" ? Color.orange : Color("gray b")) // تغيير الخلفية
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            selectedButton = "Year" // تعيين الزر المحدد
                        }) {
                            Text("Year")
                                .foregroundColor(selectedButton == "Year" ? .black : .orange) // تغيير اللون حسب الحالة
                                .bold()
                                .padding()
                                .background(selectedButton == "Year" ? Color.orange : Color("gray b")) // تغيير الخلفية
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                }
                .padding(.top, -300)
            }
        }
    }
}

#Preview {
    SwiftUIView3()
}

#Preview {
    TryCode()
}
