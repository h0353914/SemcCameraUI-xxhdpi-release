package com.sonyericsson.cameracommon.storage;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes.dex */
class DcfPathBuilder$DcfImageFileNameFilter implements FilenameFilter {
    private int mFilterFileNo;

    private DcfPathBuilder$DcfImageFileNameFilter() {
    }

    /* synthetic */ DcfPathBuilder$DcfImageFileNameFilter(DcfPathBuilder$1 dcfPathBuilder$1) {
        this();
    }

    static /* synthetic */ int access$700(DcfPathBuilder$DcfImageFileNameFilter dcfPathBuilder$DcfImageFileNameFilter) {
        return dcfPathBuilder$DcfImageFileNameFilter.mFilterFileNo;
    }

    static /* synthetic */ int access$702(DcfPathBuilder$DcfImageFileNameFilter dcfPathBuilder$DcfImageFileNameFilter, int i) {
        dcfPathBuilder$DcfImageFileNameFilter.mFilterFileNo = i;
        return i;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        int i;
        try {
            if (str.length() != 12 || (i = Integer.parseInt((String) str.subSequence(4, 8))) < this.mFilterFileNo || 1 > i || i > 9999) {
                return false;
            }
            this.mFilterFileNo = i;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
