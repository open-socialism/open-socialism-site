# Open Socialism Website

[![Build Status](https://dev.azure.com/opensocialism/open-socialism/_apis/build/status/open-socialism.open-socialism-site?branchName=master)](https://dev.azure.com/opensocialism/open-socialism/_build/latest?definitionId=2&branchName=master)

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
auto/run
```

Site can be accessed at http://localhost:4000

### Running with the full nav build

This takes ~20 seconds to build, which can be annoying to wait for when making a lot of changes.

```bash
auto/prod-environment
```

### Verifying changes

This currently checks:

- the links are valid with [html-proofer](https://github.com/gjtorikian/html-proofer)
- spelling mistakes via [hunspell](http://hunspell.github.io)
- yaml issues with [yamllint](https://yamllint.readthedocs.io)
- docker issues with [hadolint](https://github.com/hadolint/hadolint)
- shell issues with [shellcheck](https://github.com/koalaman/shellcheck)

```bash
auto/verify/verify-all
```

#### Adding new words to be skipped by the spell checker

Update the [custom dictionary](/custom-dict.dic) file. I don't understand [the format](https://www.elastic.co/guide/en/elasticsearch/guide/current/hunspell.html) very well..

### Updating the gems

```bash
auto/update/update-gems
```

### Refreshing ruby / docker version

Check that the ruby version still matches with https://pages.github.com/versions (which shows the ruby version that github actually uses to build github pages sites). Then run:

```bash
auto/update/update-docker
```

### Browser Support

The latest version of the major browsers.
