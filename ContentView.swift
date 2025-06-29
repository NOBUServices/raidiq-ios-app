import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // No update needed for now
    }
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://raid-iq.com")!)
            .edgesIgnoringSafeArea(.all)
    }
}
