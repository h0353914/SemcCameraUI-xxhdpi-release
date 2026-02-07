package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.util.AttributeSet;
import com.sonyericsson.android.camera.util.CamLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes.dex */
public class ExtendedGlSurfaceView extends GLSurfaceView {
    public static final boolean IS_OPENGL_DEBUG = false;
    private static final int TARGET_OPEN_GL_ES_VERSION = 2;

    public ExtendedGlSurfaceView(Context context) {
        super(context);
        setEGLContextClientVersion(2);
        setDebugFlags(3);
    }

    public ExtendedGlSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setEGLContextClientVersion(2);
        setDebugFlags(3);
    }

    public static void checkGlErrorWithException() throws OpenGlException {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            throw new OpenGlException(String.format("OpenGL error [0x%08x].", Integer.valueOf(iGlGetError)));
        }
    }

    public static boolean isGlErrorOccured() {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return false;
        }
        CamLog.e("TraceLog", String.format("OpenGL error [0x%08x].", Integer.valueOf(iGlGetError)));
        return true;
    }

    public static FloatBuffer allocFloatBuffer(float[] fArr) {
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.position(0);
        return floatBufferAsFloatBuffer;
    }

    public static ByteBuffer allocByteBuffer(byte[] bArr) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect((bArr.length * 8) / 8).order(ByteOrder.nativeOrder());
        byteBufferOrder.put(bArr);
        byteBufferOrder.position(0);
        return byteBufferOrder;
    }

    static String loadShaderSourceCodesFrom(Context context, int[] iArr) {
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        BufferedReader bufferedReader2 = null;
        while (i < iArr.length) {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(iArr[i])));
            } catch (IOException e) {
                e = e;
            }
            try {
                for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                    sb.append(line);
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                i++;
                bufferedReader2 = bufferedReader;
            } catch (IOException e2) {
                e = e2;
                bufferedReader2 = bufferedReader;
                CamLog.e("Can not load shader file.", e);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e3) {
                        CamLog.e("Fail to close BufferedReader.", e3);
                    }
                }
                return sb.toString();
            }
        }
        return sb.toString();
    }

    private static float[] get4x4TranslationMatrix(float f, float f2, float f3) {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        Matrix.translateM(fArr, 0, f, f2, f3);
        return fArr;
    }

    private static float[] get4x4RotationMatrix(float f, float f2, float f3, float f4) {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        Matrix.rotateM(fArr, 0, f, f2, f3, f4);
        return fArr;
    }

    private static float[] get4x4ScalingMatrix(float f, float f2, float f3) {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        Matrix.scaleM(fArr, 0, f, f2, f3);
        return fArr;
    }

    public static void translate(float[] fArr, float f, float f2, float f3) {
        Matrix.multiplyMM(fArr, 0, get4x4TranslationMatrix(f, f2, f3), 0, fArr, 0);
    }

    public static void rotate(float[] fArr, float f, float f2, float f3) {
        Matrix.multiplyMM(fArr, 0, get4x4RotationMatrix((f * 180.0f) / 3.1415927f, 1.0f, 0.0f, 0.0f), 0, fArr, 0);
        Matrix.multiplyMM(fArr, 0, get4x4RotationMatrix((f2 * 180.0f) / 3.1415927f, 0.0f, 1.0f, 0.0f), 0, fArr, 0);
        Matrix.multiplyMM(fArr, 0, get4x4RotationMatrix((f3 * 180.0f) / 3.1415927f, 0.0f, 0.0f, 1.0f), 0, fArr, 0);
    }

    public static void scale(float[] fArr, float f, float f2, float f3) {
        Matrix.multiplyMM(fArr, 0, get4x4ScalingMatrix(f, f2, f3), 0, fArr, 0);
    }

    public static void bindTextureAndBitmap(int i, Bitmap bitmap) {
        GLES20.glBindTexture(3553, i);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLUtils.texImage2D(3553, 0, 6408, bitmap, 0);
        GLES20.glBindTexture(3553, 0);
    }
}
