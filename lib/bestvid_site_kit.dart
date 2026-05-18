/// Small URL helpers for BestVid.
///
/// BestVid is available at https://bestvid.net.
library;

const siteUrl = 'https://bestvid.net';
const siteName = 'BestVid';

/// Returns an absolute BestVid URL for [path].
String url([String path = '']) {
  final normalized = path.trim();
  if (normalized.isEmpty || normalized == '/') {
    return siteUrl;
  }

  return '$siteUrl/${normalized.replaceFirst(RegExp(r'^/+'), '')}';
}

/// Returns the BestVid search URL for [query].
String searchUrl(String query) {
  return '${url('/search')}?q=${Uri.encodeQueryComponent(query.trim()).replaceAll('%20', '+')}';
}
