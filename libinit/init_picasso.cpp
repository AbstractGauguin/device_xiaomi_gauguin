/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_lito.h>

static const variant_info_t picasso_info = {
    .prop_key = "ro.boot.hwc",
    .prop_value = "CN",

    .brand = "Redmi",
    .device = "picasso",
    .marketname = "K30 5G",
    .model = "M2001G7AE",
    .build_description = "picasso-user-11-RKQ1.200826.002-V12.1.5.0.RGICNXM-release-keys",
    .build_fingerprint = "Redmi/picasso/picasso:11/RKQ1.200826.002/V12.1.5.0.RGICNXM:user/release-keys",
};

static const variant_info_t picasso_48m_info = {
    .prop_key = "ro.boot.hwc",
    .prop_value = "CN",

    .brand = "Redmi",
    .device = "picasso_48m",
    .marketname = "K30i 5G",
    .model = "M2001G7AC",
    .build_description = "picasso_48m-user-11-RKQ1.200826.002-V12.1.5.0.RGICNXM-release-keys",
    .build_fingerprint = "Redmi/picasso_48m/picasso:11/RKQ1.200826.002/V12.1.5.0.RGICNXM:user/release-keys",
};

static const std::vector<variant_info_t> variants = {
    picasso_info,
    picasso_48m_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
