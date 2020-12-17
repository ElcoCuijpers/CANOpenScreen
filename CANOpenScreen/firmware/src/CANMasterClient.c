/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    canmasterclient.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "canmasterclient.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

CANMASTERCLIENT_DATA canmasterclientData;
static uint8_t canmasterclient_can_tx_buffer[] = "Hello World";
static uint8_t canmasterclient_can_rx_buffer[16];

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* Application's Timer Callback Function */
static void TimerCallback (  uintptr_t context, uint32_t alarmCount )
{
}

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* state machine for the CAN */
static void CAN_Task(void)
{
    /* run the state machine here for CAN */
    switch (canmasterclientData.canStateMachine)
    {
        default:
        case CANMASTERCLIENT_CAN_STATE_START:
            if (DRV_CAN_ChannelMessageTransmit(
                canmasterclientData.handleCAN0,
                CAN_CHANNEL0,  /* default channel 0 */
                0,  /* given address */
                sizeof(canmasterclient_can_tx_buffer),
                canmasterclient_can_tx_buffer) == true)
            {
                canmasterclientData.canStateMachine = CANMASTERCLIENT_CAN_STATE_RX;
            }
        break;

        case CANMASTERCLIENT_CAN_STATE_RX:
            if (DRV_CAN_ChannelMessageReceive(
                canmasterclientData.handleCAN0,
                CAN_CHANNEL0,  /* default channel 0 */
                0,  /* given address */
                16,
                canmasterclient_can_rx_buffer) == true)
            {
                canmasterclientData.canStateMachine = CANMASTERCLIENT_CAN_STATE_DONE;
            }
        break;

        case CANMASTERCLIENT_CAN_STATE_DONE:
        break;
    }
}


/* Application's Timer Setup Function */
static void TimerSetup( void )
{
    DRV_TMR_AlarmRegister(
        canmasterclientData.handleTimer0, 
        CANMASTERCLIENT_TMR_DRV_PERIOD, 
        CANMASTERCLIENT_TMR_DRV_IS_PERIODIC,
        (uintptr_t)NULL, 
        TimerCallback);
    DRV_TMR_Start(canmasterclientData.handleTimer0);
}

/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void CANMASTERCLIENT_Initialize ( void )

  Remarks:
    See prototype in canmasterclient.h.
 */

void CANMASTERCLIENT_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    canmasterclientData.state = CANMASTERCLIENT_STATE_INIT;

    canmasterclientData.handleCAN0 = DRV_HANDLE_INVALID;

    canmasterclientData.handleTimer0 = DRV_HANDLE_INVALID;
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void CANMASTERCLIENT_Tasks ( void )

  Remarks:
    See prototype in canmasterclient.h.
 */

void CANMASTERCLIENT_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( canmasterclientData.state )
    {
        /* Application's initial state. */
        case CANMASTERCLIENT_STATE_INIT:
        {
            bool appInitialized = true;
       
            if (DRV_HANDLE_INVALID == canmasterclientData.handleCAN0)
            {
                canmasterclientData.handleCAN0 = DRV_CAN_Open(0, DRV_IO_INTENT_READWRITE);
                appInitialized &= (DRV_HANDLE_INVALID != canmasterclientData.handleCAN0);
            }
            if (canmasterclientData.handleTimer0 == DRV_HANDLE_INVALID)
            {
                canmasterclientData.handleTimer0 = DRV_TMR_Open(CANMASTERCLIENT_TMR_DRV, DRV_IO_INTENT_EXCLUSIVE);
                appInitialized &= ( DRV_HANDLE_INVALID != canmasterclientData.handleTimer0 );
            }
        
            if (appInitialized)
            {
                /* initialize the CAN state machine */
                canmasterclientData.canStateMachine = CANMASTERCLIENT_CAN_STATE_START;
                TimerSetup();
            
                canmasterclientData.state = CANMASTERCLIENT_STATE_SERVICE_TASKS;
            }
            break;
        }

        case CANMASTERCLIENT_STATE_SERVICE_TASKS:
        {
            /* run the state machine for servicing the CAN */
            CAN_Task();
        
            break;
        }

        /* TODO: implement your application state machine.*/
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

 

/*******************************************************************************
 End of File
 */
