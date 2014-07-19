/* Copyright (c) 2014, RobotSexNickels Developers */
/* See LICENSE for licensing information */

/**
 * \file robotsexnickels.h
 * \brief Headers for robotsexnickels.cpp
 **/

#ifndef TOR_RAZOR_H
#define TOR_RAZOR_H

#ifdef __cplusplus
extern "C" {
#endif

    char const* robotsexnickels_tor_data_directory(
    );

    char const* robotsexnickels_service_directory(
    );

    int check_interrupted(
    );

    void set_initialized(
    );

    void wait_initialized(
    );

#ifdef __cplusplus
}
#endif

#endif

