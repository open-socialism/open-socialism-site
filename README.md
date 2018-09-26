# open-socialism-site

[![Build Status](https://travis-ci.org/open-socialism/open-socialism-site.svg?branch=master)](https://travis-ci.org/open-socialism/open-socialism-site) [![Join the chat at https://gitter.im/open-socialism/open-socialism-site](https://badges.gitter.im/open-socialism/open-socialism-site.svg)](https://gitter.im/open-socialism/open-socialism-site?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Introduction

This repo is for [opensocialism.com](https://opensocialism.com), a democratic capitalism alternative.

[How to contribute](https://opensocialism.com/contribute).

## Technical

## Technologies

* [Docker](https://www.docker.com/products/docker)
* [Jekyll](https://jekyllrb.com)
* [Sass](https://sass-lang.com)
* [Markdown](https://www.markdownguide.org)

### Requirements

[Docker](https://www.docker.com/products/docker) (must include `docker-compose`) is required for local development.

### Running the site locally

```
auto/dev-environment
```

Site can be accessed at http://localhost:4000

### Running with the full nav build

This takes ~4 minutes to build

```
auto/prod-environment
```

### Verifying changes

This currently checks the links are valid with `html-proofer`, but more verification may be added in the future.

```
auto/verify
```

### Updating the gems

```
auto/update-gems
```

### Browser Support

These browsers and versions https://browsehappy.com
