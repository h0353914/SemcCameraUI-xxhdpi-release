package com.sonyericsson.android.camera.device;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.CaptureResult$Key;
import com.sonyericsson.android.camera.util.CamLog;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

class CaptureResultHolder {
    private static final int QUEUE_CAPACITY = 10;
    private static final String TAG = "CaptureResultHolder";
    private final ReadWriteLock mReadWriteLock = new ReentrantReadWriteLock(true);
    private LinkedBlockingDeque<CaptureResult> mCaptureResultQueue = new LinkedBlockingDeque<>(10);

    CaptureResultHolder() {
    }

    void add(CaptureResult captureResult) {
        this.mReadWriteLock.writeLock().lock();
        try {
            if (this.mCaptureResultQueue.remainingCapacity() == 0) {
                this.mCaptureResultQueue.poll();
            }
            this.mCaptureResultQueue.put(captureResult);
        } catch (InterruptedException unused) {
        } catch (Throwable th) {
            this.mReadWriteLock.writeLock().unlock();
            throw th;
        }
        this.mReadWriteLock.writeLock().unlock();
    }

    CaptureResult getLatest() {
        this.mReadWriteLock.readLock().lock();
        try {
            if (CamLog.VERBOSE) {
                CamLog.d("getLatest()");
            }
            return this.mCaptureResultQueue.peekLast();
        } finally {
            this.mReadWriteLock.readLock().unlock();
        }
    }

    <T> List<T> getValueList(CaptureResult$Key<T> captureResult$Key) {
        this.mReadWriteLock.readLock().lock();
        try {
            if (CamLog.VERBOSE) {
                CamLog.d("getValueList(): " + captureResult$Key.getName());
            }
            ArrayList arrayList = new ArrayList();
            Iterator<CaptureResult> it = this.mCaptureResultQueue.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().get(captureResult$Key));
            }
            return arrayList;
        } finally {
            this.mReadWriteLock.readLock().unlock();
        }
    }

    <T> T getLatestValue(CaptureResult$Key<T> captureResult$Key) {
        this.mReadWriteLock.readLock().lock();
        try {
            if (CamLog.VERBOSE) {
                CamLog.d("getLatestValue(): " + captureResult$Key.getName());
            }
            CaptureResult latest = getLatest();
            if (latest != null) {
                return (T) latest.get(captureResult$Key);
            }
            return null;
        } finally {
            this.mReadWriteLock.readLock().unlock();
        }
    }

    void dumpLatest() {
        this.mReadWriteLock.readLock().lock();
        try {
            if (CamLog.VERBOSE) {
                CamLog.d("dumpLatest()");
            }
            CaptureResult captureResultPeekLast = this.mCaptureResultQueue.peekLast();
            if (captureResultPeekLast == null) {
                if (CamLog.VERBOSE) {
                    CamLog.d("empty");
                }
                return;
            }
            Iterator<CaptureResult$Key<?>> it = captureResultPeekLast.getKeys().iterator();
            while (it.hasNext()) {
                CaptureResult$Key<?> applicationCaptureResultKey = getApplicationCaptureResultKey(it.next());
                StringBuilder sb = new StringBuilder();
                sb.append("key: ");
                sb.append(applicationCaptureResultKey);
                sb.append(',');
                sb.append("val: ");
                if (captureResultPeekLast.get(applicationCaptureResultKey) != null) {
                    if (captureResultPeekLast.get(applicationCaptureResultKey).getClass().isArray()) {
                        for (int i = 0; i < Array.getLength(captureResultPeekLast.get(applicationCaptureResultKey)); i++) {
                            sb.append(Array.get(captureResultPeekLast.get(applicationCaptureResultKey), i));
                            sb.append(',');
                        }
                    } else {
                        sb.append(captureResultPeekLast.get(applicationCaptureResultKey));
                    }
                } else {
                    sb.append("null");
                }
                if (CamLog.VERBOSE) {
                    CamLog.d(sb.toString());
                }
            }
        } finally {
            this.mReadWriteLock.readLock().unlock();
        }
    }

    private CaptureResult$Key<?> getApplicationCaptureResultKey(CaptureResult$Key<?> captureResult$Key) {
        String name = captureResult$Key.getName();
        if (name != null) {
            for (CaptureResult$Key<?> captureResult$Key2 : SomcCameraDeviceInfo.getAllCaptureResultKeys()) {
                if (captureResult$Key2.getName().equals(name)) {
                    return captureResult$Key2;
                }
            }
        }
        return captureResult$Key;
    }
}
