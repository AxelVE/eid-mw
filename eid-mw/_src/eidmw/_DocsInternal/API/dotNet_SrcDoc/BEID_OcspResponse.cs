/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.35
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace be.belgium.eid {

using System;
using System.Runtime.InteropServices;

/// <summary>Class that represents one OCSP Response.</summary>
public class BEID_OcspResponse : BEID_Object {
  private HandleRef swigCPtr;

  internal BEID_OcspResponse(IntPtr cPtr, bool cMemoryOwn) : base(beidlib_dotNetPINVOKE.BEID_OcspResponseUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new HandleRef(this, cPtr);
  }

  internal static HandleRef getCPtr(BEID_OcspResponse obj) {
    return (obj == null) ? new HandleRef(null, IntPtr.Zero) : obj.swigCPtr;
  }

  ~BEID_OcspResponse() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if(swigCPtr.Handle != IntPtr.Zero && swigCMemOwn) {
        swigCMemOwn = false;
        beidlib_dotNetPINVOKE.delete_BEID_OcspResponse(swigCPtr);
      }
      swigCPtr = new HandleRef(null, IntPtr.Zero);
      GC.SuppressFinalize(this);
      base.Dispose();
    }
  }

  /// <summary>
  /// Create an OcspResponse object from the URI only and CertID.
  /// </summary>
  /// <remarks>
  /// This OCSP Response is not link to any certificate so some methods could not be used.
  /// these methods throw BEID_ExBadUsage exception.
  /// </remarks>
  public BEID_OcspResponse(string uri, BEID_HashAlgo hashAlgorithm, BEID_ByteArray issuerNameHash, BEID_ByteArray issuerKeyHash, BEID_ByteArray serialNumber)
      : this(beidlib_dotNetPINVOKE.new_BEID_OcspResponse(uri, (int)hashAlgorithm, BEID_ByteArray.getCPtr(issuerNameHash), BEID_ByteArray.getCPtr(issuerKeyHash), BEID_ByteArray.getCPtr(serialNumber)), true)
  {
    if (beidlib_dotNetPINVOKE.SWIGPendingException.Pending) throw beidlib_dotNetPINVOKE.SWIGPendingException.Retrieve();
  }

  /// <summary>Return the uri of the responder.</summary>
  public string getUri()
  {
    string ret = beidlib_dotNetPINVOKE.BEID_OcspResponse_getUri(swigCPtr);
    if (beidlib_dotNetPINVOKE.SWIGPendingException.Pending) throw beidlib_dotNetPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  /// <summary>Return the response.</summary>
  public BEID_CertifStatus getResponse(BEID_ByteArray response)
  {
    BEID_CertifStatus ret = (BEID_CertifStatus)beidlib_dotNetPINVOKE.BEID_OcspResponse_getResponse(swigCPtr, BEID_ByteArray.getCPtr(response));
    if (beidlib_dotNetPINVOKE.SWIGPendingException.Pending) throw beidlib_dotNetPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

}

}
