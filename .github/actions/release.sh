#!/usr/bin/env bash

set -exo pipefail

if [[ "${GITHUB_REF}" == refs/heads/master || "${GITHUB_REF}" == refs/tags/* ]]; then      
  tags=()

  if [[ "${GITHUB_REF}" == refs/tags/* ]]; then
    tags=("${GITHUB_REF##*/}")
  else          
    if [[ -n "${LATEST}" ]]; then
      tags+=("latest")
    fi
  fi

  for tag in "${tags[@]}"; do
    make buildx-imagetools-create TAG=${tag}
  done
fi
