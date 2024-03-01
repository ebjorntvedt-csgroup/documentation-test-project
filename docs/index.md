# Documentation Proof of Concept

This project demonstrates how a project hosted on GitHub can make
available its documentation using
[Sphinx](https://www.sphinx-doc.org/en/master/index.html) and
[GitHub Pages](https://docs.github.com/en/pages).

The generated documentation is available through the project's
[GitHub Pages](https://ebjorntvedt-csgroup.github.io/documentation-test-project/).

The documentation, written in
[Markdown](https://myst-parser.readthedocs.io/en/latest/index.html),
is generated and deployed using
[GitHub Actions](https://docs.github.com/en/actions), using the
[Sphinx to GitHub Pages](https://github.com/marketplace/actions/sphinx-to-github-pages)
Action.

The documentation can also be generated as a
[pdf document](latexpdf).

```{toctree}
:maxdepth: 1
:caption: Contents

srf
latexpdf
vcm
```

## Indices and tables

* {ref}`genindex`
* {ref}`modindex`
* {ref}`search`
