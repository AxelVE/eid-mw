#include <unix.h>
#include <pkcs11.h>
#include <stdio.h>
#include <stdlib.h>

#include "testlib.h"

int nonsensible(void) {
	CK_RV rv;
	CK_SLOT_ID slot = 0;
	CK_OBJECT_HANDLE object;
	CK_SESSION_HANDLE session;
	CK_ULONG data;
	CK_MECHANISM mech;
	int ret;

	rv = C_Initialize(NULL_PTR);
	check_rv;

	rv = C_InitToken(slot, "1111", 4, "");
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_InitPIN(slot, "1111", 4);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_CreateObject(session, NULL_PTR, 0, &object);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_CopyObject(session, object, NULL_PTR, 0, &object);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_DestroyObject(session, object);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_GetObjectSize(session, object, &data);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_EncryptInit(session, &mech, object);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_Encrypt(session, NULL_PTR, 0, NULL_PTR, &data);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_EncryptUpdate(session, NULL_PTR, 0, NULL_PTR, &data);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_EncryptFinal(session, NULL_PTR, 0);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_DecryptInit(session, &mech, object);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_Decrypt(session, NULL_PTR, 0, NULL_PTR, &data);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_DecryptUpdate(session, NULL_PTR, 0, NULL_PTR, &data);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_DecryptFinal(session, NULL_PTR, 0);
	assert(ckrv_decode(rv, 2, CKR_OK, TEST_RV_FAIL, CKR_FUNCTION_NOT_SUPPORTED, TEST_RV_OK) == TEST_RV_OK);

	rv = C_Finalize(NULL_PTR);
	check_rv;

	return TEST_RV_OK;
}
