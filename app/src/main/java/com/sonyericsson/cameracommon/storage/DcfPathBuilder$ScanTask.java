package com.sonyericsson.cameracommon.storage;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import java.io.File;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class DcfPathBuilder$ScanTask implements Callable<DcfPathBuilder$ScanResult> {
    private int mScanDirNo = 100;
    private int mScanFileNo = 1;
    final /* synthetic */ DcfPathBuilder this$0;

    DcfPathBuilder$ScanTask(DcfPathBuilder dcfPathBuilder) {
        this.this$0 = dcfPathBuilder;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ DcfPathBuilder$ScanResult call() throws Exception {
        return call();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public DcfPathBuilder$ScanResult call() {
        DcfPathBuilder$ScanResultState dcfPathBuilder$ScanResultState;
        if (CamLog.VERBOSE) {
            CamLog.d("ScanTask in: " + DcfPathBuilder.access$200(this.this$0));
        }
        if (CamLog.VERBOSE) {
            CamLog.d("start: " + System.currentTimeMillis());
        }
        PerfLog.DCF_PATH_BUILDER_SCAN.begin();
        if (search()) {
            dcfPathBuilder$ScanResultState = DcfPathBuilder$ScanResultState.SCAN_SUCCEEDED;
        } else {
            CamLog.e("Scan failed.");
            dcfPathBuilder$ScanResultState = DcfPathBuilder$ScanResultState.SCAN_FAILED;
            this.mScanDirNo = -1;
            this.mScanFileNo = -1;
        }
        PerfLog.DCF_PATH_BUILDER_SCAN.end();
        if (CamLog.VERBOSE) {
            CamLog.d("end  : " + System.currentTimeMillis());
        }
        if (CamLog.VERBOSE) {
            CamLog.d("ScanTask out:" + DcfPathBuilder.access$200(this.this$0));
        }
        if (CamLog.VERBOSE) {
            CamLog.d("ScanTask result dirNo: " + this.mScanDirNo + ", fileNo: " + this.mScanFileNo);
        }
        return new DcfPathBuilder$ScanResult(dcfPathBuilder$ScanResultState, this.mScanDirNo, this.mScanFileNo);
    }

    private final boolean search() {
        if (DcfPathBuilder.checkAndCreateDirectory(DcfPathBuilder.access$200(this.this$0))) {
            return searchImageDir();
        }
        CamLog.e("search error DCIM is not exist. " + DcfPathBuilder.access$200(this.this$0));
        return false;
    }

    private boolean searchImageDir() {
        File file = new File(DcfPathBuilder.getDcimDirectory(DcfPathBuilder.access$200(this.this$0)));
        DcfPathBuilder$DcfImageDirNameFilter.access$402(DcfPathBuilder.access$300(this.this$0), 100);
        String[] list = file.list(DcfPathBuilder.access$300(this.this$0));
        if (list == null || list.length == 0) {
            this.mScanDirNo = 100;
            this.mScanFileNo = 1;
            return true;
        }
        this.mScanDirNo = DcfPathBuilder$DcfImageDirNameFilter.access$400(DcfPathBuilder.access$300(this.this$0));
        return searchImageNo(DcfPathBuilder.getDcimDirectory(DcfPathBuilder.access$200(this.this$0)) + "/" + new File(DcfPathBuilder$DcfImageDirNameFilter.access$500(DcfPathBuilder.access$300(this.this$0))).getName());
    }

    private boolean searchImageNo(String str) {
        File file = new File(str);
        DcfPathBuilder$DcfImageFileNameFilter.access$702(DcfPathBuilder.access$600(this.this$0), 1);
        String[] list = file.list(DcfPathBuilder.access$600(this.this$0));
        if (list == null || list.length == 0) {
            this.mScanFileNo = 1;
        } else {
            this.mScanFileNo = DcfPathBuilder$DcfImageFileNameFilter.access$700(DcfPathBuilder.access$600(this.this$0)) + 1;
        }
        if (this.mScanFileNo > 9999) {
            this.mScanDirNo++;
            this.mScanFileNo = 1;
        }
        if (this.mScanDirNo <= 999) {
            return true;
        }
        CamLog.e("searchImageNo over max dir. " + this.mScanDirNo);
        return false;
    }
}
