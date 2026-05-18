"use strict";

const SITE_URL = "https://bestvid.net";
const SITE_NAME = "BestVid";

function url(path = "") {
  const normalized = String(path).trim();
  if (normalized === "" || normalized === "/") {
    return SITE_URL;
  }

  return `${SITE_URL}/${normalized.replace(/^\/+/, "")}`;
}

function searchUrl(query) {
  const params = new URLSearchParams({ q: String(query).trim() });
  return `${url("/search")}?${params.toString()}`;
}

module.exports = {
  SITE_NAME,
  SITE_URL,
  searchUrl,
  url
};
