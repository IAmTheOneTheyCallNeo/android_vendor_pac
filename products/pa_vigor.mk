# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_vigor,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# inherit device configuration
$(call inherit-product, device/htc/vigor/vigor.mk)

# inherit common configuration
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit vendor configuration
-include vendor/htc/vigor/BoardConfigVendor.mk

# Include CM extras
EXTRA_CM_PACKAGES ?= true

# Override AOSP build properties
PRODUCT_NAME := pa_vigor
PRODUCT_BRAND := htc
PRODUCT_MODEL := Rezound
PRODUCT_MANUFACTURER := HTC

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk

endif
