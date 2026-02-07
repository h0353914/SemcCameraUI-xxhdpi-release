package com.sonyericsson.cameracommon.storage;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class DcfPathBuilder$DcfImageDirNameFilter implements FilenameFilter {
    private String mFilterDirName;
    private int mFilterDirNo;

    private DcfPathBuilder$DcfImageDirNameFilter() {
    }

    /* synthetic */ DcfPathBuilder$DcfImageDirNameFilter(DcfPathBuilder$1 dcfPathBuilder$1) {
        this();
    }

    static /* synthetic */ int access$400(DcfPathBuilder$DcfImageDirNameFilter dcfPathBuilder$DcfImageDirNameFilter) {
        return dcfPathBuilder$DcfImageDirNameFilter.mFilterDirNo;
    }

    static /* synthetic */ int access$402(DcfPathBuilder$DcfImageDirNameFilter dcfPathBuilder$DcfImageDirNameFilter, int i) {
        dcfPathBuilder$DcfImageDirNameFilter.mFilterDirNo = i;
        return i;
    }

    static /* synthetic */ String access$500(DcfPathBuilder$DcfImageDirNameFilter dcfPathBuilder$DcfImageDirNameFilter) {
        return dcfPathBuilder$DcfImageDirNameFilter.mFilterDirName;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        int i;
        try {
            if (str.length() == 8 && (i = Integer.parseInt((String) str.subSequence(0, 3))) >= this.mFilterDirNo && 100 <= i && i <= 999) {
                if ((String.format(Locale.US, "%03d", Integer.valueOf(i)) + "ANDRO").equalsIgnoreCase(str)) {
                    File file2 = new File(file, str);
                    if (file2.isDirectory()) {
                        this.mFilterDirNo = i;
                        this.mFilterDirName = file2.getAbsolutePath();
                        return true;
                    }
                }
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
