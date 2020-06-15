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
### Optional Vibrant Version w/ purple variable
A version with more vibrant(saturated) colors is in the new branch `vibrant`.
this branch features the redish purple seen in the screenshots. I had moved
towards gold for the main branch as it strikes the balance between color
distancing between all colors + a AAA color contrast ratio with the background.
I soon realized that some people may not care as much as I do for larger
contrast ratio's, and so the purple is in the vibrant branch. This branch
retains color distancing but for variables the variable contrast ratio with the
background is only at a AA level.
