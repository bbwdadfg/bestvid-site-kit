package net.bestvid.sitekit;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public final class BestVidLinks {
    public static final String SITE_URL = "https://bestvid.net";
    public static final String SITE_NAME = "BestVid";

    private BestVidLinks() {
    }

    public static String url(String path) {
        String normalized = path == null ? "" : path.trim();

        if (normalized.isEmpty() || "/".equals(normalized)) {
            return SITE_URL;
        }

        return SITE_URL + "/" + stripLeadingSlashes(normalized);
    }

    public static String searchUrl(String query) {
        return url("/search") + "?q=" + encodeQuery(query == null ? "" : query.trim());
    }

    private static String stripLeadingSlashes(String value) {
        int index = 0;
        while (index < value.length() && value.charAt(index) == '/') {
            index++;
        }
        return value.substring(index);
    }

    private static String encodeQuery(String query) {
        try {
            return URLEncoder.encode(query, "UTF-8");
        } catch (UnsupportedEncodingException exception) {
            throw new IllegalStateException("UTF-8 is not supported", exception);
        }
    }
}
