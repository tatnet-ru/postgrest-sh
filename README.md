# postgrest-sh

`postgrest/postgrest` + busybox `/bin/sh` — минимальная обёртка для запуска
на TatNet Apps (boot-контракт backend-аппов запускает start-command через
`sh -c` в chroot образа, а апстрим-образ — nix-дистроless без шелла).

Сборка: workflow `postgrest-sh-image` (workflow_dispatch, input `tag` =
базовый тег postgrest = тег выходного образа) → `ghcr.io/manzhikov/postgrest-sh:{tag}`.
