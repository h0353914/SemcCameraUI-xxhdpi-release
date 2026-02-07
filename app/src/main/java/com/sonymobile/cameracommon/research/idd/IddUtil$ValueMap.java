package com.sonymobile.cameracommon.research.idd;

import android.support.annotation.NonNull;
import android.util.ArrayMap;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class IddUtil$ValueMap {
    private final Map<String, IddUtil$ValueMap> mMap;
    private final String mValue;

    public IddUtil$ValueMap(@NonNull String str) {
        this.mMap = null;
        this.mValue = str;
    }

    public IddUtil$ValueMap(@NonNull Map<String, String> map) {
        this.mMap = new ArrayMap();
        this.mValue = null;
        for (Map$Entry<String, String> map$Entry : map.entrySet()) {
            this.mMap.put(map$Entry.getKey(), new IddUtil$ValueMap(map$Entry.getValue()));
        }
    }

    public String getValue() {
        return this.mValue;
    }

    public Map<String, IddUtil$ValueMap> getMap() {
        return this.mMap;
    }
}
