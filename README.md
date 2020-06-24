<h3 align="center">Weyland Yutani Emacs Theme</h3>
<hr/>

<p align="center">
<img src="./egg-screenshot.png"> <!--  width=1900 -->
<img src="./hatch-egg-screenshot.png"> <!--  width=1900 -->

</p>

<br/>

<p align="center">An emacs theme based on the Alien movie franchise.</p>

### Loading the theme:


Download `weyland-yutani-theme.el` and put it under `~/.emacs.d/themes/` (or `~/.config/emacs/themes/`), then add these lines to your `init.el`:

``` elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
# or 
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/")

(load-theme `weyland-yutani t)
```
