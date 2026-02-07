package com.sonymobile.cameracommon.research.idd;

import android.support.annotation.NonNull;
import android.util.ArrayMap;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Locale;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class IddUtil$JsonStringBuilder {
    private final Map<String, IddUtil$ValueMap> mMap = new ArrayMap();

    public IddUtil$JsonStringBuilder(@NonNull String str) {
        this.mMap.put("type", new IddUtil$ValueMap(str));
        this.mMap.put("mode", new IddUtil$ValueMap(IddUtil.access$000()));
        this.mMap.put("launched_by", new IddUtil$ValueMap(IddUtil.access$100()));
    }

    public IddUtil$JsonStringBuilder set(String str, String str2) {
        this.mMap.put(str, new IddUtil$ValueMap(str2));
        return this;
    }

    public IddUtil$JsonStringBuilder set(String str, Map<String, String> map) {
        this.mMap.put(str, new IddUtil$ValueMap(map));
        return this;
    }

    public String build() {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            try {
                jsonWriter.setIndent(" ");
                write(jsonWriter, this.mMap);
                String string = stringWriter.toString();
                try {
                    jsonWriter.close();
                } catch (IOException unused) {
                }
                return string;
            } catch (IOException unused2) {
                return "";
            }
        } catch (IOException unused3) {
            jsonWriter.close();
            return "";
        } catch (Throwable th) {
            try {
                jsonWriter.close();
            } catch (IOException unused4) {
            }
            throw th;
        }
    }

    private void write(JsonWriter jsonWriter, Map<String, IddUtil$ValueMap> map) throws IOException {
        jsonWriter.beginObject();
        for (Map$Entry<String, IddUtil$ValueMap> map$Entry : map.entrySet()) {
            write(jsonWriter, map$Entry.getKey(), map$Entry.getValue());
        }
        jsonWriter.endObject();
    }

    private void write(JsonWriter jsonWriter, String str, IddUtil$ValueMap iddUtil$ValueMap) throws IOException {
        String value = iddUtil$ValueMap.getValue();
        if (value == null) {
            jsonWriter.name(str.toLowerCase(Locale.ROOT));
            write(jsonWriter, iddUtil$ValueMap.getMap());
        } else {
            jsonWriter.name(str.toLowerCase(Locale.ROOT)).value(value);
        }
    }
}
