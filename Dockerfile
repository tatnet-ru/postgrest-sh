# postgrest + busybox sh.
#
# Upstream postgrest/postgrest is a nix-built distroless image (only
# /bin/postgrest); the TatNet backend boot contract execs the start command
# via `sh -c` inside a chroot of the image rootfs, so a shell must exist.
# busybox invoked as argv[0]=sh runs ash — one COPY, no RUN, nothing else
# changes. Bump = update the base tag below and re-run the workflow.
ARG POSTGREST_TAG=v14.18
FROM busybox:1.36.1-musl AS bb
FROM postgrest/postgrest:${POSTGREST_TAG}
COPY --from=bb /bin/busybox /bin/sh
