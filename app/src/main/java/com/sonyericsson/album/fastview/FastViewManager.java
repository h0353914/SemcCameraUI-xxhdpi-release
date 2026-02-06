package com.sonyericsson.album.fastview;

import android.content.Context;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.reflect.Method;

public class FastViewManager {
    private static final String LOG_TAG = "FastViewManager";
    private final Object mBitmapManagerClassInstance;
    private final ServiceConnection mConnection = new FastViewManager$1(this);
    private final Context mContext;
    private final Method mGetBitmapMethod;
    private FastViewManager$OnPrewarmedListener mOnPrewarmedListener;
    private IFastViewService mService;

    static /* synthetic */ IFastViewService access$002(FastViewManager fastViewManager, IFastViewService iFastViewService) {
        fastViewManager.mService = iFastViewService;
        return iFastViewService;
    }

    static /* synthetic */ FastViewManager$OnPrewarmedListener access$100(FastViewManager fastViewManager) {
        return fastViewManager.mOnPrewarmedListener;
    }

    public FastViewManager(@NonNull Context context) throws FastViewUnavailableException {
        this.mContext = context;
        try {
            Class<?> cls = ReflectionUtil.getClass(PackageManagerUtil.getApkPath(context, "com.sonyericsson.album"), getClassName(context));
            this.mGetBitmapMethod = ReflectionUtil.getMethod(cls, getMethodName(context), Context.class, Uri.class);
            this.mBitmapManagerClassInstance = cls.newInstance();
        } catch (Exception unused) {
            throw new FastViewUnavailableException();
        }
    }

    public void prewarm() {
        android.content.Intent intent = new android.content.Intent();
        intent.setClassName("com.sonyericsson.album", "com.sonyericsson.album.fastview.FastViewService");
        this.mContext.bindService(intent, this.mConnection, 1);
    }

    public void setOnPrewarmedListener(@Nullable FastViewManager$OnPrewarmedListener fastViewManager$OnPrewarmedListener) {
        this.mOnPrewarmedListener = fastViewManager$OnPrewarmedListener;
    }

    public void prepare(@Nullable Uri uri) {
        if (this.mService == null || uri == null) {
            return;
        }
        try {
            this.mService.prepare(uri);
        } catch (RemoteException unused) {
            Log.d("FastViewManager", "Not in pre-warmed state.");
        }
    }

    public void cooldown() {
        if (this.mService != null) {
            this.mContext.unbindService(this.mConnection);
        }
        this.mService = null;
    }

    public Bitmap getBitmap(Uri uri) {
        Object objInvoke;
        try {
            objInvoke = this.mGetBitmapMethod.invoke(this.mBitmapManagerClassInstance, this.mContext, uri);
        } catch (Exception unused) {
            objInvoke = null;
        }
        if (objInvoke instanceof Bitmap) {
            return (Bitmap) objInvoke;
        }
        return null;
    }

    private String getClassName(@NonNull Context context) {
        return PackageManagerUtil.getMetadataString(context, "com.sonyericsson.album", "com.sonyericsson.album.fastview.class");
    }

    private String getMethodName(@NonNull Context context) {
        return PackageManagerUtil.getMetadataString(context, "com.sonyericsson.album", "com.sonyericsson.album.fastview.method");
    }
}
