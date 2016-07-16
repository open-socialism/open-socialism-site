# open-socialism.github.io

## Technical

To run the site install [docker](https://www.docker.com/products/docker) and then

```
./auto/dev-environment
```

Site can be accessed at http://localhost:4000

The dev environment avoids building the full nav which takes ~7 minutes.

To update gems run

```
./auto/update-gems
```

To run prod with full nav build

```
./auto/prod-environment bash
bundle exec jekyll serve --incremental -H 0.0.0.0
```

It should be as simple as ```./auto/prod-environment``` but for some reason the environment variable inheritance isnt working with docker-compose without first going into bash. Not sure if this is a bug with docker or not.

### Browser Support ###

These browsers and versions http://browsehappy.com
