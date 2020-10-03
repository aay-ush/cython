cdef extern from *:
    """
    #if defined(WIN32) || defined(MS_WINDOWS)
      #include "windows.h"
      #define myapp_sleep(m)  Sleep(m)
    #else
      #include <unistd.h>
      #define myapp_sleep(m)  ((void) usleep((m) * 1000))
    #endif
    """
    # using "myapp_" prefix in the C code to prevent C naming conflicts
    void msleep "myapp_sleep"(int milliseconds) nogil

msleep(milliseconds=1)
