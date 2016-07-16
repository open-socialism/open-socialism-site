# open-socialism.github.io

## Technical

To run the site install [docker](https://www.docker.com/products/docker) and then

```
./auto/dev-environment
```

Site can be accessed at http://localhost:4000

Recommend commenting out the navigation in _layouts/default.html

{&#37; comment &#37;}
{&#37; include nav.html &#37;}
{&#37; endcomment &#37;}

To avoid building the nav which causes the build to take about 7 minutes. Just make sure you don't commit this change.

To update gems run

```
./auto/update-gems
```

### Browser Support ###

These browsers and versions http://browsehappy.com
