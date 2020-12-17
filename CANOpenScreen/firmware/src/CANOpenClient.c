/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    canopenclient.c

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

#include "canopenclient.h"

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

CANOPENCLIENT_DATA canopenclientData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void CANOPENCLIENT_Initialize ( void )

  Remarks:
    See prototype in canopenclient.h.
 */

void CANOPENCLIENT_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    canopenclientData.state = CANOPENCLIENT_STATE_INIT;


    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}
void all_outputs(bool status){
    status = PLIB_PORTS_PinGet (PORTS_ID_0, PORT_CHANNEL_E, PORTS_BIT_POS_0);
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_E, PORTS_BIT_POS_0,status);        
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_E, PORTS_BIT_POS_1,status);
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_E, PORTS_BIT_POS_2,status);
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_E, PORTS_BIT_POS_3,status);
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_E, PORTS_BIT_POS_4,status);
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_G, PORTS_BIT_POS_12,status);
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_G, PORTS_BIT_POS_13,status);
    PLIB_PORTS_PinWrite (PORTS_ID_0, PORT_CHANNEL_G, PORTS_BIT_POS_14,status);      
}


/******************************************************************************
  Function:
    void CANOPENCLIENT_Tasks ( void )

  Remarks:
    See prototype in canopenclient.h.
 */

void CANOPENCLIENT_Tasks ( void )
{
         all_outputs(!KP1_1StateGet());
            all_outputs(!KP1_2StateGet());
            all_outputs(!KP1_3StateGet());
            all_outputs(!KP1_4StateGet());
    /* Check the application's current state. */
    switch ( canopenclientData.state )
    {
        /* Application's initial state. */
        case CANOPENCLIENT_STATE_INIT:
        {
            bool appInitialized = true;
       
        
            if (appInitialized)
            {
            
                canopenclientData.state = CANOPENCLIENT_STATE_SERVICE_TASKS;
            }
            break;
        }

        case CANOPENCLIENT_STATE_SERVICE_TASKS:
        {
            

            all_outputs(!KP1_1StateGet());
            all_outputs(!KP1_2StateGet());
            all_outputs(!KP1_3StateGet());
            all_outputs(!KP1_4StateGet());

            all_outputs(!KP2_1StateGet());
            all_outputs(!KP2_2StateGet());
            all_outputs(!KP2_3StateGet());
            all_outputs(!KP2_4StateGet());

            all_outputs(!KP3_1StateGet());
            all_outputs(!KP3_2StateGet());
            all_outputs(!KP3_3StateGet());
            all_outputs(!KP3_4StateGet());


            all_outputs(!KP4_1StateGet());
            all_outputs(!KP4_2StateGet());
            all_outputs(!KP4_3StateGet());
            all_outputs(!KP4_4StateGet());


            all_outputs(!KP5_1StateGet());
            all_outputs(!KP5_2StateGet());
            all_outputs(!KP5_3StateGet());
           // all_outputs(!KP2_4StateGet());
            
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
