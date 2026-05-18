package net.bestvid.sitekit;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

final class BestVidLinksTest {
    @Test
    void buildsAbsoluteUrls() {
        assertEquals("https://bestvid.net", BestVidLinks.url(""));
        assertEquals("https://bestvid.net", BestVidLinks.url("/"));
        assertEquals("https://bestvid.net/tools/ai-video", BestVidLinks.url("/tools/ai-video"));
        assertEquals("https://bestvid.net/tools/ai-video", BestVidLinks.url("tools/ai-video"));
    }

    @Test
    void buildsSearchUrls() {
        assertEquals("https://bestvid.net/search?q=ai+video+generator", BestVidLinks.searchUrl(" ai video generator "));
    }
}
