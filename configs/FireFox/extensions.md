# My Extensions for FireFox

- [My Extensions for FireFox](#my-extensions-for-firefox)
	- [Privacy Extensions](#privacy-extensions)
		- [AdGuard Extension](#adguard-extension)
		- [DuckDuckGo Privacy](#duckduckgo-privacy)
		- [Spoof Timezone](#spoof-timezone)
		- [Custom User-Agent](#custom-user-agent)
		- [HTTP/S Everywhere](#https-everywhere)
		- [Clear URLS](#clear-urls)
	- [Other Extensions](#other-extensions)
		- [GIPHY](#giphy)
		- [Web Archive Search](#web-archive-search)
		- [Vimium](#vimium)
		- [Tree Style Tab](#tree-style-tab)
		- [Tab Stash](#tab-stash)
		- [Extensions for GNOME](#extensions-for-gnome)
			- [Open Weather](#open-weather)
			- [Just Perfection](#just-perfection)
			- [GS Connect](#gs-connect)
			- [Dash to Dock for COSMIC](#dash-to-dock-for-cosmic)
			- [GTK Title Bar](#gtk-title-bar)
			- [Shell Configurator](#shell-configurator)
			- [User Themes](#user-themes)

## Privacy Extensions

### AdGuard Extension

AdGuard Anti-Banner effectively blocks all kinds of ads on all web pages, even Facebook, Vkontakte, YouTube and other websites!

**Settings:**

1. Download: 
  	``` 
		curl https://github.com/Qroia/Qroia/configs/FireFox/adguard_settings.json
		```
2. Open extension settings
3. Click to `Import`
4. Select file

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/adguard-adblocker/)

### DuckDuckGo Privacy

Maximum privacy, minimum effort. Protect your data when searching and navigating the Internet: tracker blocking, advanced encryption, anonymous search, etc.

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/duckduckgo-for-firefox/)

### Spoof Timezone

This extension alters browser timezone to a random or user-defined value.x

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/spoof-timezone/)

### Custom User-Agent

Spoof websites trying to gather information about your web navigation—like your browser type and operating system—to deliver distinct content you may not want.

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/user-agent-string-switcher/)

### HTTP/S Everywhere

Encrypt the web! HTTPS Everywhere is a Firefox extension to protect your communications by enabling HTTPS encryption automatically on sites that are known to support it, even when you type URLs or follow links that omit the https: prefix.

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/https-everywhere/)

### Clear URLS

Removes tracking elements from URLs

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/clearurls/)

## Other Extensions

### GIPHY

Bring the power of a GIF search engine anywhere on the web. Respond to emails, tweets and more with GIFs quickly and easily.

Add GIPHY GIFs to your Gmail, Facebook, Twitter and more. Just search, drag and drop or right click!

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/giphy-for-firefox/)

### Web Archive Search

View archived and cached versions of web pages on 10+ search engines, such as the Wayback Machine, Archive․is, Google, Bing, Yandex, Baidu and Yahoo.

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/view-page-archive/)

### Vimium

The Hacker's Browser. Vimium provides keyboard shortcuts for navigation and control in the spirit of Vim.

This is a port of the popular Chrome extension to Firefox.

Most stuff works, but the port to Firefox remains a work in progress.

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/vimium-ff/)

### Tree Style Tab

This is a Firefox add-on which provides ability to operate tabs as "tree".

**For a nice and minimalistic browser look, it is advisable to use userStyles**

**Install User Style:**

1. Download userStyles:
		```
		curl https://github.com/Qroia/Qroia/configs/FireFox/userChrome.css
		```
2. Go to `about:config`
3. Search `toolkit.legacyUserProfileCustomizations.stylesheets`
4. Switch to `true`
5. Copy userStyles.css into the dict(Example: Ubuntu 22.04): `~/.mozilla/firefox/<your Profile>/chrome/`

Link: [FireFox Add-ons](https://addons.mozilla.org/firefox/addon/tree-style-tab/)

### Tab Stash

A no-fuss way to save and organize batches of tabs as bookmarks. Clear your tabs, clear your mind.

Link: [FireFox Add-ons](https://addons.mozilla.org/ru/firefox/addon/tab-stash/)

### Extensions for GNOME

#### Open Weather

Display weather information for any location on Earth in the GNOME Shell

Link [Extensions Gnome.org](https://extensions.gnome.org/extension/750/openweather/)

#### Just Perfection

Tweak Tool to Customize GNOME Shell, Change the Behavior and Disable UI Elements

**Settings:**

- Weather: off
- Events: off
- Double Super Key in App Grid: on
- Size panel: 30px

Link [Extensions Gnome.org](https://extensions.gnome.org/extension/3843/just-perfection/)

#### GS Connect

GSConnect is a complete implementation of KDE Connect especially for GNOME Shell with Nautilus, Chrome and Firefox integration. It does not rely on the KDE Connect desktop application and will not work with it installed.

Link [Extensions Gnome.org](https://extensions.gnome.org/extension/1319/gsconnect/)

#### Dash to Dock for COSMIC

A Dash to Dock fork for the COSMIC/GNOME Shell, fixes conflict with Cosmic Workspace.  It prevents Cosmic Workspaces from breaking after suspend.

Link [Extensions Gnome.org](https://extensions.gnome.org/extension/5004/dash-to-dock-for-cosmic/)

#### GTK Title Bar

Remove title bars for non-GTK apps with minimal interference with the default workflow

Link [Extensions Gnome.org](https://extensions.gnome.org/extension/1732/gtk-title-bar/)

#### Shell Configurator

Configure and customize GNOME Shell with advanced settings.

Link [Extensions Gnome.org](https://extensions.gnome.org/extension/4254/shell-configurator/)

#### User Themes

Load shell themes from user directory.

Link [Extensions Gnome.org](https://extensions.gnome.org/extension/19/user-themes/)
