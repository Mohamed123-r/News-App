import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../models/article_modle.dart';

class ArticalPage extends StatefulWidget {
  const ArticalPage({
    super.key,
    required this.uri,
  });

  final String uri;

  @override
  State<ArticalPage> createState() => _ArticalPageState();
}

class _ArticalPageState extends State<ArticalPage> {
  late final WebViewController _controller;

  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.uri));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WebViewWidget(controller: _controller)),
    );
  }
}
