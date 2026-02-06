package com.sonyericsson.android.camera.gestureshutter;

import android.util.Log;
import java.nio.ByteBuffer;

public class HandSignsNativeWrapper {
    private static final String TAG = "HandSignsNativeWrapper";
    private long mNativeHandle = 0;

    private native long nativeCreate();

    private native boolean nativeDetect(long j, int i, int i2, ByteBuffer byteBuffer, int i3, HandSignsDetector$DetectResult handSignsDetector$DetectResult);

    private native boolean nativeDetect(long j, int i, int i2, byte[] bArr, int i3, HandSignsDetector$DetectResult handSignsDetector$DetectResult);

    private native void nativeRelease(long j);

    private static final native int nativeShrinkByteArrayYvu420Sp(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    static {
        try {
            System.loadLibrary("handsigns_jni");
        } catch (UnsatisfiedLinkError unused) {
            Log.i("HandSignsNativeWrapper", "GestureShutter is not supported.");
        }
    }

    public HandSignsNativeWrapper() {
        create();
    }

    private synchronized void create() {
        if (this.mNativeHandle == 0) {
            this.mNativeHandle = nativeCreate();
        }
    }

    public synchronized boolean detect(int i, int i2, byte[] bArr, int i3, HandSignsDetector$DetectResult handSignsDetector$DetectResult) {
        if (this.mNativeHandle == 0) {
            return false;
        }
        return nativeDetect(this.mNativeHandle, i, i2, bArr, i3, handSignsDetector$DetectResult);
    }

    public synchronized boolean detect(int i, int i2, ByteBuffer byteBuffer, int i3, HandSignsDetector$DetectResult handSignsDetector$DetectResult) {
        if (this.mNativeHandle == 0) {
            return false;
        }
        return nativeDetect(this.mNativeHandle, i, i2, byteBuffer, i3, handSignsDetector$DetectResult);
    }

    public synchronized void release() {
        if (this.mNativeHandle != 0) {
            nativeRelease(this.mNativeHandle);
            this.mNativeHandle = 0L;
        }
    }

    public static final void shrinkYvu420Sp(byte[] bArr, int i, int i2, byte[] bArr2, HandSignsNativeWrapper$ShrinkRatio handSignsNativeWrapper$ShrinkRatio) {
        int iNativeShrinkByteArrayYvu420Sp = nativeShrinkByteArrayYvu420Sp(bArr, i, i2, bArr2, handSignsNativeWrapper$ShrinkRatio.shrinkSize);
        if (iNativeShrinkByteArrayYvu420Sp != 0) {
            throw new RuntimeException("Error Code Returned : " + iNativeShrinkByteArrayYvu420Sp);
        }
    }
}
