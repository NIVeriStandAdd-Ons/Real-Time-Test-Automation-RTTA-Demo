s��        ҋ   R �3  7X   �   ����                               DIAdem                          DIAdem                                                                                                   � ��const char *     � ��LCID     	� 	��ERRORINFO  �  � ��HRESULT  � � ��SAFEARRAY *  � 	� 	��LPUNKNOWN     � ��VARIANT  � � ��VBOOL  �  � ��SCODE  � � ��CAObjHandle  � � ��DATE     � ��CURRENCY       DIAdem     %    Dispatch-Interface TOCommand-Object     '    Dispatch-Interface TODataSheet-Object     '    Dispatch-Interface TOCHMHelper-Object     !    Dispatch-Interface TOCmd-Object    f    Use this function to create a new ITOCommand object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    �
����  �    Status                            � -   �  �    Server                             - �     �    Support Multithreading            	� -� �  �    Locale                             �      �    Reserved                          c � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          v    Use this function to load an existing ITOCommand object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    4
����  �    Status                            B -   �  �    File Name                         � - � �  �    Server                            � -�     �    Support Multithreading            c �  �  �    Locale                            � � �     �    Reserved                           �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active ITOCommand object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    J
����  �    Status                            X -   �  �    Server                            6 - �     �    Support Multithreading            � -� �  �    Locale                            !M �      �    Reserved                          !� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    #�
����  �    Status                            &	 -   �  �    Object Handle                     '` - � �  �    Error Info                        )� -� �  �    V Cmd V                           )� �     �    Value                              	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.    +�
����  �    Status                            -� -   �  �    Object Handle                     / - � �  �    Error Info                        13 -� �  �    Sg Var Name V                     1� �  �  �    V Value P                         2� � �    �    Value                              	                       NULL    ""    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.    4�
����  �    Status                            6� -   �  �    Object Handle                     89 - � �  �    Error Info                        :e -� �  �    Sg Var Name V                     :� �  �  �    V Value P                         < � �    �    Value                              	                       NULL    ""    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.    =�
����  �    Status                            @ -   �  �    Object Handle                     Ak - � �  �    Error Info                        C� -� �  �    Sg Var Name V                     C� �  �  �    V Value P                         EE � �    �    Value                              	                       NULL    ""    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    G'
����  �    Status                            IF -   �  �    Object Handle                     J� - � �  �    Error Info                        L� -� �  �    Sg Var Name V                     M/ �  �  �    Sg Value V                        M� � �    �    Value                              	                       NULL    ""    ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    Oq
����  �    Status                            Q� -   �  �    Object Handle                     R� - � �  �    Error Info                        U -� �  �    Sg Var Name V                     Uy �  �  �    V Value V                         U� � �    �    Value                              	                       NULL    ""        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    W�
����  �    Status                            Y� -   �  �    Object Handle                     [/ - � �  �    Error Info                        ][ -� �  �    Sg Var Name V                     ]� �  �  �    V Value V                         ^' � �    �    Value                              	                       NULL    ""        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    `
����  �    Status                            b  -   �  �    Object Handle                     cw - � �  �    Error Info                        e� -� �  �    V Cmd V                           f	 �     �    Value                              	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    g�
����  �    Status                            i� -   �  �    Object Handle                     k - � �  �    Error Info                        mJ -�    �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    n�
����  �    Status                            p� -   �  �    Object Handle                     r& - � �  �    Error Info                        tR -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    u�
����  �    Status                            w� -   �  �    Object Handle                     y. - � �  �    Error Info                        {Z -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    |�
����  �    Status                            ~� -   �  �    Object Handle                     �G - � �  �    Error Info                        �s -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    ��
����  �    Status                            �� -   �  �    Object Handle                     �O - � �  �    Error Info                        �{ -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    ��
����  �    Status                            � -   �  �    Object Handle                     �h - � �  �    Error Info                        �� -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    ��
����  �    Status                            � -   �  �    Object Handle                     �p - � �  �    Error Info                        �� -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �
����  �    Status                            �2 -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �
����  �    Status                            �: -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �4
����  �    Status                            �S -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �<
����  �    Status                            �[ -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �U
����  �    Status                            �t -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �]
����  �    Status                            �| -   �  �    Object Handle                     �� - � �  �    Error Info                        �� -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.    �v
����  �    Status                            ŕ -   �  �    Object Handle                     �� - � �  �    Error Info                        � -� �  �    V No Value P                      �` �     �    Value                              	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    �
����  �    Status                            �& -   �  �    Object Handle                     �} - � �  �    Error Info                        ѩ -� �  �    V No Value V                      � �     �    Value                              	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.    Ӯ
����  �    Status                            �� -   �  �    Object Handle                     �$ - � �  �    Error Info                        �P -� �  �    Sg Var Name V                     ٶ �  �  �    V Value P                         �� � �    �    Value                              	                       NULL    ""    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    ��
����  �    Status                            �� -   �  �    Object Handle                     �V - � �  �    Error Info                        � -� �  �    Sg Var Name V                     �� �  �  �    V Value V                         �N � �    �    Value                              	                       NULL    ""        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �(
����  �    Status                            �G -   �  �    Object Handle                     � - � �  �    Error Info                        �� -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    O    An ActiveX object handle obtained from NewITOCommand, OpenITOCommand, ActiveITOCommand, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    �0
����  �    Status                            �O -   �  �    Object Handle                     � - � �  �    Error Info                        �� -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE   h    Use this function to create a new ITODataSheet object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.    ��
����  �    Status                            �� -   �  �    Server                            �� - �     �    Support Multithreading            �� -� �  �    Locale                            �� �      �    Reserved                          �2 � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          x    Use this function to load an existing ITODataSheet object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   
����  �    Status                            -   �  �    File Name                        U - � �  �    Server                           x -�     �    Support Multithreading           4 �  �  �    Locale                           � � �     �    Reserved                         � �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active ITODataSheet object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   
����  �    Status                           + -   �  �    Server                           	 - �     �    Support Multithreading           � -� �  �    Locale                             �      �    Reserved                         j � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                    9 - � �  �    Error Info                       e -�    �    N Row V                          � �  �  �    V Chn V                          1 � � �  �    V Value V                        � ��    �    Value                              	                       NULL                	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                    !$ - � �  �    Error Info                       #P -�    �    N Row V                          #� �  �  �    V Chn V                          $ � � �  �    V Value P                        %d ��    �    Value                              	                       NULL            	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   '}
����  �    Status                           )� -   �  �    Object Handle                    *� - � �  �    Error Info                       -% -�    �    N Start Row V                    -� �  �  �    V Start Chn V                    -� � �    �    N End Row V                      .W �� �  �    V End Chn V                      .� �  �  �    V Value V                        /# � �    �    Value                              	                       NULL                        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   1�
����  �    Status                           3� -   �  �    Object Handle                    5" - � �  �    Error Info                       7N -�    �    N Start Row V                    7� �  �  �    V Start Chn V                    8 � �    �    N End Row V                      8� �� �  �    V End Chn V                      8� �  �  �    V Value P                        :. � �    �    Value                              	                       NULL                    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   <�
����  �    Status                           >� -   �  �    Object Handle                    @5 - � �  �    Error Info                       Ba -� �  �    V Chn V                          B� �  �  �    V Name P                         D � �    �    Value                              	                       NULL        	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   E�
����  �    Status                           H -   �  �    Object Handle                    Ik - � �  �    Error Info                       K� -� �  �    V Chn V                          K� �  �  �    Sg Name V                        Lc � �    �    Value                              	                       NULL        ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   N=
����  �    Status                           P\ -   �  �    Object Handle                    Q� - � �  �    Error Info                       S� -� �  �    V Chn V                          TK �  �  �    V Length P                       U� � �    �    Value                              	                       NULL        	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   Ws
����  �    Status                           Y� -   �  �    Object Handle                    Z� - � �  �    Error Info                       ] -� �  �    V Chn V                          ]� �     �    N Length V                       ]� � �    �    Value                              	                       NULL            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   _�
����  �    Status                           a� -   �  �    Object Handle                    c; - � �  �    Error Info                       eg -� �  �    V Chn V                          e� �  �  �    V Comment P                      g � �    �    Value                              	                       NULL        	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   h�
����  �    Status                           k -   �  �    Object Handle                    lq - � �  �    Error Info                       n� -� �  �    V Chn V                          o �  �  �    Sg Comment V                     oi � �    �    Value                              	                       NULL        ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   qC
����  �    Status                           sb -   �  �    Object Handle                    t� - � �  �    Error Info                       v� -� �  �    V Chn V                          wQ �  �  �    V Dimension P                    x� � �    �    Value                              	                       NULL        	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   zy
����  �    Status                           |� -   �  �    Object Handle                    }� - � �  �    Error Info                       �! -� �  �    V Chn V                          �� �  �  �    Sg Dimension V                   �� � �    �    Value                              	                       NULL        ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    �C - � �  �    Error Info                       �o -� �  �    V Chn V                          �� �  �  �    V Max Length P                   � � �    �    Value                              	                       NULL        	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           � -   �  �    Object Handle                    �y - � �  �    Error Info                       �� -� �  �    V Count V                        �� �     �    Value                              	                       NULL    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    � - � �  �    Error Info                       �< -� �  �    V Start Chn V                    �� �  �  �    V End Chn V                      � � �    �    Value                              	                       NULL            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    �\ - � �  �    Error Info                       �� -�    �    N State V                        �� �     �    Value                              	                       NULL        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    �	 - � �  �    Error Info                       �5 -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    � - � �  �    Error Info                       �C -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    �6 - � �  �    Error Info                       �b -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    �D - � �  �    Error Info                       �p -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           � -   �  �    Object Handle                    �c - � �  �    Error Info                       Ə -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           � -   �  �    Object Handle                    �q - � �  �    Error Info                       ͝ -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           �3 -   �  �    Object Handle                    Ґ - � �  �    Error Info                       Լ -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �"
����  �    Status                           �A -   �  �    Object Handle                    ٞ - � �  �    Error Info                       �� -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �A
����  �    Status                           �` -   �  �    Object Handle                    � - � �  �    Error Info                       �� -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �O
����  �    Status                           �n -   �  �    Object Handle                    �� - � �  �    Error Info                       �� -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �n
����  �    Status                           � -   �  �    Object Handle                    �� - � �  �    Error Info                       � -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   �|
����  �    Status                           �� -   �  �    Object Handle                    �� - � �  �    Error Info                       �$ -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE       A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   ��
����  �    Status                           �� -   �  �    Object Handle                    � - � �  �    Error Info                       �C -�    �    N Start Row V                    �� �  �  �    V Start Chn V                      � �    �    N End Row V                       u �� �  �    V End Chn V                       � �  �  �    V Value V                        A � �    �    Value                              	                       NULL                        	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                    @ - � �  �    Error Info                       	l -�    �    N Start Row V                    	� �  �  �    V Start Chn V                    
8 � �    �    N End Row V                      
� �� �  �    V End Chn V                       �  �  �    V Value P                        L � �    �    Value                              	                       NULL                    	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    @    A Variant that is filled in by the function.

Documentation for this function, if provided by the server, is located in the function help.

The Variant Related Functions class in the CVI ActiveX Library contains functions to help you query the type of value stored in a Variant and to retrieve values from a Variant.

     ^    Documentation for this function, if provided by the server, is located in the function help.   �
����  �    Status                           � -   �  �    Object Handle                    S - � �  �    Error Info                        -� �  �    V Chn V                          � �  �  �    V Data Type P                    - � �    �    Value                              	                       NULL        	            	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   
����  �    Status                           , -   �  �    Object Handle                    � - � �  �    Error Info                       � -� �  �    V Chn V                           �  �  �    Data Type V                      � � �    �    Value                              	                       NULL        ""    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.    [
����  �    Status                           "z -   �  �    Object Handle                    #� - � �  �    Error Info                       & -� �  �    Value                              	                       NULL    	               A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITODataSheet, OpenITODataSheet, ActiveITODataSheet, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.   'i
����  �    Status                           )� -   �  �    Object Handle                    *� - � �  �    Error Info                       - -� �       Value                              	                       NULL    VTRUE VTRUE VFALSE VFALSE   h    Use this function to create a new ITOCHMHelper object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   0�
����  �    Status                           2 -   �  �    Server                           4 - �     �    Support Multithreading           5� -� �  �    Locale                           7' �      �    Reserved                         7q � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          x    Use this function to load an existing ITOCHMHelper object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   <D
����  �    Status                           =R -   �  �    File Name                        =� - � �  �    Server                           ?� -�     �    Support Multithreading           As �  �  �    Locale                           B� � �     �    Reserved                         C �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active ITOCHMHelper object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   G\
����  �    Status                           Hj -   �  �    Server                           JH - �     �    Support Multithreading           L -� �  �    Locale                           M_ �      �    Reserved                         M� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	              A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code or CA_DisplayErrorInfo to display the description of the error code.

If the error code is DISP_E_EXCEPTION  (0x80020009 or -2147352567), then the Error Info parameter contains additional error information.  You can use CA_DisplayErrorInfo to display the error information.    U    An ActiveX object handle obtained from NewITOCHMHelper, OpenITOCHMHelper, ActiveITOCHMHelper, or an ActiveX method or property.

All of the methods that can be applied to a particular object are grouped under a single class in the function tree.  The name of the class corresponds to the type of the object to which this handle must refer.    $    When an ActiveX server function fails with the error code DISP_E_EXCEPTION, descriptive information about the error code is stored in this parameter.  The descriptive information may include the error's code, source, and description.  It may also include a help file and help file context.

When an ActiveX server function fails with the error codes DISP_E_PARAMNOTFOUND, DISP_E_TYPEMISMATCH, or E_INVALIDARG, the parameter position of the invalid argument may be stored in the errorParamPos member of this parameter.

This parameter may be NULL.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.     ^    Documentation for this function, if provided by the server, is located in the function help.   O�
����  �    Status                           R -   �  �    Object Handle                    Sx - � �  �    Error Info                       U� -�    �    Example No                       V
 �     �    Example Command                  Vp � �    �    Value                              	                       NULL            	           j    Use this function to create a new TOCMD910ITOCmd object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   Z�
����  �    Status                           [� -   �  �    Server                           ]� - �     �    Support Multithreading           _� -� �  �    Locale                           `� �      �    Reserved                         a3 � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          z    Use this function to load an existing TOCMD910ITOCmd object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   f
����  �    Status                           g -   �  �    File Name                        gX - � �  �    Server                           i{ -�     �    Support Multithreading           k7 �  �  �    Locale                           l� � �     �    Reserved                         l� �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active TOCMD910ITOCmd object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   q"
����  �    Status                           r0 -   �  �    Server                           t - �     �    Support Multithreading           u� -� �  �    Locale                           w% �      �    Reserved                         wo � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          g    Use this function to create a new TOCmdITOCmd object, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is a RemoteServerName registry entry for this server, the server will be run on the machine specified by the RemoteServerName entry.

If you pass NULL for this parameter and there is no RemoteServerName registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   |1
����  �    Status                           }? -   �  �    Server                           I - �     �    Support Multithreading           � -� �  �    Locale                           �` �      �    Reserved                         �� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	          w    Use this function to load an existing TOCmdITOCmd object from a file, and obtain a handle to the object.

If the server application is already running, this function may or may not start another copy of the application.  This is determined by the server application.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.     :    A file containing the data for an ActiveX server object.        The name or IP address of the machine on which you want to run the ActiveX server.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL for this parameter, and there is an ActivateAtStorage registry entry for this server, the server will be run on the machine on which the file specified by the filename parameter resides.

If you pass NULL for this parameter and there is no ActivateAtStorage registry entry for this server, the server will be run on the same machine as your program.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   �|
����  �    Status                           �� -   �  �    File Name                        �� - � �  �    Server                           �� -�     �    Support Multithreading           �� �  �  �    Locale                           � � �     �    Reserved                         �P �� �  �    Object Handle                      	               NULL    1    LOCALE_NEUTRAL    0    	          �    Use this function to get a handle to an active TOCmdITOCmd object.

You must call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED if you register any ActiveX event callbacks and want the callbacks to be called from the same thread in which they were registered.  If you do not call CA_InitActiveXThreadStyleForCurrentThread with COINIT_APARTMENTTHREADED your callbacks will be called from a system thread.        A value indicating whether an error occurred.  A negative error code indicates function failure.

Error codes are defined in cvi\include\cviauto.h and cvi\sdk\include\winerror.h.

You can use CA_GetAutomationErrorString to get the description of an error code.    �    The name or IP address of the machine on which to look for the active ActiveX server object.  The name can be either a UNC name ("\\playdough")  or DNS name ("plato.natinst.com").

If you pass NULL, the function will look for the active ActiveX server object on the same machine as your program.

NOTE: Windows 95 and Windows NT 4.0 do not support accessing active objects on remote machines.  Future versions of these operating systems may support this functionality.    �    Pass 0 if you use the object only from the thread that calls this function.  Pass 1 if you use the object from multiple threads.

The CVI ActiveX library uses the COM Global Interface Table (GIT) to marshal interface pointers between threads.  There is overhead associated with using the GIT that should be avoided when possible.  If you do not pass the CAObjHandle between threads in your application, you do not need to use the GIT.    S    Pass the locale for the object.  This value tells the object how to interpret arguments to its methods.  Pass LOCALE_NEUTRAL to indicate the default language-neutral locale.  This value is not used by the server when you call it through a dual interface method.

The CVI ActiveX library passes this value to the IDispatch::Invoke method.     B    This parameter is reserved.  You must pass 0 for this parameter.     �    A handle to the requested ActiveX object.

Use this handle to call methods and get/set properties of this ActiveX object.

When it is no longer needed, you must discard this handle using CA_DiscardObjHandle.   ��
����  �    Status                           �� -   �  �    Server                           � - �     �    Support Multithreading           �; -� �  �    Locale                           �� �      �    Reserved                         �� � � �  �    Object Handle                      	           NULL    1    LOCALE_NEUTRAL    0    	        ����         |  <             K.        NewITOCommand                                                                                                                           ����         �  �             K.        OpenITOCommand                                                                                                                          ����         �  "p             K.        ActiveITOCommand                                                                                                                        ����       ����  *X             K.        ITOCommandCmdExecuteSync                                                                                                                ����       ����  3G             K.        ITOCommandTextVarGet                                                                                                                    ����       ����  <y             K.        ITOCommandDoubleVarGet                                                                                                                  ����       ����  E�             K.        ITOCommandIntegerVarGet                                                                                                                 ����       ����  M�             K.        ITOCommandTextVarSet                                                                                                                    ����       ����  VE             K.        ITOCommandDoubleVarSet                                                                                                                  ����       ����  ^�             K.        ITOCommandIntegerVarSet                                                                                                                 ����       ����  fo             K.        ITOCommandCmdExecuteAsync                                                                                                               ����       ����  m�             K.        ITOCommandCmdAbort                                                                                                                      ����       ����  t�             K.        ITOCommandGetbNoMsgDisplay                                                                                                              ����       ����  {�             K.        ITOCommandSetbNoMsgDisplay                                                                                                              ����       ����  ��             K.        ITOCommandGetbNoErrorDisplay                                                                                                            ����       ����  ��             K.        ITOCommandSetbNoErrorDisplay                                                                                                            ����       ����  ��             K.        ITOCommandGetbNoInfoDisplay                                                                                                             ����       ����  �             K.        ITOCommandSetbNoInfoDisplay                                                                                                             ����       ����  �             K.        ITOCommandGetbNoWarningDisplay                                                                                                          ����       ����  �#             K.        ITOCommandSetbNoWarningDisplay                                                                                                          ����       ����  �<             K.        ITOCommandGetbNoDialogDisplay                                                                                                           ����       ����  �D             K.        ITOCommandSetbNoDialogDisplay                                                                                                           ����       ����  �]             K.        ITOCommandGetbNoActivityDisplay                                                                                                         ����       ����  �e             K.        ITOCommandSetbNoActivityDisplay                                                                                                         ����       ����  ��             K.        ITOCommandNoValueGet                                                                                                                    ����       ����  �u             K.        ITOCommandNoValueSet                                                                                                                    ����       ����  �d             K.        ITOCommandBoolVarGet                                                                                                                    ����       ����  �             K.        ITOCommandBoolVarSet                                                                                                                    ����       ����  �0             K.        ITOCommandGetbInterfaceLocked                                                                                                           ����       ����  �8             K.        ITOCommandSetbInterfaceLocked                                                                                                           ����         �I  �             K.        NewITODataSheet                                                                                                                         ����         �� �             K.        OpenITODataSheet                                                                                                                        ����        
e C             K.        ActiveITODataSheet                                                                                                                      ����       ���� �             K.        ITODataSheetChnValSet                                                                                                                   ����       ���� %�             K.        ITODataSheetChnValGet                                                                                                                   ����       ���� /�         	    K.        ITODataSheetValueRangeSet                                                                                                               ����       ���� :�         	    K.        ITODataSheetValueRangeGet                                                                                                               ����       ���� Du             K.        ITODataSheetChnNameGet                                                                                                                  ����       ���� L�             K.        ITODataSheetChnNameSet                                                                                                                  ����       ���� U�             K.        ITODataSheetChnLengthGet                                                                                                                ����       ���� ^M             K.        ITODataSheetChnLengthSet                                                                                                                ����       ���� g{             K.        ITODataSheetChnCommentGet                                                                                                               ����       ���� o�             K.        ITODataSheetChnCommentSet                                                                                                               ����       ���� x�             K.        ITODataSheetChnDimGet                                                                                                                   ����       ���� �S             K.        ITODataSheetChnDimSet                                                                                                                   ����       ���� ��             K.        ITODataSheetMaxChnLengthGet                                                                                                             ����       ���� �S             K.        ITODataSheetMaxChnCountGet                                                                                                              ����       ���� �n             K.        ITODataSheetChnParamsUpdate                                                                                                             ����       ���� �T             K.        ITODataSheetUpdateParamsLock                                                                                                            ����       ���� ��             K.        ITODataSheetGetbNoMsgDisplay                                                                                                            ����       ���� ��             K.        ITODataSheetSetbNoMsgDisplay                                                                                                            ����       ���� ��             K.        ITODataSheetGetbNoErrorDisplay                                                                                                          ����       ���� ��             K.        ITODataSheetSetbNoErrorDisplay                                                                                                          ����       ���� ��             K.        ITODataSheetGetbNoInfoDisplay                                                                                                           ����       ���� �             K.        ITODataSheetSetbNoInfoDisplay                                                                                                           ����       ���� �"             K.        ITODataSheetGetbNoWarningDisplay                                                                                                        ����       ���� �0             K.        ITODataSheetSetbNoWarningDisplay                                                                                                        ����       ���� �O             K.        ITODataSheetGetbNoDialogDisplay                                                                                                         ����       ���� �]             K.        ITODataSheetSetbNoDialogDisplay                                                                                                         ����       ���� �|             K.        ITODataSheetGetbNoActivityDisplay                                                                                                       ����       ���� ��             K.        ITODataSheetSetbNoActivityDisplay                                                                                                       ����       ���� �         	    K.        ITODataSheetValueRangeFormatedSet                                                                                                       ����       ���� �         	    K.        ITODataSheetValueRangeFormatedGet                                                                                                       ����       ���� �             K.        ITODataSheetChnDataTypeGet                                                                                                              ����       ���� �             K.        ITODataSheetChnDataTypeSet                                                                                                              ����       ���� &i             K.        ITODataSheetGetbInterfaceLocked                                                                                                         ����       ���� -w             K.        ITODataSheetSetbInterfaceLocked                                                                                                         ����        .� 8J             K.        NewITOCHMHelper                                                                                                                         ����        9� C�             K.        OpenITOCHMHelper                                                                                                                        ����        E� N�             K.        ActiveITOCHMHelper                                                                                                                      ����       ���� V�             K.        ITOCHMHelperExampleExecute                                                                                                              ����        XH b             K.        NewTOCMD910ITOCmd                                                                                                                       ����        c� m�             K.        OpenTOCMD910ITOCmd                                                                                                                      ����        oh xH             K.        ActiveTOCMD910ITOCmd                                                                                                                    ����        y� ��             K.        NewTOCmdITOCmd                                                                                                                          ����        �� �)             K.        OpenTOCmdITOCmd                                                                                                                         ����        �� ��             K.        ActiveTOCmdITOCmd                                                                                                                             �                                                                                    �ITOCommand                                                                           �New ITOCommand                                                                       �Open ITOCommand                                                                      �Active ITOCommand                                                                    �Cmd Execute Sync                                                                     �Text Var Get                                                                         �Double Var Get                                                                       �Integer Var Get                                                                      �Text Var Set                                                                         �Double Var Set                                                                       �Integer Var Set                                                                      �Cmd Execute Async                                                                    �Cmd Abort                                                                            �Getb No Msg Display                                                                  �Setb No Msg Display                                                                  �Getb No Error Display                                                                �Setb No Error Display                                                                �Getb No Info Display                                                                 �Setb No Info Display                                                                 �Getb No Warning Display                                                              �Setb No Warning Display                                                              �Getb No Dialog Display                                                               �Setb No Dialog Display                                                               �Getb No Activity Display                                                             �Setb No Activity Display                                                             �No Value Get                                                                         �No Value Set                                                                         �Bool Var Get                                                                         �Bool Var Set                                                                         �Getb Interface Locked                                                                �Setb Interface Locked                                                               �ITODataSheet                                                                         �New ITODataSheet                                                                     �Open ITODataSheet                                                                    �Active ITODataSheet                                                                  �Chn Val Set                                                                          �Chn Val Get                                                                          �Value Range Set                                                                      �Value Range Get                                                                      �Chn Name Get                                                                         �Chn Name Set                                                                         �Chn Length Get                                                                       �Chn Length Set                                                                       �Chn Comment Get                                                                      �Chn Comment Set                                                                      �Chn Dim Get                                                                          �Chn Dim Set                                                                          �Max Chn Length Get                                                                   �Max Chn Count Get                                                                    �Chn Params Update                                                                    �Update Params Lock                                                                   �Getb No Msg Display                                                                  �Setb No Msg Display                                                                  �Getb No Error Display                                                                �Setb No Error Display                                                                �Getb No Info Display                                                                 �Setb No Info Display                                                                 �Getb No Warning Display                                                              �Setb No Warning Display                                                              �Getb No Dialog Display                                                               �Setb No Dialog Display                                                               �Getb No Activity Display                                                             �Setb No Activity Display                                                             �Value Range Formated Set                                                             �Value Range Formated Get                                                             �Chn Data Type Get                                                                    �Chn Data Type Set                                                                    �Getb Interface Locked                                                                �Setb Interface Locked                                                               $ITOCHMHelper                                                                         �New ITOCHMHelper                                                                     �Open ITOCHMHelper                                                                    �Active ITOCHMHelper                                                                  �Example Execute                                                                     SITOCmd                                                                               �New TOCMD910ITOCmd                                                                   �Open TOCMD910ITOCmd                                                                  �Active TOCMD910ITOCmd                                                                �New TOCmdITOCmd                                                                      �Open TOCmdITOCmd                                                                     �Active TOCmdITOCmd                                                              