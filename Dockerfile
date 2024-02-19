# This Dockerfile relies on Docker's multi-stage build feature:
# https://docs.docker.com/build/building/multi-stage/
#
# Currently, there is a known problem with pre-stages not being cached.
# See this link for more information: https://snyk.io/blog/best-practices-containerizing-python-docker/
# and the section "Known issues with multi-stage builds for containerized Python applications".
#
# Thus, please run the following commands to build the image:
#
#   export DOCKER_BUILDKIT=1
#   export BUILDKIT_PROGRESS=plain
#   docker build -t sphinx:local --build-arg BUILDKIT_INLINE_CACHE=1 .

FROM sphinxdoc/sphinx-latexpdf

WORKDIR /docs

# Install required Sphinx dependencies
COPY docs/requirements.txt /tmp
RUN pip3 install --no-cache-dir --no-warn-script-location \
                 --requirement /tmp/requirements.txt
