package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentValues;

public final class CrUpdateParameter {
    public ContentValues values = null;
    public String where = null;
    public String[] selectionArgs = null;

    public void clear() {
        this.values = null;
        this.where = null;
        this.selectionArgs = null;
    }
}
