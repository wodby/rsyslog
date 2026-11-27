# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/alpine
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_3.24 := sha256:7b48485a68df86d649f44c5d7c9cceccb6c51009139c19b3d43cfd3daf336bdf
BASE_IMAGE_DIGEST_3.24-r20 := sha256:dd8906d570e4d88dcd69e0e1844c3725838186033ac919cd678c0e9e4b1533cc

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
