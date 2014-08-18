#charset "us-ascii"
#include <tads.h>
#include "advlite.h"

/* The header, shown above, tells TADS to include some essential files. */

versionInfo: GameID
    IFID = ''
    name = ''
    byline = 'by YOUR NAME'
    htmlByline = 'by <a href="mailto:YOUR@ADDRESS.com">
                  YOUR NAME</a>'
    version = '1'
    authorEmail = 'YOUR NAME <YOUR@ADDRESS.com>'
    desc = ''
    htmlDesc = ''
;

/* Notice that each object definition, including versionInfo, ends with a semicolon. */

gameMain: GameMainDef
    /* The initial player character is an object called 'me', which will be defined shortly. */
    initialPlayerChar = me
;

startRoom: Room 'Start'
    "The starting room. "
;

+ me: Thing 'you'     
    isFixed = true       
    person = 2
    contType = Carrier    
;
