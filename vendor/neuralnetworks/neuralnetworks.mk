# Copyright 2023 Electimon.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Init
PRODUCT_COPY_FILES += \
    $(MTK_COMMON_PATH)/vendor/neuralnetworks/android.hardware.neuralnetworks@1.3-service-mtk-neuron.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.neuralnetworks@1.3-service-mtk-neuron.rc

# Interfaces
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.0.vendor \
    android.hardware.neuralnetworks@1.1.vendor \
    android.hardware.neuralnetworks@1.2.vendor \
    android.hardware.neuralnetworks@1.3.vendor \
    libtextclassifier_hash.vendor

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.mtk_nn_baseline_support=1

# VINTF
DEVICE_MANIFEST_FILE += \
    $(MTK_COMMON_PATH)/vendor/neuralnetworks/nn-manifest.xml
