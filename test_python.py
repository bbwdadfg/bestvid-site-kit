import unittest

import bestvid_site_kit as bestvid


class BestVidSiteKitTest(unittest.TestCase):
    def test_constants(self):
        self.assertEqual(bestvid.SITE_URL, "https://bestvid.net")
        self.assertEqual(bestvid.SITE_NAME, "BestVid")

    def test_url(self):
        self.assertEqual(bestvid.url(), "https://bestvid.net")
        self.assertEqual(bestvid.url(""), "https://bestvid.net")
        self.assertEqual(bestvid.url("/"), "https://bestvid.net")
        self.assertEqual(bestvid.url("/tools/ai-video"), "https://bestvid.net/tools/ai-video")
        self.assertEqual(bestvid.url("tools/ai-video"), "https://bestvid.net/tools/ai-video")
        self.assertEqual(bestvid.url(" /tools/ai-video "), "https://bestvid.net/tools/ai-video")

    def test_search_url(self):
        self.assertEqual(
            bestvid.search_url(" ai video generator "),
            "https://bestvid.net/search?q=ai+video+generator",
        )
        self.assertEqual(bestvid.search_url("video/editor"), "https://bestvid.net/search?q=video%2Feditor")


if __name__ == "__main__":
    unittest.main()
