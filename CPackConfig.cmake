set(CPACK_PACKAGE_VENDOR "Ultimaker")
set(CPACK_PACKAGE_CONTACT "info <info@ultimaker.com>")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Ultimaker packaged version of flipflop")
set(CPACK_PACKAGE_VERSION_MAJOR 9999)
set(CPACK_PACKAGE_VERSION_MINOR 99)
set(CPACK_PACKAGE_VERSION_PATCH 99)
set(CPACK_GENERATOR "DEB")

set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE all)

# Note: if any of the below dependencies fails during deployment, then you have
# to ensure that package is installed on the UM3 (and not your local computer).
set(DEB_DEPENDS
	"python3 (>= 3.4.0)"
)
string(REPLACE ";" ", " DEB_DEPENDS "${DEB_DEPENDS}")
set(CPACK_DEBIAN_PACKAGE_DEPENDS ${DEB_DEPENDS})

include(CPack)
