"use strict";

const assert = require("node:assert/strict");
const bestvid = require("./index.js");

assert.equal(bestvid.SITE_URL, "https://bestvid.net");
assert.equal(bestvid.SITE_NAME, "BestVid");

assert.equal(bestvid.url(), "https://bestvid.net");
assert.equal(bestvid.url(""), "https://bestvid.net");
assert.equal(bestvid.url("/"), "https://bestvid.net");
assert.equal(bestvid.url("/tools/ai-video"), "https://bestvid.net/tools/ai-video");
assert.equal(bestvid.url("tools/ai-video"), "https://bestvid.net/tools/ai-video");
assert.equal(bestvid.url(" /tools/ai-video "), "https://bestvid.net/tools/ai-video");

assert.equal(
  bestvid.searchUrl(" ai video generator "),
  "https://bestvid.net/search?q=ai+video+generator"
);
assert.equal(bestvid.searchUrl("video/editor"), "https://bestvid.net/search?q=video%2Feditor");
