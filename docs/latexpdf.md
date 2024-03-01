# PDF generation

This page describes different solutions for how to generate the
documentation as a pdf document.

## Default Sphinx builder

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

## Using the `latex_documents` option

Based on [this forum post](https://groups.google.com/g/sphinx-users/c/XNnVdAhTC7A), Sphinx can be used to generate multiple `pdf` documents from a single documentation structure.

The `srf` and `vcd` pdf documents are generated when setting the
[latex_documents](https://www.sphinx-doc.org/en/master/usage/configuration.html#confval-latex_documents)
attribute in `conf.py`, but when trying to open the generated `pdf` documents with `evince` or `atril` the following error is displayed by the pdf viewers:

```
File type MATLAB file (text/x-matlab) is not supported
```

## Additional resources

### Sphinx-based solutions

- post addressing generating [multiple pdf documents](https://groups.google.com/g/sphinx-users/c/XNnVdAhTC7A)
- [rinohtype](https://www.mos6581.org/rinohtype/master/#)
- [sphinx-business-theme](https://github.com/Nekmo/sphinx-business-theme)
- [sphinx-simplepdf](https://sphinx-simplepdf.readthedocs.io/en/latest/)

### Markdown to pdf

- [md-to-pdf](https://hub.docker.com/r/spawnia/md-to-pdf): A web service for converting markdown to PDF. No license notices.
- [md-to-pdf](https://github.com/simonhaenisch/md-to-pdf), a javascript-based converter. MIT license.
