import 'package:bestvid_site_kit/bestvid_site_kit.dart';
import 'package:test/test.dart';

void main() {
  test('builds absolute urls', () {
    expect(url(), equals('https://bestvid.net'));
    expect(url('/'), equals('https://bestvid.net'));
    expect(url('/tools/ai-video'), equals('https://bestvid.net/tools/ai-video'));
    expect(url('tools/ai-video'), equals('https://bestvid.net/tools/ai-video'));
  });

  test('builds search urls', () {
    expect(
      searchUrl(' ai video generator '),
      equals('https://bestvid.net/search?q=ai+video+generator'),
    );
  });
}
