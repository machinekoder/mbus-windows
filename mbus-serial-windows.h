//------------------------------------------------------------------------------
// Copyright (C) 2012, Alexander Rössler
// All rights reserved.
//
//
//------------------------------------------------------------------------------  

/**
 * @file   mbus-serial-windows.h
 * 
 * @brief  Functions and data structures for sending M-Bus data via RS232 on windows
 *
 */

#ifndef MBUS_SERIAL_WINDOWS_H
#define MBUS_SERIAL_WINDOWS_H

#include <windows.h>
#include <mbus/mbus.h>

typedef struct _mbus_serial_handle {

    char *device;

    HANDLE hSerial;
 
} mbus_serial_handle;


mbus_serial_handle *mbus_serial_connect(char *device);
int                 mbus_serial_disconnect(mbus_serial_handle *handle);
int                 mbus_serial_send_frame(mbus_serial_handle *handle, mbus_frame *frame);
int                 mbus_serial_recv_frame(mbus_serial_handle *handle, mbus_frame *frame);
int                 mbus_serial_set_baudrate(mbus_serial_handle *handle, int baudrate);
int 				mbus_serial_set_timeout(mbus_serial_handle *handle, int timeout);
#endif /* MBUS_SERIAL_WINDOWS_H */
