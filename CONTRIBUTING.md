# How to contribute

Contribution is welcome in any form via pull requests. You are also welcome to create issues to discuss changes.

## Guidelines

Here are some guidelines when contributing.

### The goal is to improve rapidly, not avoid any mistakes

Much like Wikipedia the goal is it improve as rapidly as possible in a way that is sustainable. It's often faster to put mistakes out there and get feedback to fix them, rather than worry too much about the quality of OS at any one point in time.

If a change is generally an improvement, but has some issue perhaps, err on the side of making the change and addressing an issues in the future.

### Try to provide evidence for the points, but it's not strictly necessary if the arguments are logical

Evidence for the points in the system is obviously very important, but not mandatory. Getting new ideas out faster and getting feedback is more important that being very careful that the evidence supports it. This results in faster long term improvement as per the above point.

### Prefer Wikipedia links

Wikipedia links are more reliable than links to articles as they are constantly improved. The quality of the content on wikipedia is easier to process and is kept up to date.

### Use language for clarity to a wide audience

Use a conversational tone to communicate as clearly as possible. [http://paulgraham.com/talk.html](http://paulgraham.com/talk.html) explains this concept in more detail.

The goal is to be clear and convincing. Not wow people with big words or grand prose.

## Technical

To run the site locally ruby + jekyll latest is required. Recommend in _layouts/default.html wrap the navigation in liquid template comments.

eg.

{&#37; comment &#37;}
{&#37; include nav.html &#37;}
{&#37; endcomment &#37;}

To avoid building the nav which causes the build to take about 7 minutes. Just make sure you don't commit this change.
