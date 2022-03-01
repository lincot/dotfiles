# proposed basic usability-oriented Firefox configuration

## about:preferences

### General

- Startup/✅ Open previous windows and tabs
- Files and Applications/✅ Always ask you where to save files
- Language and Appearance/
  - Serif and Sans-Serif: Fira Sans
  - Monospace: Fira Code
  - size: 18 or so
  - (may break some sites) ❎
  Allow pages to choose their own fonts, instead of your selections above

### Search

- Default Search Engine/🦆 DuckDuckGo
- Search Suggestions/❎ Provide search suggestions

### Privacy & Security

- Firefox Data Collection and Use/❎ Allow Firefox to send technical and interaction data to Mozilla
- Security/Deceptive Content and Dangerous Software Protection/❎ Block dangerous and deceptive content

## about:addons

- [uBlock Origin](https://addons.mozilla.org/firefox/addon/ublock-origin)
- [Dark Reader](https://addons.mozilla.org/firefox/addon/darkreader)
(or another dark mode addon): eyes saver
- [Tridactyl](https://addons.mozilla.org/firefox/addon/tridactyl-vim)
(or another shortcuts addon): clicking buttons w/o "mouse", etc.
- [Video Speed Controller](https://addons.mozilla.org/firefox/addon/videospeed):
watching videos faster
- [Tree Style Tab](https://addons.mozilla.org/firefox/addon/tree-style-tab):
alternative tab management
- [TST Colored Tabs](https://addons.mozilla.org/firefox/addon/tst-colored-tabs):
hostname-based tab colorization (can be made darker)

## ~/.mozilla/firefox/*-default/chrome/userChrome.css

- to disable Firefox native tabs bar:
    ```css
    #TabsToolbar {
      display: none;
    }
    ```
- to disable sidebar header:
    ```css
    #sidebar-header {
      display: none;
    }
    ```
- to disable mic/camera icon:
    ```css
    #webrtcIndicator {
      display: none;
    }
    ```
