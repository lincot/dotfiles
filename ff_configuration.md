# basic usability-oriented Firefox configuration

## about:preferences

### General

- Startup/✅ Open previous windows and tabs
- Tabs/✅ Ctrl+Tab cycles through tabs in recently used order
- Language and Appearance/Fonts/Advanced...
  - Serif and Sans-Serif: Fira Sans
  - Monospace: Fira Code
  - ❎ Allow pages to choose their own fonts, instead of your selections above
- Zoom/Default zoom/👁️ choose a comfortable level
- Files and Applications/Downloads/✅ Always ask you where to save files

### Search

- Default Search Engine/🦆 DuckDuckGo
- Search Suggestions/❎ Provide search suggestions

### Privacy & Security

- Firefox Data Collection and Use/❎ Allow Firefox to send technical and interaction data to Mozilla
- Security/Deceptive Content and Dangerous Software Protection/❎ Block dangerous and deceptive content

## about:addons

- [uBlock Origin](https://addons.mozilla.org/firefox/addon/ublock-origin)
- [Dark Reader](https://addons.mozilla.org/firefox/addon/darkreader)
- [20-20-20 Rule](https://addons.mozilla.org/firefox/addon/20-20-20-rule)
- [Video Speed Controller](https://addons.mozilla.org/firefox/addon/videospeed)
- [Privacy Redirect](https://addons.mozilla.org/firefox/addon/privacy-redirect)

## about:config

- ✅ toolkit.legacyUserProfileCustomizations.stylesheets

## ~/.mozilla/firefox/*-default/chrome/userChrome.css

```css
#webrtcIndicator {
  display: none;
}
```
