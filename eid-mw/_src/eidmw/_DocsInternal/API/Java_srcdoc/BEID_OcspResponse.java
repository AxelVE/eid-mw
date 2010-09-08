/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.35
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package be.belgium.eid;

/******************************************************************************//**
  * Class that represents one OCSP Response
  *********************************************************************************/
public class BEID_OcspResponse extends BEID_Object {
  private long swigCPtr;

  protected BEID_OcspResponse(long cPtr, boolean cMemoryOwn) {
    super(beidlibJava_WrapperJNI.SWIGBEID_OcspResponseUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  protected static long getCPtr(BEID_OcspResponse obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if(swigCPtr != 0 && swigCMemOwn) {
      swigCMemOwn = false;
      beidlibJava_WrapperJNI.delete_BEID_OcspResponse(swigCPtr);
    }
    swigCPtr = 0;
    super.delete();
  }

	/**
	  * Create an OcspResponse object from the URI only and CertID
	  * This OCSP Response is not link to any certificate so some methods could not be used.
	  * These methods throw a BEID_ExBadUsage() exception
	  */
  public BEID_OcspResponse(String uri, BEID_HashAlgo hashAlgorithm, BEID_ByteArray issuerNameHash, BEID_ByteArray issuerKeyHash, BEID_ByteArray serialNumber) {
    this(beidlibJava_WrapperJNI.new_BEID_OcspResponse(uri, hashAlgorithm.swigValue(), BEID_ByteArray.getCPtr(issuerNameHash), issuerNameHash, BEID_ByteArray.getCPtr(issuerKeyHash), issuerKeyHash, BEID_ByteArray.getCPtr(serialNumber), serialNumber), true);
  }

	/** Get the uri of the responder */
  public String getUri() throws java.lang.Exception {
    return beidlibJava_WrapperJNI.BEID_OcspResponse_getUri(swigCPtr, this);
  }

	/**
	  * Get the response
	  */
  public BEID_CertifStatus getResponse(BEID_ByteArray response) throws java.lang.Exception {
    return BEID_CertifStatus.swigToEnum(beidlibJava_WrapperJNI.BEID_OcspResponse_getResponse(swigCPtr, this, BEID_ByteArray.getCPtr(response), response));
  }

}
