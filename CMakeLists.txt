project(python3-flipflop)
cmake_minimum_required(VERSION 2.8.12)

add_custom_target(flipflop ALL SOURCES flipflop.py)

install(FILES flipflop.py
    PERMISSIONS OWNER_READ GROUP_READ WORLD_READ
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/
)

include(CPackConfig.cmake)
