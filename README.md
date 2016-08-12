# open-socialism.github.io

[![Build Status](https://travis-ci.org/open-socialism/open-socialism.github.io.svg?branch=master)](https://travis-ci.org/open-socialism/open-socialism.github.io) [![Join the chat at https://gitter.im/open-socialism/open-socialism.github.io](https://badges.gitter.im/open-socialism/open-socialism.github.io.svg)](https://gitter.im/open-socialism/open-socialism.github.io?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Introduction

This repo is for [https://opensocialism.com]{https://opensocialism.com}, a democratic capitalism alternative.

[How to contribute](https://opensocialism.com/contribute).

## Technical

To run the site install [docker](https://www.docker.com/products/docker) and then

```
auto/dev-environment
```

Site can be accessed at http://localhost:4000

The dev environment avoids building the full nav which takes ~7 minutes.

To update gems run

```
auto/update-gems
```

To run prod with full nav build

```
auto/prod-environment bash
bundle exec jekyll serve --incremental -H 0.0.0.0
```

It should be as simple as ```auto/prod-environment``` but for some reason the environment variable inheritance isnt working with docker-compose without first going into bash. Not sure if this is a bug with docker or not.

### Browser Support ###

These browsers and versions http://browsehappy.com
