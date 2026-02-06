package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import android.os.Environment;
import android.os.SystemClock;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class DcfPathBuilder {
    public static final String DCF_DIR_NAME_FREE_WORD = "ANDRO";
    public static final String DCF_FILE_NAME_FREE_WORD_MOVIE = "MOV_";
    public static final String DCF_FILE_NAME_FREE_WORD_PICTURE = "DSC_";
    public static final int LENGTH_OF_DIR_NAME = 8;
    public static final int LENGTH_OF_FILE_NAME = 12;
    public static final int MAX_DIR_NAME = 999;
    public static final int MAX_FILE_NAME = 9999;
    public static final int MIN_DIR_NAME = 100;
    public static final int MIN_FILE_NAME = 1;
    private static final DcfPathBuilder$ScanResult SCAN_RESULT_FAILED = new DcfPathBuilder$ScanResult(DcfPathBuilder$ScanResultState.SCAN_FAILED, -1, -1);
    private static final int SCAN_WAIT_TIME = 60000;
    public static final String TAG = "DcfPathBuilder";
    public static final int TYPE_PICTURE = 0;
    public static final int TYPE_VIDEO = 1;
    public static final String VOLUME_EXTERNAL = "external";
    private int mDirNo;
    private int mFileNo;
    private final String mRoot;
    private Future<?> mScanFuture;
    private DcfPathBuilder$ScanResult mScanResult = null;
    private DcfPathBuilder$DcfImageDirNameFilter mDirNameFilter = new DcfPathBuilder$DcfImageDirNameFilter(null);
    private DcfPathBuilder$DcfImageFileNameFilter mFileNameFilter = new DcfPathBuilder$DcfImageFileNameFilter(null);
    private ExecutorService mScanExecutor = ThreadUtil.buildExecutor("DCF Path Builder");

    private static boolean checkStorageWritable(String str) {
        if (str == null) {
            return false;
        }
        try {
            return Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState(new File(str)));
        } catch (Throwable unused) {
            return false;
        }
    }

    static /* synthetic */ String access$200(DcfPathBuilder dcfPathBuilder) {
        return dcfPathBuilder.mRoot;
    }

    static /* synthetic */ DcfPathBuilder$DcfImageDirNameFilter access$300(DcfPathBuilder dcfPathBuilder) {
        return dcfPathBuilder.mDirNameFilter;
    }

    static /* synthetic */ DcfPathBuilder$DcfImageFileNameFilter access$600(DcfPathBuilder dcfPathBuilder) {
        return dcfPathBuilder.mFileNameFilter;
    }

    public DcfPathBuilder(String str) {
        this.mRoot = str;
    }

    public void startScan() {
        if (CamLog.VERBOSE) {
            CamLog.d("startScan is called: " + this.mRoot);
        }
        synchronized (this) {
            if (this.mScanFuture != null) {
                if (this.mScanFuture.isDone()) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("Discard previous unread scan result. " + this.mRoot);
                    }
                    this.mScanFuture = null;
                } else {
                    if (CamLog.VERBOSE) {
                        CamLog.d("Now scanning. Ignore: " + this.mRoot);
                    }
                    return;
                }
            }
            if (this.mScanFuture == null) {
                this.mScanFuture = this.mScanExecutor.submit(new DcfPathBuilder$ScanTask(this));
                if (CamLog.VERBOSE) {
                    CamLog.d("Scan has submitted: " + this.mRoot);
                }
            }
        }
    }

    public static boolean checkAndCreateDirectory(String str) {
        File file = new File(getDcimDirectory(str));
        if (!file.isDirectory()) {
            if (CamLog.VERBOSE) {
                CamLog.d("mkdirs(): " + file);
            }
            if (StorageUtil.getStorageTypeFromPath(str, CameraApplication.getContext()) != Storage$StorageType.EXTERNAL_CARD) {
                if (!file.mkdirs()) {
                    CamLog.e("Failed mkdirs() : " + file.getPath());
                    return false;
                }
            } else {
                Uri sdCardGrantedUri = StorageUtil.getSdCardGrantedUri(CameraApplication.getContext());
                if (sdCardGrantedUri == null) {
                    return false;
                }
                if (!StorageUtil.isExistDcimDirectory(sdCardGrantedUri) && StorageUtil.createDirectory(CameraApplication.getContext(), sdCardGrantedUri, Environment.DIRECTORY_DCIM) == null) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isAlreadyLastFileExist(String str) {
        String dcimDirectory = getDcimDirectory(str);
        if (!new File(dcimDirectory + "/" + String.format(Locale.US, "%03d", 999) + "ANDRO").isDirectory()) {
            return false;
        }
        if (new File((dcimDirectory + "/" + String.format(Locale.US, "%03d", 999) + "ANDRO") + "/DSC_" + String.format(Locale.US, "%04d", 9999) + ".JPG").isFile()) {
            return true;
        }
        String str2 = (dcimDirectory + "/" + String.format(Locale.US, "%03d", 999) + "ANDRO") + "/MOV_" + String.format(Locale.US, "%04d", 9999);
        if (new File(str2 + ".mp4").isFile()) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(".3gp");
        return new File(sb.toString()).isFile();
    }

    /* JADX WARN: Unreachable blocks removed: 3, instructions: 10 */
    private String assignImageFilePath(int i, Storage$StorageType storage$StorageType) throws IOException {
        Future<?> future;
        String str;
        synchronized (this) {
            future = this.mScanFuture;
            this.mScanFuture = null;
        }
        if (future != null) {
            try {
                this.mScanResult = SCAN_RESULT_FAILED;
                this.mScanResult = (DcfPathBuilder$ScanResult) future.get(60000L, TimeUnit.MILLISECONDS);
                this.mDirNo = this.mScanResult.resultDirNo;
                this.mFileNo = this.mScanResult.resultFileNo;
                if (CamLog.VERBOSE) {
                    CamLog.d("ScanResult is updated. mDirNo: " + this.mDirNo + ", mFileNo: " + this.mFileNo);
                }
            } catch (InterruptedException e) {
                throw new IOException("Failed to scan." + e);
            } catch (ExecutionException e2) {
                throw new IOException("Failed to scan." + e2);
            } catch (TimeoutException e3) {
                throw new IOException("Failed to scan." + e3);
            }
        }
        if (this.mScanResult.resultState != DcfPathBuilder$ScanResultState.SCAN_SUCCEEDED) {
            CamLog.e("assignImageFilePath scan failed.");
            return null;
        }
        if (this.mDirNo > 999) {
            CamLog.e("assignImageFilePath over max dir. " + this.mDirNo);
            return null;
        }
        String str2 = String.format(Locale.US, "%03d", Integer.valueOf(this.mDirNo)) + "ANDRO";
        String str3 = getDcimDirectory(this.mRoot) + "/" + str2;
        if (storage$StorageType != Storage$StorageType.EXTERNAL_CARD) {
            File file = new File(str3);
            if (!file.exists() && !file.mkdirs()) {
                CamLog.e("assignImageFilePath create dir failed: " + file);
                return null;
            }
        } else {
            Uri sdCardGrantedUri = StorageUtil.getSdCardGrantedUri(CameraApplication.getContext());
            if (!StorageUtil.isExistDcimDirectory(sdCardGrantedUri)) {
                str2 = Environment.DIRECTORY_DCIM + "/" + str2;
            }
            if (StorageUtil.createDirectory(CameraApplication.getContext(), sdCardGrantedUri, str2) == null) {
                return null;
            }
        }
        this.mFileNo = (((int) SystemClock.uptimeMillis()) % 9999) + 1;
        switch (i) {
            case 0:
                str = str3 + "/DSC_";
                break;
            case 1:
                str = str3 + "/MOV_";
                break;
            default:
                CamLog.e("assignImageFilePath type failed. " + i);
                return null;
        }
        while (true) {
            String str4 = str + String.format(Locale.US, "%04d", Integer.valueOf(this.mFileNo));
            if (!new File(str4).exists()) {
                return str4;
            }
            this.mFileNo++;
        }
    }

    public static String getDcimDirectory(String str) {
        return str + "/" + Environment.DIRECTORY_DCIM;
    }

    public String getPhotoPath(Storage$StorageType storage$StorageType) throws IOException {
        String strAssignImageFilePath = null;
        while (true) {
            try {
                strAssignImageFilePath = assignImageFilePath(0, storage$StorageType);
            } catch (IOException e) {
                CamLog.e("getPhotoPath failed.", e);
            }
            if (strAssignImageFilePath != null) {
                strAssignImageFilePath = strAssignImageFilePath + ".JPG";
            }
            if (CamLog.VERBOSE) {
                CamLog.d("getPhotoPath: " + strAssignImageFilePath);
            }
            if (strAssignImageFilePath == null || !isAssignedFileAlreadyExist(strAssignImageFilePath)) {
                break;
            }
            if (CamLog.VERBOSE) {
                CamLog.d("Assigned file is exist. Try again. " + this.mRoot);
            }
            startScan();
        }
        return strAssignImageFilePath;
    }

    public String getVideoPath(String str, Storage$StorageType storage$StorageType) throws IOException {
        String strAssignImageFilePath = "/dev/null";
        while (true) {
            try {
                strAssignImageFilePath = assignImageFilePath(1, storage$StorageType);
            } catch (IOException e) {
                CamLog.e("getVideoPath failed.", e);
            }
            if (strAssignImageFilePath == null) {
                strAssignImageFilePath = "/dev/null";
            } else {
                strAssignImageFilePath = strAssignImageFilePath + str;
            }
            if (CamLog.VERBOSE) {
                CamLog.d("getVideoPath: " + strAssignImageFilePath);
            }
            if (strAssignImageFilePath == "/dev/null" || !isAssignedFileAlreadyExist(strAssignImageFilePath)) {
                break;
            }
            if (CamLog.VERBOSE) {
                CamLog.d("Assigned file is exist. Try again. " + this.mRoot);
            }
            startScan();
        }
        return strAssignImageFilePath;
    }

    private boolean isAssignedFileAlreadyExist(String str) {
        if (str != null) {
            return new File(str).exists();
        }
        return false;
    }

    public String getRootPath() {
        return this.mRoot;
    }

    public static boolean checkWritable(String str) {
        if (!checkAndCreateDirectory(str)) {
            return false;
        }
        String dcimDirectory = getDcimDirectory(str);
        return new File(dcimDirectory).canWrite() && checkStorageWritable(dcimDirectory);
    }
}
