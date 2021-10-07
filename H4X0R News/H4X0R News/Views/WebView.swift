//
//  WebView.swift
//  H4X0R News
//
//  Created by Hung Yu Liao on 2021/9/20.
//

import SwiftUI
import WebKit //Web

struct WebView: UIViewRepresentable {
    // makeUIView&updateUIView 是預設兩個要做的方法假如有繼承這協定 UIViewRepresentable
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeSting = urlString {
            if let url = URL(string: safeSting) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
