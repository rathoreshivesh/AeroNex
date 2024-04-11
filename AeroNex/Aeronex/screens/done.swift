import SwiftUI

struct doneView: View {
    @State private var showDonePage = true
    @Binding var pageState: String
    @Binding var previousPageState: String
    func homeSwitch() async{
        try? await Task.sleep(nanoseconds: 1_000_000)
        withAnimation{
            pageState = "HomePage"
        }
    }
    var body: some View {
        ZStack {
            if showDonePage {
                done()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation {
                                showDonePage = false
                                async {
                                    await homeSwitch()
                                }
                            }
                        }
                    }
            }
        }
    }
}
struct done: View {
    var body: some View {
        VStack {
            Image("ic-done")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Done")
                .bold()
                .font(.system(size: 24))
                .foregroundColor(Color(red: 0.12, green: 0.14, blue: 0.19))
        }
        .padding(0)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct PreviewDone: View {
    @State var pageState = "signupPage"
   
    var body: some View {
        doneView(pageState: $pageState, previousPageState: $pageState)
    }
}

#Preview {
    PreviewDone()
}
