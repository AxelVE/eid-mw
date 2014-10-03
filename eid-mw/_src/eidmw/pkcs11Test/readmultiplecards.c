/* ****************************************************************************

* eID Middleware Project.
* Copyright (C) 2014 FedICT.
*
* This is free software; you can redistribute it and/or modify it
* under the terms of the GNU Lesser General Public License version
* 3.0 as published by the Free Software Foundation.
*
* This software is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public
* License along with this software; if not, see
* http://www.gnu.org/licenses/.

**************************************************************************** */
#include "basetest.h"
#include "logtest.h"

testRet test_autoreadcards(int numberOfCardsToRead);

testRet test_autoread5cards(void)
{
	test_autoreadcards(10);
}

testRet test_autoreadcards(int numberOfSlotEvents) {
	void *handle = NULL;				//handle to the pkcs11 library
	CK_FUNCTION_LIST_PTR functions;		// list of the pkcs11 function pointers

	testRet retVal = {CKR_OK,TEST_PASSED};	//return values of this test
	CK_RV frv = CKR_OK;						//return value of last pkcs11 function called

	CK_ULONG ulCount = 0;
	CK_ULONG slotIdx = 0;
	CK_SLOT_ID_PTR slotIds = NULL;
	CK_SLOT_ID slotId = 0;
	int i = 0;

	CK_SESSION_HANDLE session_handle;
	CK_ULONG ulObjectCount=1;

	CK_UTF8CHAR pLabel[256];
	CK_ULONG ullabelLen=256;
	CK_UTF8CHAR pValue[4096];
	CK_ULONG ulvalueLen=4096;
	BOOL bCardPresent=CK_FALSE;


	testlog(LVL_INFO, "test_autoreadcards enter\n");

	retVal = PrepareSlotListTest(&handle,&functions, &slotIds, &ulCount,CK_FALSE );
	if((retVal.pkcs11rv == CKR_OK) && (retVal.basetestrv == TEST_PASSED))
	{
		while(i<numberOfSlotEvents)
		{
			i++;
			frv = (*functions->C_WaitForSlotEvent)(0, &slotId,NULL_PTR);
			if (frv != CKR_NO_EVENT)
			{
				CK_SLOT_INFO slotInfo;
				frv = (*functions->C_GetSlotInfo)(slotId, &slotInfo);
				if(!(slotInfo.flags & CKF_TOKEN_PRESENT))
				{
					bCardPresent = CK_FALSE;
				}
				else if (ReturnedSuccesfull(frv,&(retVal.pkcs11rv), "C_GetSlotInfo", "test_autoread5cards" ))
				{
					CK_ULONG data = CKO_DATA;
					CK_ATTRIBUTE attributes[1] = {CKA_CLASS,&data,sizeof(CK_ULONG)};
					CK_BYTE_PTR pByte;
					//CK_OBJECT_CLASS value;
					//CK_ULONG ulvalueLen = sizeof(CK_ULONG);//last one is for the string termination
					//CK_VOID_PTR

					CK_ATTRIBUTE attr_templ[2] = {{CKA_LABEL,pLabel,ullabelLen},{CKA_VALUE,pValue,ulvalueLen}};
					CK_OBJECT_HANDLE hObject;

					if( bCardPresent == CK_TRUE )
					{
						i--;//card was already present, OS fired multiple events, we don't use nor count this event
						continue;
					}
					bCardPresent = CK_TRUE;

					frv = (*functions->C_OpenSession)(slotId, CKF_SERIAL_SESSION, NULL_PTR, NULL_PTR, &session_handle);
					if (ReturnedSuccesfull(frv,&(retVal.pkcs11rv), "C_OpenSession", "test_getallobjects" ))
					{
						frv = (*functions->C_FindObjectsInit)(session_handle, attributes, 1); 
						if (ReturnedSuccesfull(frv,&(retVal.pkcs11rv), "C_FindObjectsInit", "test_getallobjects" ))
						{
							ulObjectCount=1;
							while (ulObjectCount > 0)
							{
								frv = (*functions->C_FindObjects)(session_handle, &hObject,1,&ulObjectCount); 
								ReturnedSuccesfull(frv,&(retVal.pkcs11rv), "C_FindObjects", "test_getallobjects" );
								if (ulObjectCount > 0)
								{
									testlog(LVL_INFO, "found object, CK_OBJECT_HANDLE = %d\n",hObject);
									frv = (*functions->C_GetAttributeValue)(session_handle,hObject,attr_templ,2);
									if (ReturnedSuccesfull(frv,&(retVal.pkcs11rv), "C_GetAttributeValue", "test_getallobjects" ))
									{
										pByte = (CK_BYTE_PTR)attr_templ[0].pValue;
										pByte[attr_templ[0].ulValueLen] = 0;
										testlog(LVL_INFO,"key LABEL value = %s\n", pByte);
										testlog(LVL_INFO,"key CKA_VALUE value = ");
										testlogbytes(LVL_NOLEVEL,pValue, attr_templ[1].ulValueLen);
										//reset buffer length to allocated memory value
										attr_templ[0].ulValueLen = ullabelLen;
										attr_templ[1].ulValueLen = ulvalueLen;
									}
								}
							}
							frv = (*functions->C_FindObjectsFinal)(session_handle); 
							ReturnedSuccesfull(frv,&(retVal.pkcs11rv), "C_FindObjectsFinal", "test_getallobjects" );
						}
						frv = (*functions->C_CloseSession) (session_handle);
						ReturnedSuccesfull(frv,&(retVal.pkcs11rv), "C_CloseSession", "test_getallobjects" );
					}
				}
				//bCardPresent = (slotInfo.flags & CKF_TOKEN_PRESENT);
			}
		}
		frv = (*functions->C_Finalize) (NULL_PTR);
		ReturnedSucces(frv,&(retVal.pkcs11rv), "C_Finalize");
	}
	EndSlotListTest(handle,slotIds );

	testlog(LVL_INFO, "test_autoread5cards leave\n");
	return retVal;
}