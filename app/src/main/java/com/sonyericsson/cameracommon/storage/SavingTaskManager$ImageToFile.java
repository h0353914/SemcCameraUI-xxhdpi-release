package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.ThreadSafeOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

class SavingTaskManager$ImageToFile {
    private ByteBuffer mBuffer;
    private byte[] mJpegData;
    ThreadSafeOutputStream mOutputStream = null;
    private final String mPath;
    private final Storage$StorageType mStorageType;
    private final Uri mUri;
    final /* synthetic */ SavingTaskManager this$0;

    public SavingTaskManager$ImageToFile(SavingTaskManager savingTaskManager, byte[] bArr, Uri uri) {
        this.this$0 = savingTaskManager;
        this.mJpegData = bArr;
        this.mUri = uri;
        if ("file".equalsIgnoreCase(uri.getScheme())) {
            this.mPath = this.mUri.getPath();
            this.mStorageType = StorageUtil.getStorageTypeFromPath(this.mPath, savingTaskManager.mContext);
        } else {
            this.mPath = null;
            this.mStorageType = Storage$StorageType.UNKNOWN;
        }
    }

    public SavingTaskManager$ImageToFile(SavingTaskManager savingTaskManager, ByteBuffer byteBuffer, Uri uri) {
        this.this$0 = savingTaskManager;
        this.mBuffer = byteBuffer;
        this.mUri = uri;
        if ("file".equalsIgnoreCase(uri.getScheme())) {
            this.mPath = this.mUri.getPath();
            this.mStorageType = StorageUtil.getStorageTypeFromPath(this.mPath, savingTaskManager.mContext);
        } else {
            this.mPath = null;
            this.mStorageType = Storage$StorageType.UNKNOWN;
        }
    }

    public String getPath() {
        if (this.mPath != null) {
            return this.mPath;
        }
        if (this.mUri != null) {
            return this.mUri.getPath();
        }
        CamLog.e("Save path and uri is not set.");
        return null;
    }

    private OutputStream createOutputStream() throws FileNotFoundException {
        if (this.mStorageType == Storage$StorageType.EXTERNAL_CARD) {
            Uri uriCreateDocumentSdCard = StorageUtil.createDocumentSdCard(this.this$0.mContext, this.mPath);
            if (uriCreateDocumentSdCard != null) {
                return new FileOutputStream(this.this$0.mContext.getContentResolver().openFileDescriptor(uriCreateDocumentSdCard, "rw").getFileDescriptor());
            }
            CamLog.e("Document uri is null.");
        } else {
            if (this.mPath != null) {
                if (CamLog.VERBOSE) {
                    CamLog.d("Store create by path:" + this.mPath);
                }
                return new FileOutputStream(this.mPath);
            }
            if (this.mUri != null) {
                if (CamLog.VERBOSE) {
                    CamLog.d("Store create by uri:" + this.mUri);
                }
                return this.this$0.mContext.getContentResolver().openOutputStream(this.mUri);
            }
            CamLog.e("Save path and uri is not set.");
        }
        throw new FileNotFoundException();
    }

    public boolean storeData(Exception exc) {
        try {
            try {
                try {
                    if (CamLog.VERBOSE) {
                        CamLog.d("Store create file:" + this.mPath);
                    }
                    OutputStream outputStreamCreateOutputStream = createOutputStream();
                    synchronized (this) {
                        this.mOutputStream = new ThreadSafeOutputStream(outputStreamCreateOutputStream);
                    }
                    if (exc != null) {
                        throw exc;
                    }
                    if (this.mBuffer == null) {
                        this.mOutputStream.write(this.mJpegData, 0, this.mJpegData.length);
                    } else if (this.mPath != null) {
                        ((FileOutputStream) outputStreamCreateOutputStream).getChannel().write(this.mBuffer);
                    } else {
                        int iCapacity = this.mBuffer.capacity();
                        this.mJpegData = new byte[iCapacity];
                        this.mBuffer.get(this.mJpegData, 0, iCapacity);
                        this.mOutputStream.write(this.mJpegData, 0, this.mJpegData.length);
                    }
                    if (this.mOutputStream != null) {
                        try {
                            this.mOutputStream.flush();
                            this.mOutputStream.close();
                        } catch (IOException unused) {
                            CamLog.e("IOException occured when closing.");
                            this.mOutputStream = null;
                        }
                    }
                    this.mJpegData = null;
                    return true;
                } catch (IOException unused2) {
                    CamLog.e("Store fail I/O Exception:" + this.mPath);
                    requestCheckStorage(this.mStorageType);
                    if (this.mOutputStream != null) {
                        try {
                            this.mOutputStream.flush();
                            this.mOutputStream.close();
                        } catch (IOException unused3) {
                            CamLog.e("IOException occured when closing.");
                            this.mOutputStream = null;
                        }
                    }
                    this.mJpegData = null;
                    return false;
                }
            } catch (FileNotFoundException e) {
                CamLog.e("Store fail file not found:" + e.getMessage());
                requestCheckStorage(this.mStorageType);
                if (this.mOutputStream != null) {
                    try {
                        this.mOutputStream.flush();
                        this.mOutputStream.close();
                    } catch (IOException unused4) {
                        CamLog.e("IOException occured when closing.");
                        this.mOutputStream = null;
                    }
                }
                this.mJpegData = null;
                return false;
            } catch (Exception e2) {
                CamLog.e("Occurred other exception:" + e2.toString());
                requestCheckStorage(this.mStorageType);
                if (this.mOutputStream != null) {
                    try {
                        this.mOutputStream.flush();
                        this.mOutputStream.close();
                    } catch (IOException unused5) {
                        CamLog.e("IOException occured when closing.");
                        this.mOutputStream = null;
                    }
                }
                this.mJpegData = null;
                return false;
            }
        } catch (Throwable th) {
            if (this.mOutputStream != null) {
                try {
                    this.mOutputStream.flush();
                    this.mOutputStream.close();
                } catch (IOException unused6) {
                    CamLog.e("IOException occured when closing.");
                    this.mOutputStream = null;
                }
            }
            this.mJpegData = null;
            throw th;
        }
    }

    private void requestCheckStorage(Storage$StorageType storage$StorageType) {
        if (storage$StorageType != Storage$StorageType.UNKNOWN) {
            SavingTaskManager.access$200(this.this$0).updateStorageState(storage$StorageType, CameraStorageManager$UpdateRequestReason.STORING_FAILED);
        }
        SavingTaskManager.access$500(this.this$0, new SavingTaskManager$ImageToFile$1(this, storage$StorageType));
    }
}
