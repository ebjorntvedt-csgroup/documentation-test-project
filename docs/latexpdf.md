# PDF generation

This page describes how to generate the documentation as a pdf
document.

Sphinx provides a [LaTeX](https://www.sphinx-doc.org/en/master/usage/builders/index.html#sphinx.builders.latex.LaTeXBuilder)
builder that allows generating a pdf document from the documentation.

The [sphinx-latexpdf](https://hub.docker.com/r/sphinxdoc/sphinx-latexpdf)
container image can be used to generated the documentation locally.
However, as this project relies on some dependencies not included in
the container image, it cannot be used directly.

A dedicated image must be created as described by the
image's documentation. Please see this project's `Dockerfile`.

Once built locally, the container image can then be used as the base
image:

```
docker run --rm -v /data/gpos/documentation-test-project/docs:/docs -v /data/gpos/documentation-test-project/output:/output  sphinx:local sphinx-build -M latexpdf /docs /output
```
