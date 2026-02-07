package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class DateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory FACTORY = new DateTypeAdapter$1();
    private final DateFormat enUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat localFormat = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat iso8601Format = buildIso8601Format();

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Date read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Date date) throws IOException {
        write2(jsonWriter, date);
    }

    private static DateFormat buildIso8601Format() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Date read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return deserializeToDate(jsonReader.nextString());
    }

    private synchronized Date deserializeToDate(String str) {
        try {
            try {
                try {
                } catch (ParseException unused) {
                    return this.iso8601Format.parse(str);
                }
            } catch (ParseException e) {
                throw new JsonSyntaxException(str, e);
            }
        } catch (ParseException unused2) {
            return this.enUsFormat.parse(str);
        }
        return this.localFormat.parse(str);
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public synchronized void write2(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.value(this.enUsFormat.format(date));
        }
    }
}
