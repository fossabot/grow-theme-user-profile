# Frontend User Profile Theme for Grow

[![Build Status](https://travis-ci.com/balcsida/grow-theme-user-profile.svg?branch=master)](https://travis-ci.com/balcsida/grow-theme-user-profile) [![dependencies Status](https://david-dm.org/balcsida/grow-theme-user-profile/status.svg)](https://david-dm.org/LRGROW/grow-theme-user-profile) [![devDependencies Status](https://david-dm.org/balcsida/grow-theme-user-profile/dev-status.svg)](https://david-dm.org/LRGROW/grow-theme-user-profile?type=dev)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FLRGROW%2Fgrow-theme-user-profile.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2FLRGROW%2Fgrow-theme-user-profile?ref=badge_shield)

This Liferay DXP theme is created to extend the default, out of the box Liferay User Profile theme: https://github.com/liferay/liferay-portal/tree/7.0.x/modules/apps/foundation/frontend-theme/frontend-theme-user-profile

## How to use the theme
1) `npm install gulp-cli -g`
2) `npm install`
3) `gulp init` to initialize your liferay-theme.json
4) Use [Liferay gulp tasks](https://dev.liferay.com/develop/reference/-/knowledge_base/7-0/theme-gulp-tasks), e.g. `gulp deploy`
5) Once deployed in Liferay, ensure the theme is selected for the given set of pages / page

Tip: To quickly test whether all is connected and running, try adding this rule:

`#wrapper {
    background: red;
}`

at the bottom of the *_custom.scss* file and run steps 5-6: the final result should be a red background in the page

## Documentation
See https://dev.liferay.com/develop/tutorials/-/knowledge_base/7-0/themes-and-layout-templates

## Technologies and frameworks added to the default Liferay theme


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FLRGROW%2Fgrow-theme-user-profile.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2FLRGROW%2Fgrow-theme-user-profile?ref=badge_large)