# open-socialism-site

[![Build Status](https://travis-ci.org/open-socialism/open-socialism-site.svg?branch=master)](https://travis-ci.org/open-socialism/open-socialism-site) [![Join the chat at https://gitter.im/open-socialism/open-socialism-site](https://badges.gitter.im/open-socialism/open-socialism-site.svg)](https://gitter.im/open-socialism/open-socialism-site?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Introduction

This repo is for [opensocialism.com](https://opensocialism.com), a democratic capitalism alternative.

[How to contribute](https://opensocialism.com/contribute).

## Technical

### Technologies

* [Docker](https://www.docker.com/products/docker)
* [Jekyll](https://jekyllrb.com)
* [Sass](https://sass-lang.com)
* [Markdown](https://www.markdownguide.org)

### Requirements

[Docker](https://www.docker.com/products/docker) (must include `docker-compose`) is required for local development. If on windows, either [install the linux subsystem](https://docs.microsoft.com/en-us/windows/wsl/install-win10), or run the `docker-compose` commands directly.

### Running the site locally

```bash
auto/dev-environment
```

Site can be accessed at http://localhost:4000

### Running with the full nav build

This takes ~4 minutes to build

```bash
auto/prod-environment
```

### Verifying changes

This currently checks:

- the links are valid with [html-proofer](https://github.com/gjtorikian/html-proofer)
- spelling mistakes via [hunspell](http://hunspell.github.io)
- yaml issues with [yamllint](https://yamllint.readthedocs.io)
- docker issues with [hadolint](https://github.com/hadolint/hadolint)

```bash
auto/verify
```

### Updating the gems

```bash
auto/update-gems
```

### Refreshing ruby / docker version

Check that the ruby version still matches with https://pages.github.com/versions (which shows the ruby version that github actually uses to build github pages sites). Then run:

```bash
auto/update-docker
```

### Browser Support

These browsers and versions https://browsehappy.com
